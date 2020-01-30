#tag Class
Protected Class Class_User
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
		Sub DBase_Create(NumUser as int64 = - 1)
		  Dim MaxUser    as int64
		  Dim OrdreSql   as string
		  Dim RepUser    as integer
		  Dim rs         as RecordSet
		  
		  if NumUser>=0 then
		    MaxUser=NumUser
		  else
		    rs = DBaseID.SQLSelect("SELECT IFNULL(MAX(NUMERO)+1,1) AS MAXNUM FROM "+TableUser)
		    if  not (rs=NIL) then
		      rs.MoveFirst
		      MaxUser        = rs.Field("MAXNUM").Value
		    else
		      MaxUser       = 1
		    end if
		  end if
		  
		  OrdreSql=" INSERT INTO    "+TableUser+"(NUMERO)     VALUES ([NUMERO])    "
		  OrdreSql=ReplaceAll(OrdreSql, "[NUMERO]"          ,str(MaxUser)     )
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		    exit sub
		  Else
		    DBaseID.SQLExecute ("Commit")
		    Numero=MaxUser
		  end if
		  
		  rs=DBaseID.SQLSelect("SELECT * FROM "+TableUser+" WHERE NUMERO ="+str(MaxUser))
		  rs.MoveFirst
		  
		  if  not (rs=NIL) then
		    rs.Edit
		    
		    rs.Field("NOM").Value              = Nom
		    rs.Field("PASSWORD").Value         = Password
		    rs.Field("NUMGROUP").Value         = NumGroup
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
		    RepUser = MsgBox ("Echec de la création de l'utilisateur"+EndOfLine+DBaseSource,48,"Erreur execution requete sql")
		    
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Delete(Numero as int64 = - 1)
		  Dim OrdreSql as string
		  
		  if Numero<0 then
		    DBaseRS.DeleteRecord
		    return
		  end if
		  
		  OrdreSql = "DELETE  FROM "+TableUser+" WHERE NUMERO="+str(Numero)
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DBase_MajRecordset()
		  
		  DBaseRS.Field("NUMERO").Value           = Numero
		  DBaseRS.Field("NOM").Value              = Nom
		  DBaseRS.Field("PASSWORD").Value         = Password
		  DBaseRS.Field("NUMGROUP").Value         = NumGroup
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
		Sub Init_Champs()
		  Numero        =  0
		  Nom           =  ""
		  Password      =  ""
		  NumGroup      = 0
		  BLOCAGE       =  "N"
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MajPropriete()
		  
		  Numero        =  DBaseRS.Field("NUMERO").Int64Value
		  Nom           =  DBaseRS.Field("NOM").StringValue
		  Blocage       =  DBaseRS.Field("BLOCAGE").StringValue
		  Password      =  DBaseRS.Field("PASSWORD").StringValue
		  NumGroup      =  DBaseRS.Field("NUMGROUP").Int64Value
		  NomGroup      =  NomGroupe(NumGroup)
		  
		  // Gestion hypothetique des valeurs null
		  if str(Numero)       = chr(0) then Numero          = 0
		  if Nom               = chr(0) then Nom             = ""
		  if BLOCAGE           = chr(0) then Blocage         = "N"
		  if Password          = chr(0) then Password        = ""
		  if str(NumGroup)     = chr(0) then NumGroup        = 0
		  if NomGroup          = chr(0) then NomGroup        = ""
		  
		  Exception err as NilObjectException
		    
		    exit sub
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function NomGroupe(Numero as int64 = - 1) As String
		  Dim OrdreSql as string
		  Dim rs as RecordSet
		  Dim Nom as String
		  
		  OrdreSql = "  SELECT NOM FROM USERGROUP WHERE NUMERO= " + str(Numero)
		  
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


	#tag Property, Flags = &h0
		BLOCAGE As String = "N"
	#tag EndProperty

	#tag Property, Flags = &h0
		Categorie As Int64 = 0
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
		Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NomGroup As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Numero As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NumGroup As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Password As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TableUser As String = "USER"
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
			Name="NomGroup"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
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
			Name="TableUser"
			Visible=false
			Group="Behavior"
			InitialValue="USER"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Categorie"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
		#tag ViewProperty
			Name="NumGroup"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
