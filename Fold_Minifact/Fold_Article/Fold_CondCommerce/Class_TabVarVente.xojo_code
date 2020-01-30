#tag Class
Protected Class Class_TabVarVente
	#tag Method, Flags = &h0
		Sub Base_Charge()
		  VarVente.DBaseSource="SELECT * FROM VARVENTE WHERE NUMART = "+str(Article)
		  
		  if not Self.VarVente.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  
		  if VarVente.Charge_Premier then
		    
		    do
		      
		      TempVarVente.Numero        =  VarVente.Numero
		      TempVarVente.NumArt        =  VarVente.NumArt
		      TempVarVente.UnitVente     =  VarVente.UnitVente
		      TempVarVente.Condit        =  VarVente.Condit
		      TempVarVente.NumTva        =  VarVente.NumTva
		      TempVarVente.PrixVenteHT   =  VarVente.PrixVenteHT
		      TempVarVente.PrixVenteTTC  =  VarVente.PrixVenteTTC
		      TempVarVente.DateDeb       =  VarVente.DateDeb
		      TempVarVente.DateFin       =  VarVente.DateFin
		      TempVarVente.Promo         =  VarVente.Promo
		      TempVarVente.Obsolete      =  VarVente.Obsolete
		      TempVarVente.Commentaires  =  VarVente.Commentaires
		      TempVarVente.Blocage       =  VarVente.Blocage
		      
		      TempVarVente.DBase_Create()
		      
		      if not VarVente.Charge_Suivant then
		        exit do
		      end if
		      
		    loop
		    
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Base_Sauve()
		  Dim OrdreSql as String
		  
		  OrdreSql = " DELETE FROM VARVENTE WHERE NUMART  =  " + str(Article)
		  
		  App.MainDB.SQLexecute(OrdreSql)
		  
		  OrdreSql= " INSERT OR REPLACE INTO VARVENTE(NUMERO  ,      " + _
		  "                                 NUMART         ,      " + _
		  "                                 UNITVENTE      ,      " + _
		  "                                 CONDIT         ,      " + _
		  "                                 NUMTVA         ,      " + _
		  "                                 PRIXVENTEHT    ,      " + _
		  "                                 PRIXVENTETTC   ,      " + _
		  "                                 DATEDEB        ,      " + _
		  "                                 DATEFIN        ,      " + _
		  "                                 PROMO          ,      " + _
		  "                                 OBSOLETE       ,      " + _
		  "                                 COMMENTAIRES   ,      " + _
		  "                                 BLOCAGE               " + _
		  "                                )                      " + _
		  " SELECT  NUMERO         ,                              " + _
		  "         NUMART         ,                              " + _
		  "         UNITVENTE      ,                              " + _
		  "         CONDIT         ,                              " + _
		  "         NUMTVA         ,                              " + _
		  "         PRIXVENTEHT    ,                              " + _
		  "         PRIXVENTETTC   ,                              " + _
		  "         DATEDEB        ,                              " + _
		  "         DATEFIN        ,                              " + _
		  "         PROMO          ,                              " + _
		  "         OBSOLETE       ,                              " + _
		  "         COMMENTAIRES   ,                              " + _
		  "         BLOCAGE                                       " + _
		  "         FROM TEMP_VARVENTE                            " + _
		  "         ORDER BY NUMERO,NUMART                        "
		  
		  App.MainDB.SQLexecute(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Dim OrdreSql as string
		  
		  VarVente         = new Class_VarVente
		  VarVente.DBaseID = App.MainDB
		  
		  TempVarVente = new Class_VarVente
		  TempVarVente.DBaseID=App.MainDB
		  TempVarVente.DBaseSource="SELECT * FROM TEMP_VARVENTE"
		  TempVarVente.Table="TEMP_VARVENTE"
		  
		  
		  OrdreSql = "DROP TABLE IF EXISTS TEMP_VARVENTE"
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  OrdreSql =  "CREATE TEMPORARY TABLE  TEMP_VARVENTE(  "  + _
		  "NUMERO              BIGINT NOT NULL  ,  "  + _
		  "NUMART              BIGINT           ,  "  + _
		  "UNITVENTE           BIGINT           ,  "  + _
		  "CONDIT              DECIMAL(10,5)    ,  "  + _
		  "NUMTVA              BIGINT           ,  "  + _
		  "PRIXVENTEHT         DECIMAL(10,5)    ,  "  + _
		  "PRIXVENTETTC        DECIMAL(10,5)    ,  "  + _
		  "DATEDEB             DATE             ,  "  + _
		  "DATEFIN             DATE             ,  "  + _
		  "PROMO               VARCHAR(1)       ,  "  + _
		  "OBSOLETE            VARCHAR(1)       ,  "  + _
		  "COMMENTAIRES        VARCHAR(50)      ,  "  + _
		  "BLOCAGE             VARCHAR          ,  "  + _
		  "RSXUSER             BIGINT           ,  "  + _
		  "RSXETAT             VARCHAR(5)       ,  "  + _
		  "RSXINFO             VARCHAR(15)      ,  "  + _
		  "RSXDATE             VARCHAR(15)      ,  "  + _
		  "PRIMARY KEY (NUMART,NUMERO ASC)         "  + _
		  ")                                       "
		  
		  
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_AffecteArticleTemp(NumArt as Integer)
		  Dim OrdreSql as string
		  
		  OrdreSql = "UPDATE TEMP_VARVENTE SET NUMART="+str(NumArt)
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_Ajouter()
		  TempVarVente.Numero          =   Champs_Numero
		  TempVarVente.NumArt          =   Champs_NumArt
		  TempVarVente.UnitVente       =   Champs_UnitVente
		  TempVarVente.Condit          =   Champs_Condit
		  TempVarVente.NumTva          =   Champs_NumTva
		  TempVarVente.PrixVenteHT     =   Champs_PrixVenteHT
		  TempVarVente.PrixVenteTTC    =   Champs_PrixVenteTTC
		  TempVarVente.DateDeb         =   Champs_DateDeb
		  TempVarVente.DateFin         =   Champs_DateFin
		  TempVarVente.Promo           =   Champs_Promo
		  TempVarVente.Obsolete        =   Champs_Obsolete
		  TempVarVente.Commentaires    =   Champs_Commentaires
		  TempVarVente.DBase_Create()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tab_EstModif() As Boolean
		  Dim rs as RecordSet
		  Dim OrdreSql as String
		  Dim resultat    as Integer
		  
		  // Examine modification des VarVente
		  OrdreSql = "  SELECT COUNT(*) AS DIFFERENCE FROM VARVENTE, TEMP_VARVENTE             " + _
		  "  WHERE                                                                  " + _
		  "  VARVENTE.NUMERO            =   TEMP_VARVENTE.NUMERO        AND         " + _
		  "  VARVENTE.NUMART            =   TEMP_VARVENTE.NUMART        AND         " + _
		  "  ( VARVENTE.UNITVENTE       <>  TEMP_VARVENTE.UNITVENTE     OR          " + _
		  "    VARVENTE.CONDIT          <>  TEMP_VARVENTE.CONDIT        OR          " + _
		  "    VARVENTE.NUMTVA          <>  TEMP_VARVENTE.NUMTVA        OR          " + _
		  "    VARVENTE.PRIXVENTEHT     <>  TEMP_VARVENTE.PRIXVENTEHT   OR          " + _
		  "    VARVENTE.PRIXVENTETTC    <>  TEMP_VARVENTE.PRIXVENTETTC  OR          " + _
		  "    VARVENTE.DATEDEB         <>  TEMP_VARVENTE.DATEDEB       OR          " + _
		  "    VARVENTE.DATEFIN         <>  TEMP_VARVENTE.DATEFIN       OR          " + _
		  "    VARVENTE.PROMO           <>  TEMP_VARVENTE.PROMO         OR          " + _
		  "    VARVENTE.OBSOLETE        <>  TEMP_VARVENTE.OBSOLETE      OR          " + _
		  "    VARVENTE.COMMENTAIRES    <>  TEMP_VARVENTE.COMMENTAIRES  OR          " + _
		  "    VARVENTE.BLOCAGE         <>  TEMP_VARVENTE.BLOCAGE                   " + _
		  "    )                                                                    "
		  
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    resultat       = rs.Field("DIFFERENCE").Value
		    if resultat>0 then
		      return true
		    end if
		  end if
		  
		  //Examine si creation VarVente
		  OrdreSql = " SELECT                 " +_
		  " COUNT(*) AS NOUVEAU    " +_
		  " FROM                   " +_
		  " TEMP_VARVENTE          " +_
		  " LEFT JOIN VARVENTE ON  VARVENTE.NUMERO    = TEMP_VARVENTE.NUMERO     " +_
		  "                    AND VARVENTE.NUMART    = TEMP_VARVENTE.NUMART     " +_
		  " WHERE                                                                " +_
		  " VARVENTE.NUMERO IS NULL                                              "
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    resultat       = rs.Field("NOUVEAU").Value
		    if resultat>0 then
		      return true
		    end if
		  end if
		  
		  
		  //Examine si Suppression VarVente
		  OrdreSql = " SELECT               " +_
		  " count(*) AS SUPPRIME " +_
		  " FROM                 " +_
		  " VARVENTE             " +_
		  " LEFT JOIN TEMP_VARVENTE ON  TEMP_VARVENTE.NUMERO    = VARVENTE.NUMERO       " +_
		  "                         AND TEMP_VARVENTE.NUMART    = VARVENTE.NUMART       " +_
		  " WHERE                                                                       " +_
		  "        TEMP_VARVENTE.NUMERO IS NULL                                         " +_
		  " AND    VARVENTE.NUMART       ="+str(Article)
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    resultat       = rs.Field("SUPPRIME").Value
		    if resultat>0 then
		      return true
		    end if
		  end if
		  
		  
		  
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_Modifier(LocVarVente as Int64 = - 1, LocNumArt as Int64 = - 1)
		  
		  TempVarVente.Numero          =   Champs_Numero
		  TempVarVente.NumArt          =   Champs_NumArt
		  TempVarVente.UnitVente       =   Champs_UnitVente
		  TempVarVente.Condit          =   Champs_Condit
		  TempVarVente.NumTva          =   Champs_NumTva
		  TempVarVente.PrixVenteHT     =   Champs_PrixVenteHT
		  TempVarVente.PrixVenteTTC    =   Champs_PrixVenteTTC
		  TempVarVente.DateDeb         =   Champs_DateDeb
		  TempVarVente.DateFin         =   Champs_DateFin
		  TempVarVente.Promo           =   Champs_Promo
		  TempVarVente.Obsolete        =   Champs_Obsolete
		  TempVarVente.Commentaires    =   Champs_Commentaires
		  
		  
		  TempVarVente.DBase_Update(LocVarVente,LocNumArt)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_Supprime(LocVarVente as Int64 = - 1, LocNumArt as Int64 = - 1)
		  TempVarVente.DBase_Delete(LocVarVente,LocNumArt)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Article As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_BLOCAGE As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_Commentaires As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_Condit As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_DateDeb As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_DateFin As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_NumArt As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_Numero As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_NumTva As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_Obsolete As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_PrixVenteHT As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_PrixVenteTTC As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_Promo As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_UnitVente As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		TempVarVente As Class_VarVente
	#tag EndProperty

	#tag Property, Flags = &h0
		VarVente As Class_VarVente
	#tag EndProperty


	#tag Structure, Name = Vente, Flags = &h21, Attributes = \"StructureAlignment \x3D 1"
		Numero        as Int64
		  NumArt        as Int64
		  NumFourn      as Int64
		  RefFourn      as String*50
		  LibFourn      as String*50
		  UnitVente     as Int64
		  Condit        as Double
		  NumTva        as Int64
		  PrixVenteHT   as Double
		  PrixVenteTTC  as Double
		  DateDeb       as string*10
		  DateFin       as String*10
		  Promo         as String*1
		  Obsolete      as String*1
		  Commentaires  as String*50
		  BLOCAGE       as String*1
		Operation as string*5
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="Champs_BLOCAGE"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Champs_Commentaires"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Champs_Condit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Champs_Obsolete"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Champs_PrixVenteHT"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Champs_PrixVenteTTC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Champs_Promo"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Article"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Champs_NumArt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Champs_Numero"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Champs_NumTva"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Champs_UnitVente"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
