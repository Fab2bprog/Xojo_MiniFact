#tag Class
Protected Class Class_EnfantNomencl
	#tag Method, Flags = &h21
		Private Sub Charge_Nomencl()
		  Dim OrdreSql as string
		  
		  
		  OrdreSql = "CREATE TEMPORARY TABLE TEMP_NOMENCL(                     "  + _
		  " NUMERO           BIGINT      ,                "  + _
		  " NIVEAU           BIGINT      ,                "  + _
		  " NCLPARENT        BIGINT      ,                "  + _
		  " NOM              VARCHAR(50) ,                "  + _
		  " ESTENFANT        INT(1) DEFAULT 0         ,   "  + _
		  " PRIMARY KEY (NUMERO,NIVEAU ASC)               "  + _
		  ")                                              "
		  
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  OrdreSql = " CREATE INDEX  TEMP_NOMENCL_IDX01     ON  TEMP_NOMENCL(NIVEAU,NCLPARENT)"
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  OrdreSql = " CREATE INDEX  TEMP_NOMENCL_IDX02     ON  TEMP_NOMENCL(NIVEAU,NCLPARENT,ESTENFANT)"
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  
		  OrdreSql = "  INSERT OR REPLACE INTO TEMP_NOMENCL(NUMERO  ,   " + _
		  "                                NIVEAU    ,   " + _
		  "                                NCLPARENT ,   " + _
		  "                                NOM           " + _
		  "                                )             " + _
		  " SELECT NUMERO    ,                           " + _
		  "        NIVEAU    ,                           " + _
		  "        NCLPARENT ,                           " + _
		  "        NOM                                   " + _
		  "        FROM NOMENCLATURE                     "
		  
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Charge_Precedent() As Boolean
		  Init_Champs
		  
		  if  DBaseRS=NIL then
		    return false
		  end if
		  
		  DBaseRS.MovePrevious
		  
		  
		  // Ne pas oublier de verifier si bug de language sur BOF
		  if  DBaseRS.BOF  then
		    return false
		  end if
		  
		  MajPropriete
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Charge_Premier() As Boolean
		  Init_Champs
		  
		  
		  if  DBaseRS=NIL then
		    return false
		  end if
		  
		  DBaseRS.MoveFirst
		  
		  if  DBaseRS.BOF or DBaseRS.EOF  then
		    return false
		  end if
		  
		  MajPropriete
		  
		  return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Charge_Suivant() As Boolean
		  Init_Champs
		  
		  if  DBaseRS=NIL then
		    return false
		  end if
		  
		  DBaseRS.MoveNext
		  
		  if  DBaseRS.EOF  then
		    return false
		  end if
		  
		  MajPropriete
		  
		  return true
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Init_Champs
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DBaseReqDirect_Exe(ordresql as String) As Boolean
		  
		  DBaseRS=DBaseID.SQLSelect(ordresql)
		  
		  
		  'if  not (DBaseRS=NIL) then
		  'return true
		  'end if
		  
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DBaseReqSrc_Exec() As Boolean
		  Dim RepUser as Integer
		  DBaseRS=DBaseID.SQLSelect(DBaseSource)
		  
		  DBaseRS.MoveFirst
		  
		  if  not (DBaseRS=NIL) then
		    return true
		  end if
		  
		  
		  Exception err as NilObjectException
		    RepUser = MsgBox ("Les conditions de votre recherche semblent incoherentes !"+EndOfLine+" Merci de les reformuler."+EndOfLine+DBaseSource,48,"Erreur execution requete sql")
		    return false
		    
		    
		    
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Delete_NodeInconnus() As Boolean
		  Dim OrdreSql as string
		  
		  
		  OrdreSql=" DELETE FROM TEMP_NOMENCL WHERE ESTENFANT=0  "
		  if not app.RequeteSql(OrdreSql) then
		    return False
		  end if
		  
		  return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Existe_NodeOrphellin(Parent as Int64, NiveauParent as Int64) As Boolean
		  Dim OrdreSql as string
		  Dim rs       as RecordSet
		  
		  OrdreSql = "SELECT  COUNT(*) AS NBRELEMENT FROM TEMP_NOMENCL WHERE ESTENFANT=0 AND NCLPARENT ="+str(Parent)+" AND NIVEAU ="+str(NiveauParent+1)
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		    return false
		  end if
		  
		  if rs=nil then
		    return false
		  end if
		  
		  rs.MoveFirst
		  
		  if rs.Field("NBRELEMENT").Value >0 then
		    return true
		  end if
		  
		  return false
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Filtre_Enfant(Numero as int64, Niveau as int64)
		  Dim VarVoid as Boolean
		  
		  Charge_Nomencl
		  Liste_Element(Numero,Niveau)
		  VarVoid = Delete_NodeInconnus
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init_Champs()
		  Numero        =  0
		  Niveau        =  1
		  Nom           =  ""
		  BLOCAGE       =  "N"
		  NclParent     =  0
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Liste_Element(Numero as int64, Niveau as int64)
		  Dim NodeCible as Int64
		  Dim VarVoid    As Boolean
		  
		  do until not Existe_NodeOrphellin(Numero,Niveau)
		    NodeCible = Premier_NodeEnfant(Numero,Niveau)
		    Liste_Element(NodeCible,Niveau+1)
		  loop
		  
		  // msgbox "Delete Numero : ["+str(Numero)+"] du Niveau :["+str(Niveau)+"]"
		  VarVoid=Marque_Node(Numero,Niveau)
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MajPropriete()
		  
		  Numero        =  DBaseRS.Field("NUMERO").Int64Value
		  Niveau        =  DBaseRS.Field("NIVEAU").Int64Value
		  Nom           =  DBaseRS.Field("NOM").StringValue
		  NclParent     =  DBaseRS.Field("NCLPARENT").Int64Value
		  Blocage       =  DBaseRS.Field("BLOCAGE").StringValue
		  
		  // Gestion hypothetique des valeurs null
		  if str(Numero)       = chr(0) then Numero          = 0
		  if str(Niveau)       = chr(0) then Niveau          = 1
		  if Nom               = chr(0) then Nom             = ""
		  if str(NclParent)    = chr(0) then NclParent       = 0
		  if BLOCAGE           = chr(0) then Blocage         = "N"
		  
		  Exception err as NilObjectException
		    
		    exit sub
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Marque_Node(Numero as Int64, Niveau as Int64) As Boolean
		  Dim OrdreSql as string
		  
		  
		  OrdreSql=" UPDATE TEMP_NOMENCL SET ESTENFANT=1  WHERE NUMERO = "+str(Numero)+" AND NIVEAU ="+str(Niveau)
		  if not app.RequeteSql(OrdreSql) then
		    return False
		  end if
		  
		  return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Premier_NodeEnfant(Parent as Int64, NiveauParent as Int64) As Int64
		  Dim OrdreSql as string
		  Dim rs       as RecordSet
		  
		  OrdreSql = "SELECT NUMERO FROM TEMP_NOMENCL WHERE ESTENFANT=0 AND NCLPARENT = "+str(Parent)+" AND NIVEAU ="+str(NiveauParent+1)+" LIMIT 1 "
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		    return -1
		  end if
		  
		  if rs=nil then
		    return -1
		  end if
		  
		  rs.MoveFirst
		  
		  return rs.Field("NUMERO").Int64Value
		  
		  
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		BLOCAGE As String = "N"
	#tag EndProperty

	#tag Property, Flags = &h0
		DBaseID As REALSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		DBaseRS As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		DBaseSource As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NclParent As Int64 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Niveau As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Numero As Int64
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BLOCAGE"
			Visible=false
			Group="Behavior"
			InitialValue="N"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DBaseSource"
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
			Name="Nom"
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
			Name="NclParent"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Niveau"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Numero"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
