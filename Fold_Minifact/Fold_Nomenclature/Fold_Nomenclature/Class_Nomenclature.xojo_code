#tag Class
Protected Class Class_Nomenclature
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

	#tag Method, Flags = &h0
		Sub DBase_Create()
		  Dim MaxGroup  as int64
		  Dim OrdreSql   as string
		  Dim RepUser    as integer
		  Dim rs         as RecordSet
		  
		  rs = DBaseID.SQLSelect("SELECT IFNULL(MAX(NUMERO)+1,1) AS MAXNUM FROM NOMENCLATURE WHERE NIVEAU = "+str(Niveau))
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    MaxGroup        = rs.Field("MAXNUM").Value
		  else
		    MaxGroup        = 1
		  end if
		  
		  OrdreSql=" INSERT INTO    NOMENCLATURE(NUMERO,NIVEAU)     VALUES ([NUMERO],[NIVEAU])    "
		  OrdreSql=ReplaceAll(OrdreSql, "[NUMERO]"          ,str(MaxGroup)     )
		  OrdreSql=ReplaceAll(OrdreSql, "[NIVEAU]"          ,str(Niveau)       )
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		    exit sub
		  Else
		    DBaseID.SQLExecute ("Commit")
		    Numero=MaxGroup
		  end if
		  
		  
		  rs=DBaseID.SQLSelect("SELECT * FROM NOMENCLATURE WHERE NUMERO ="+str(MaxGroup)+" AND NIVEAU="+str(Niveau))
		  rs.MoveFirst
		  
		  if  not (rs=NIL) then
		    rs.Edit
		    
		    rs.Field("NOM").Value              = Nom
		    rs.Field("NCLPARENT").Value        = NclParent
		    rs.Field("BLOCAGE").Value          = Blocage
		    
		    rs.Update
		    
		    If DBaseID.error then
		      MsgBox DBaseID.errormessage
		      exit sub
		    Else
		      DBaseID.SQLExecute ("Commit")
		    end if
		    
		  end if
		  
		  
		  
		  
		  Exception err as NilObjectException
		    RepUser = MsgBox ("Echec de la création de la famille"+EndOfLine+DBaseSource,48,"Erreur execution requete sql")
		    
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Delete()
		  DBaseRS.DeleteRecord
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DBase_MajRecordset()
		  
		  DBaseRS.Field("NUMERO").Value           = Numero
		  DBaseRS.Field("NIVEAU").Value           = Niveau
		  DBaseRS.Field("NOM").Value              = Nom
		  DBaseRS.Field("NCLPARENT").Value        = NclParent
		  DBaseRS.Field("BLOCAGE").Value          = Blocage
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Update()
		  DBaseRS.Edit
		  DBase_MajRecordset
		  DBaseRS.Update
		  DBaseID.Commit
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete_Element(Numero as int64, Niveau as int64)
		  Dim NodeCible as Int64
		  Dim VarVoid    As Boolean
		  
		  do until not Existe_NodeEnfant(Numero,Niveau)
		    NodeCible = Premier_NodeEnfant(Numero,Niveau)
		    Delete_Element(NodeCible,Niveau+1)
		  loop
		  
		  // msgbox "Delete Numero : ["+str(Numero)+"] du Niveau :["+str(Niveau)+"]"
		  VarVoid=Delete_Node(Numero,Niveau)
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Delete_Node(Numero as Int64, Niveau as Int64) As Boolean
		  Dim OrdreSql as string
		  
		  OrdreSql=" UPDATE ARTICLE SET NCLPARENT = 0, NCLNIVEAU = -1  WHERE  NCLPARENT = "+str(Numero)+" AND NCLNIVEAU="+str(Niveau)
		  if not app.RequeteSql(OrdreSql) then
		    return False
		  end if
		  
		  OrdreSql=" DELETE FROM NOMENCLATURE WHERE NUMERO = "+str(Numero)+" AND NIVEAU ="+str(Niveau)
		  if not app.RequeteSql(OrdreSql) then
		    return False
		  end if
		  
		  return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Existe_NodeEnfant(Parent as Int64, NiveauParent as Int64) As Boolean
		  Dim OrdreSql as string
		  Dim rs       as RecordSet
		  
		  OrdreSql = "SELECT  COUNT(*) AS NBRELEMENT FROM NOMENCLATURE WHERE NCLPARENT ="+str(Parent)+" AND NIVEAU ="+str(NiveauParent+1)
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
		Sub Init_Champs()
		  Numero        =  0
		  Niveau        =  1
		  Nom           =  ""
		  BLOCAGE       =  "N"
		  NclParent     =  0
		  
		  
		  
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
		Private Function Premier_NodeEnfant(Parent as Int64, NiveauParent as Int64) As Int64
		  Dim OrdreSql as string
		  Dim rs       as RecordSet
		  
		  OrdreSql = "SELECT NUMERO FROM NOMENCLATURE WHERE NCLPARENT = "+str(Parent)+" AND NIVEAU ="+str(NiveauParent+1)+" LIMIT 1 "
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
