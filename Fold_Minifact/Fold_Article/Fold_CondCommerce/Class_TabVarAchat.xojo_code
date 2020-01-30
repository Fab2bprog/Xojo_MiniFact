#tag Class
Protected Class Class_TabVarAchat
	#tag Method, Flags = &h0
		Sub Base_Charge()
		  VarAchat.DBaseSource="SELECT * FROM VARACHAT WHERE NUMART = "+str(Article)
		  
		  if not Self.VarAchat.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  
		  if VarAchat.Charge_Premier then
		    
		    do
		      
		      TempVarAchat.Numero        =  VarAchat.Numero
		      TempVarAchat.NumArt        =  VarAchat.NumArt
		      TempVarAchat.NumFourn      =  VarAchat.NumFourn
		      TempVarAchat.RefFourn      =  VarAchat.RefFourn
		      TempVarAchat.LibFourn      =  VarAchat.LibFourn
		      TempVarAchat.UnitAchat     =  VarAchat.UnitAchat
		      TempVarAchat.Condit        =  VarAchat.Condit
		      TempVarAchat.NumTva        =  VarAchat.NumTva
		      TempVarAchat.PrixAchatHT   =  VarAchat.PrixAchatHT
		      TempVarAchat.PrixAchatTTC  =  VarAchat.PrixAchatTTC
		      TempVarAchat.DateDeb       =  VarAchat.DateDeb
		      TempVarAchat.DateFin       =  VarAchat.DateFin
		      TempVarAchat.Promo         =  VarAchat.Promo
		      TempVarAchat.Obsolete      =  VarAchat.Obsolete
		      TempVarAchat.Commentaires  =  VarAchat.Commentaires
		      TempVarAchat.Blocage       =  VarAchat.Blocage
		      
		      TempVarAchat.DBase_Create()
		      
		      if not VarAchat.Charge_Suivant then
		        exit do
		      end if
		      
		    loop
		    
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Base_Sauve()
		  Dim OrdreSql as String
		  
		  OrdreSql = " DELETE FROM VARACHAT WHERE NUMART  =  " + str(Article)
		  
		  App.MainDB.SQLexecute(OrdreSql)
		  
		  OrdreSql= " INSERT OR REPLACE INTO VARACHAT(NUMERO  ,      " + _
		  "                                 NUMART         ,      " + _
		  "                                 NUMFOURN       ,      " + _
		  "                                 REFFOURN       ,      " + _
		  "                                 LIBFOURN       ,      " + _
		  "                                 UNITACHAT      ,      " + _
		  "                                 CONDIT         ,      " + _
		  "                                 NUMTVA         ,      " + _
		  "                                 PRIXACHATHT    ,      " + _
		  "                                 PRIXACHATTTC   ,      " + _
		  "                                 DATEDEB        ,      " + _
		  "                                 DATEFIN        ,      " + _
		  "                                 PROMO          ,      " + _
		  "                                 OBSOLETE       ,      " + _
		  "                                 COMMENTAIRES   ,      " + _
		  "                                 BLOCAGE               " + _
		  "                                )                      " + _
		  " SELECT  NUMERO         ,                              " + _
		  "         NUMART         ,                              " + _
		  "         NUMFOURN       ,                              " + _
		  "         REFFOURN       ,                              " + _
		  "         LIBFOURN       ,                              " + _
		  "         UNITACHAT      ,                              " + _
		  "         CONDIT         ,                              " + _
		  "         NUMTVA         ,                              " + _
		  "         PRIXACHATHT    ,                              " + _
		  "         PRIXACHATTTC   ,                              " + _
		  "         DATEDEB        ,                              " + _
		  "         DATEFIN        ,                              " + _
		  "         PROMO          ,                              " + _
		  "         OBSOLETE       ,                              " + _
		  "         COMMENTAIRES   ,                              " + _
		  "         BLOCAGE                                       " + _
		  "         FROM TEMP_VARACHAT                            " + _
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
		  
		  VarAchat         = new Class_VarAchat
		  VarAchat.DBaseID = App.MainDB
		  
		  TempVarAchat = new Class_VarAchat
		  TempVarAchat.DBaseID=App.MainDB
		  TempVarAchat.DBaseSource="SELECT * FROM TEMP_VARACHAT"
		  TempVarAchat.Table="TEMP_VARACHAT"
		  
		  
		  OrdreSql = "DROP TABLE IF EXISTS TEMP_VARACHAT"
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  OrdreSql =  "CREATE TEMPORARY TABLE  TEMP_VARACHAT(  "  + _
		  "NUMERO              BIGINT NOT NULL  ,  "  + _
		  "NUMART              BIGINT           ,  "  + _
		  "NUMFOURN            BIGINT           ,  "  + _
		  "REFFOURN            VARCHAR(50)      ,  "  + _
		  "LIBFOURN            VARCHAR(50)      ,  "  + _
		  "UNITACHAT           BIGINT           ,  "  + _
		  "CONDIT              DECIMAL(10,5)    ,  "  + _
		  "NUMTVA              BIGINT           ,  "  + _
		  "PRIXACHATHT         DECIMAL(10,5)    ,  "  + _
		  "PRIXACHATTTC        DECIMAL(10,5)    ,  "  + _
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
		  "PRIMARY KEY (NUMERO ASC)                "  + _
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
		  
		  OrdreSql = "UPDATE TEMP_VARACHAT SET NUMART="+str(NumArt)
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
		  TempVarAchat.Numero          =   Champs_Numero
		  TempVarAchat.NumArt          =   Champs_NumArt
		  TempVarAchat.NumFourn        =   Champs_NumFourn
		  TempVarAchat.RefFourn        =   Champs_RefFourn
		  TempVarAchat.LibFourn        =   Champs_LibFourn
		  TempVarAchat.UnitAchat       =   Champs_UnitAchat
		  TempVarAchat.Condit          =   Champs_Condit
		  TempVarAchat.NumTva          =   Champs_NumTva
		  TempVarAchat.PrixAchatHT     =   Champs_PrixAchatHT
		  TempVarAchat.PrixAchatTTC    =   Champs_PrixAchatTTC
		  TempVarAchat.DateDeb         =   Champs_DateDeb
		  TempVarAchat.DateFin         =   Champs_DateFin
		  TempVarAchat.Promo           =   Champs_Promo
		  TempVarAchat.Obsolete        =   Champs_Obsolete
		  TempVarAchat.Commentaires    =   Champs_Commentaires
		  TempVarAchat.DBase_Create()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tab_EstModif() As Boolean
		  Dim rs as RecordSet
		  Dim OrdreSql as String
		  Dim resultat    as Integer
		  
		  // Examine modification des VarAchat
		  OrdreSql = "  SELECT COUNT(*) AS DIFFERENCE FROM VARACHAT, TEMP_VARACHAT             " + _
		  "  WHERE                                                                  " + _
		  "  VARACHAT.NUMERO            =   TEMP_VARACHAT.NUMERO        AND         " + _
		  "  VARACHAT.NUMART            =   TEMP_VARACHAT.NUMART        AND         " + _
		  "  ( VARACHAT.NUMFOURN        <>  TEMP_VARACHAT.NUMFOURN      OR          " + _
		  "    VARACHAT.REFFOURN        <>  TEMP_VARACHAT.REFFOURN      OR          " + _
		  "    VARACHAT.LIBFOURN        <>  TEMP_VARACHAT.LIBFOURN      OR          " + _
		  "    VARACHAT.UNITACHAT       <>  TEMP_VARACHAT.UNITACHAT     OR          " + _
		  "    VARACHAT.CONDIT          <>  TEMP_VARACHAT.CONDIT        OR          " + _
		  "    VARACHAT.NUMTVA          <>  TEMP_VARACHAT.NUMTVA        OR          " + _
		  "    VARACHAT.PRIXACHATHT     <>  TEMP_VARACHAT.PRIXACHATHT   OR          " + _
		  "    VARACHAT.PRIXACHATTTC    <>  TEMP_VARACHAT.PRIXACHATTTC  OR          " + _
		  "    VARACHAT.DATEDEB         <>  TEMP_VARACHAT.DATEDEB       OR          " + _
		  "    VARACHAT.DATEFIN         <>  TEMP_VARACHAT.DATEFIN       OR          " + _
		  "    VARACHAT.PROMO           <>  TEMP_VARACHAT.PROMO         OR          " + _
		  "    VARACHAT.OBSOLETE        <>  TEMP_VARACHAT.OBSOLETE      OR          " + _
		  "    VARACHAT.COMMENTAIRES    <>  TEMP_VARACHAT.COMMENTAIRES  OR          " + _
		  "    VARACHAT.BLOCAGE         <>  TEMP_VARACHAT.BLOCAGE                   " + _
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
		  
		  //Examine si creation VarAchat
		  OrdreSql = " SELECT                 " +_
		  " COUNT(*) AS NOUVEAU    " +_
		  " FROM                   " +_
		  " TEMP_VARACHAT          " +_
		  " LEFT JOIN VARACHAT ON  VARACHAT.NUMERO    = TEMP_VARACHAT.NUMERO     " +_
		  "                    AND VARACHAT.NUMART    = TEMP_VARACHAT.NUMART     " +_
		  " WHERE                                                                " +_
		  " VARACHAT.NUMERO IS NULL                                              "
		  
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
		  
		  
		  //Examine si Suppression VarAchat
		  OrdreSql = " SELECT               " +_
		  " count(*) AS SUPPRIME " +_
		  " FROM                 " +_
		  " VARACHAT             " +_
		  " LEFT JOIN TEMP_VARACHAT ON  TEMP_VARACHAT.NUMERO    = VARACHAT.NUMERO       " +_
		  "                         AND TEMP_VARACHAT.NUMART    = VARACHAT.NUMART       " +_
		  " WHERE                                                                       " +_
		  "        TEMP_VARACHAT.NUMERO IS NULL                                         " +_
		  " AND    VARACHAT.NUMART       ="+str(Article)
		  
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
		Sub Tab_Modifier(LocVarAchat as Int64 = - 1, LocNumArt as Int64 = - 1)
		  
		  TempVarAchat.Numero          =   Champs_Numero
		  TempVarAchat.NumArt          =   Champs_NumArt
		  TempVarAchat.NumFourn        =   Champs_NumFourn
		  TempVarAchat.RefFourn        =   Champs_RefFourn
		  TempVarAchat.LibFourn        =   Champs_LibFourn
		  TempVarAchat.UnitAchat       =   Champs_UnitAchat
		  TempVarAchat.Condit          =   Champs_Condit
		  TempVarAchat.NumTva          =   Champs_NumTva
		  TempVarAchat.PrixAchatHT     =   Champs_PrixAchatHT
		  TempVarAchat.PrixAchatTTC    =   Champs_PrixAchatTTC
		  TempVarAchat.DateDeb         =   Champs_DateDeb
		  TempVarAchat.DateFin         =   Champs_DateFin
		  TempVarAchat.Promo           =   Champs_Promo
		  TempVarAchat.Obsolete        =   Champs_Obsolete
		  TempVarAchat.Commentaires    =   Champs_Commentaires
		  
		  
		  TempVarAchat.DBase_Update(LocVarAchat,LocNumArt)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_Supprime(LocVarAchat as Int64 = - 1, LocNumArt as Int64 = - 1)
		  TempVarAchat.DBase_Delete(LocVarAchat,LocNumArt)
		  
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
		Champs_LibFourn As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_NumArt As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_Numero As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_NumFourn As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_NumTva As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_Obsolete As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_PrixAchatHT As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_PrixAchatTTC As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_Promo As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_RefFourn As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs_UnitAchat As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		TempVarAchat As Class_VarAchat
	#tag EndProperty

	#tag Property, Flags = &h0
		VarAchat As Class_VarAchat
	#tag EndProperty


	#tag Structure, Name = VarAchat, Flags = &h21, Attributes = \"StructureAlignment \x3D 1"
		Numero        as Int64
		  NumArt        as Int64
		  NumFourn      as Int64
		  RefFourn      as String*50
		  LibFourn      as String*50
		  UnitAchat     as Int64
		  Condit        as Double
		  NumTva        as Int64
		  PrixAchatHT   as Double
		  PrixAchatTTC  as Double
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
			Name="Champs_LibFourn"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Champs_PrixAchatHT"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Champs_PrixAchatTTC"
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
			Name="Champs_RefFourn"
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
			Name="Champs_NumFourn"
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
			Name="Champs_UnitAchat"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
