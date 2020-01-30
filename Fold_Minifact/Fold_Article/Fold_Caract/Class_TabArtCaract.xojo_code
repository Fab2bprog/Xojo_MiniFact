#tag Class
Protected Class Class_TabArtCaract
	#tag Method, Flags = &h0
		Sub Base_Charge()
		  ArtCaract.DBaseSource="SELECT * FROM ARTCARACT WHERE NUMART = "+str(Article)
		  
		  if not Self.ArtCaract.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  
		  if ArtCaract.Charge_Premier then
		    
		    do
		      
		      TempArtCaract.NumArt         = ArtCaract.NumArt
		      TempArtCaract.NumCaract      = ArtCaract.NumCaract
		      TempArtCaract.Valeur         = ArtCaract.Valeur
		      
		      TempArtCaract.DBase_Create()
		      
		      if not ArtCaract.Charge_Suivant then
		        exit do
		      end if
		      
		    loop
		    
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Base_Sauve()
		  Dim OrdreSql as String
		  
		  OrdreSql = " DELETE FROM ARTCARACT WHERE NUMART  =  " + str(Article)
		  
		  App.MainDB.SQLexecute(OrdreSql)
		  
		  OrdreSql = " INSERT OR REPLACE INTO ARTCARACT(NUMART    ,  " + _
		  "                                  NUMCARACT ,  " + _
		  "                                  VALEUR       " + _
		  "                                )              " + _
		  "      SELECT  NUMART    ,                      " + _
		  "              NUMCARACT ,                      " + _
		  "              VALEUR                           " + _
		  "              FROM TEMP_ARTCARACT              " + _
		  "              ORDER BY NUMART,NUMCARACT        "
		  
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
		  
		  ArtCaract         = new Class_ArtCaract
		  ArtCaract.DBaseID = App.MainDB
		  
		  TempArtCaract = new Class_ArtCaract
		  TempArtCaract.DBaseID=App.MainDB
		  TempArtCaract.DBaseSource="SELECT * FROM TEMP_ARTCARACT"
		  TempArtCaract.Table="TEMP_ARTCARACT"
		  
		  
		  OrdreSql = "DROP TABLE IF EXISTS TEMP_ARTCARACT"
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  OrdreSql = " CREATE TEMPORARY TABLE  TEMP_ARTCARACT ( " + _
		  "  NUMART            BIGINT NOT NULL       ,    " + _
		  "  NUMCARACT         BIGINT NOT NULL       ,    " + _
		  "  NOM               VARCHAR(50)      ,    " + _
		  "  VALEUR            VARCHAR(20)      ,    " + _
		  "  BLOCAGE           VARCHAR(5)       ,    " + _
		  "  RSXUSER           BIGINT           ,    " + _
		  "  RSXETAT           VARCHAR(5)       ,    " + _
		  "  RSXINFO           VARCHAR(15)      ,    " + _
		  "  RSXDATE           VARCHAR(15)      ,    " + _
		  " PRIMARY KEY (NUMART,NUMCARACT   ASC)     " + _
		  " )                                        "
		  
		  
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
		  
		  OrdreSql = "UPDATE TEMP_ARTCARACT SET NUMART="+str(NumArt)
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
		  TempArtCaract.NumArt         = Champs.NumArt
		  TempArtCaract.NumCaract      = Champs.NumCaract
		  TempArtCaract.Valeur         = Champs.Valeur
		  TempArtCaract.DBase_Create()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tab_EstModif() As Boolean
		  Dim rs as RecordSet
		  Dim OrdreSql as String
		  Dim resultat    as Integer
		  
		  // Examine modification des ArtCaract
		  OrdreSql = "  SELECT COUNT(*) AS DIFFERENCE FROM ARTCARACT,TEMP_ARTCARACT          " +_
		  "  WHERE                                                                " +_
		  "  ARTCARACT.NUMART         =   TEMP_ARTCARACT.NUMART        AND        " +_
		  "  ARTCARACT.NUMCARACT      =   TEMP_ARTCARACT.NUMCARACT     AND        " +_
		  "  ARTCARACT.VALEUR         <>  TEMP_ARTCARACT.VALEUR                   "
		  
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
		  
		  //Examine si creation ArtCaract
		  OrdreSql = " SELECT                 " +_
		  " count(*) AS NOUVEAU    " +_
		  " FROM                   " +_
		  " TEMP_ARTCARACT         " +_
		  " LEFT JOIN ARTCARACT ON ARTCARACT.NUMART  = TEMP_ARTCARACT.NUMART     " +_
		  "                  AND ARTCARACT.NUMCARACT = TEMP_ARTCARACT.NUMCARACT  " +_
		  " WHERE                        " +_
		  " ARTCARACT.NUMCARACT IS NULL   "
		  
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
		  
		  
		  //Examine si Suppression ArtCaract
		  OrdreSql = " SELECT               " +_
		  " count(*) AS SUPPRIME " +_
		  " FROM                 " +_
		  " ARTCARACT            " +_
		  " LEFT JOIN TEMP_ARTCARACT ON TEMP_ARTCARACT.NUMART  = ARTCARACT.NUMART       " +_
		  "                         AND TEMP_ARTCARACT.NUMCARACT = ARTCARACT.NUMCARACT  " +_
		  " WHERE                                                                       " +_
		  "        TEMP_ARTCARACT.NUMCARACT IS NULL                                     " +_
		  " AND    ARTCARACT.NUMART       ="+str(Article)
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
		Sub Tab_Modifier(RefArt as Int64, RefCaract as Int64)
		  TempArtCaract.NumArt         = Champs.NumArt
		  TempArtCaract.NumCaract      = Champs.NumCaract
		  TempArtCaract.Valeur         = Champs.Valeur
		  
		  TempArtCaract.DBase_Update(RefArt,RefCaract)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_Supprime(Numero as Int64 = 0)
		  TempArtCaract.DBase_Delete(Numero)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ArtCaract As Class_ArtCaract
	#tag EndProperty

	#tag Property, Flags = &h0
		Article As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Champs As LigneArtCaract
	#tag EndProperty

	#tag Property, Flags = &h0
		Operation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TempArtCaract As Class_ArtCaract
	#tag EndProperty


	#tag Structure, Name = LigneArtCaract, Flags = &h21, Attributes = \"StructureAlignment \x3D 1"
		NumArt as int64
		  NumCaract as int64
		  NomCaract As string*50
		  Valeur as string *255
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
