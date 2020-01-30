#tag Class
Protected Class Class_TabGenCode
	#tag Method, Flags = &h0
		Sub Base_Charge()
		  GenCode.DBaseSource="SELECT * FROM GENCODE WHERE NUMART = "+str(Article)
		  
		  if not Self.GenCode.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  
		  if GenCode.Charge_Premier then
		    
		    do
		      TempGenCode.CodBar         = GenCode.CodBar
		      TempGenCode.NumArt         = GenCode.NumArt
		      TempGenCode.Inform         = GenCode.Inform
		      
		      TempGenCode.DBase_Create()
		      
		      if not GenCode.Charge_Suivant then
		        exit do
		      end if
		      
		    loop
		    
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Base_Sauve()
		  Dim OrdreSql as String
		  
		  OrdreSql = " DELETE FROM GENCODE WHERE NUMART  =  " + str(Article)
		  
		  App.MainDB.SQLexecute(OrdreSql)
		  
		  OrdreSql = " INSERT OR REPLACE INTO GENCODE(CODBAR    ,    " + _
		  "                                NUMART    ,    " + _
		  "                                INFORM         " + _
		  "                                )              " + _
		  "      SELECT  CODBAR ,                         " + _
		  "              NUMART ,                         " + _
		  "              INFORM                           " + _
		  "              FROM TEMP_GENCODE                " + _
		  "              ORDER BY CODBAR,NUMART           "
		  
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
		  
		  GenCode         = new Class_GenCode
		  GenCode.DBaseID = App.MainDB
		  
		  TempGenCode = new Class_GenCode
		  TempGenCode.DBaseID=App.MainDB
		  TempGenCode.DBaseSource="SELECT * FROM TEMP_GENCODE"
		  TempGenCode.Table="TEMP_GENCODE"
		  
		  
		  OrdreSql = "DROP TABLE IF EXISTS TEMP_GENCODE"
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  OrdreSql = " CREATE TEMPORARY TABLE  TEMP_GENCODE ( " + _
		  " CODBAR             VARCHAR(50) NOT NULL  ,        " + _
		  " NUMART             BIGINT                ,        " + _
		  " INFORM             VARCHAR(50)           ,        " + _
		  " BLOCAGE            VARCHAR(5)            ,        " + _
		  " RSXUSER            BIGINT                ,        " + _
		  " RSXETAT            VARCHAR(5)            ,        " + _
		  " RSXINFO            VARCHAR(15)           ,        " + _
		  " RSXDATE            VARCHAR(15)           ,        " + _
		  " PRIMARY KEY (CODBAR ASC)                          " + _
		  ")                                                  "
		  
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function NomCaract(Numero as int64 = - 1) As String
		  Dim OrdreSql as string
		  Dim rs as RecordSet
		  Dim Nom as String
		  
		  OrdreSql = "  SELECT NOM FROM CARACT WHERE NUMERO= " + str(Numero)
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    Nom = rs.Field("NOM").Value
		  end if
		  
		  return Nom
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_AffecteArticleTemp(NumArt as Integer)
		  Dim OrdreSql as string
		  
		  OrdreSql = "UPDATE TEMP_GENCODE SET NUMART="+str(NumArt)
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tab_Ajouter() As Boolean
		  Dim RepUser As Integer
		  
		  TempGenCode.CodBar         = Champs.CodBar
		  TempGenCode.NumArt         = Champs.NumArt
		  TempGenCode.Inform         = Champs.Inform
		  
		  if Tab_CodBarExiste(TempGenCode.CodBar) then
		    
		    RepUser=MsgBox("Gencode : "+TempGenCode.CodBar+" deja utilise, desirez vous l'attribuer a cet article ?",52)
		    If  RepUser=7 then
		      return False //User repond non
		    end if
		    
		    TempGenCode.DBase_Delete(TempGenCode.CodBar)
		    
		    
		  end if
		  
		  
		  
		  TempGenCode.DBase_Create()
		  return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tab_CodBarExiste(CodBarCible as String) As Boolean
		  Dim rs          as RecordSet
		  Dim OrdreSql    as String
		  Dim resultat    as Integer
		  
		  // Examine si existe des doublons
		  OrdreSql = "  SELECT COUNT(*) AS ENREXISTE FROM  GENCODE  " +_
		  "  WHERE  GENCODE.CODBAR='" +CodBarCible +"'"
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    resultat       = rs.Field("ENREXISTE").Value
		    if resultat>0 then
		      return true
		    end if
		  end if
		  
		  
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tab_EstModif() As Boolean
		  Dim rs          as RecordSet
		  Dim OrdreSql    as String
		  Dim resultat    as Integer
		  
		  // Examine modification des GenCode
		  OrdreSql = "  SELECT COUNT(*) AS DIFFERENCE FROM GENCODE, TEMP_GENCODE      " +_
		  "  WHERE                                                                 " +_
		  "  GENCODE.CODBAR      =   TEMP_GENCODE.CODBAR           AND             " +_
		  "  GENCODE.NUMART      =   TEMP_GENCODE.NUMART           AND             " +_
		  "  GENCODE.INFORM         <>  TEMP_GENCODE.INFORM                        "
		  
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
		  
		  //Examine si creation GenCode
		  OrdreSql = " SELECT             " +_
		  " count(*) AS NOUVEAU        " +_
		  " FROM                       " +_
		  " TEMP_GENCODE               " +_
		  " LEFT JOIN GENCODE ON GENCODE.CODBAR  = TEMP_GENCODE.CODBAR    " +_
		  "                  AND GENCODE.NUMART = TEMP_GENCODE.NUMART     " +_
		  " WHERE                        " +_
		  " GENCODE.CODBAR IS NULL   "
		  
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
		  
		  
		  //Examine si Suppression GenCode
		  OrdreSql = " SELECT       " +_
		  " count(*) AS SUPPRIME " +_
		  " FROM                 " +_
		  " GENCODE              " +_
		  " LEFT JOIN TEMP_GENCODE   ON TEMP_GENCODE.CODBAR   = GENCODE.CODBAR    " +_
		  "                         AND TEMP_GENCODE.NUMART = GENCODE.NUMART      " +_
		  " WHERE                                                                 " +_
		  "        TEMP_GENCODE.CODBAR IS NULL                                    " +_
		  " AND    GENCODE.NUMART       ="+str(Article)
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
		Function Tab_Modifier(CodBArCible as String = "") As Boolean
		  Dim RepUser As Integer
		  
		  TempGenCode.CodBar       = Champs.CodBar
		  TempGenCode.NumArt       = Champs.NumArt
		  TempGenCode.Inform       = Champs.Inform
		  
		  if CodBArCible<>TempGenCode.CodBar then
		    
		    if Tab_CodBarExiste(TempGenCode.CodBar) then
		      
		      RepUser=MsgBox("Gencode : "+TempGenCode.CodBar+" deja utilise, desirez vous l'attribuer a cet article ?",52)
		      If  RepUser=7 then
		        return False
		      end if
		      
		      TempGenCode.DBase_Delete(TempGenCode.CodBar)
		      
		    end if
		    
		  end if
		  
		  TempGenCode.DBase_Update(CodBArCible)
		  
		  return True
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_Supprime(CodBarCible as String)
		  TempGenCode.DBase_Delete(CodBarCible)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Article As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs As LigneGenCode
	#tag EndProperty

	#tag Property, Flags = &h0
		GenCode As Class_GenCode
	#tag EndProperty

	#tag Property, Flags = &h0
		Operation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TempGenCode As Class_GenCode
	#tag EndProperty


	#tag Structure, Name = LigneGenCode, Flags = &h21, Attributes = \"StructureAlignment \x3D 1"
		CodBar as string*50
		  NumArt as int64
		  Inform As string*50
		  Operation as string * 5
		SourceInfo as string*5
	#tag EndStructure


	#tag ViewBehavior
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
			Name="Operation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
	#tag EndViewBehavior
End Class
#tag EndClass
