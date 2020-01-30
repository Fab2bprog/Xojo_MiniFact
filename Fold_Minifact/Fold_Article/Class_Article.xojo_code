#tag Class
Protected Class Class_Article
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
		  Dim MaxArticle  as int64
		  Dim OrdreSql   as string
		  Dim RepUser    as integer
		  Dim rs         as RecordSet
		  
		  rs = DBaseID.SQLSelect("SELECT IFNULL(MAX(NUMERO)+1,1) AS MAXNUM FROM ARTICLE")
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    MaxArticle        = rs.Field("MAXNUM").Value
		  else
		    MaxArticle        = 1
		  end if
		  
		  OrdreSql=" INSERT INTO    ARTICLE(NUMERO)     VALUES ([NUMERO])    "
		  OrdreSql=ReplaceAll(OrdreSql, "[NUMERO]"          ,str(MaxArticle)     )
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		    exit sub
		  Else
		    DBaseID.SQLExecute ("Commit")
		    Numero=MaxArticle
		  end if
		  
		  rs=DBaseID.SQLSelect("SELECT * FROM ARTICLE WHERE NUMERO ="+str(MaxArticle))
		  rs.MoveFirst
		  
		  if  not (rs=NIL) then
		    rs.Edit
		    
		    rs.Field("NUMERO").Int64Value                = Numero
		    rs.Field("NOM").StringValue                  = Nom
		    rs.Field("NCLPARENT").Int64Value             = NclParent
		    rs.Field("NCLNIVEAU").Int64Value             = NclNiVeau
		    rs.Field("ACTIF").StringValue                = Actif
		    rs.Field("STOCKGEST").StringValue            = StockGest
		    rs.Field("DESCRIPTION").StringValue          = Description
		    rs.Field("BLOCAGE").StringValue              = Blocage
		    rs.Field("RSXUSER").Int64Value               = RsxUser
		    rs.Field("RSXETAT").StringValue              = RsxEtat
		    rs.Field("RSXINFO").StringValue              = RsxInfo
		    rs.Field("RSXDATE").StringValue              = RsxDate
		    
		    rs.Update
		    
		    If DBaseID.error then
		      MsgBox DBaseID.errormessage
		      exit sub
		    Else
		      DBaseID.SQLExecute ("Commit")
		    end if
		    
		  end if
		  
		  
		  
		  
		  Exception err as NilObjectException
		    RepUser = MsgBox ("Echec de la création de l'article"+EndOfLine+DBaseSource,48,"Erreur execution requete sql")
		    
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Delete()
		  DBaseRS.DeleteRecord
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DBase_MajRecordset()
		  
		  
		  DBaseRS.Field("NUMERO").Int64Value                    =  Numero
		  DBaseRS.Field("NOM").StringValue                      =  Nom
		  DBaseRS.Field("NCLPARENT").Int64Value                 =  NclParent
		  DBaseRS.Field("NCLNIVEAU").Int64Value                 =  NclNiveau
		  DBaseRS.Field("ACTIF").StringValue                    =  Actif
		  DBaseRS.Field("STOCKGEST").StringValue                =  StockGest
		  DBaseRS.Field("DESCRIPTION").StringValue              =  Description
		  DBaseRS.Field("BLOCAGE").StringValue                  =  Blocage
		  DBaseRS.Field("RSXUSER").Int64Value                   =  RsxUser
		  DBaseRS.Field("RSXETAT").StringValue                  =  RsxEtat
		  DBaseRS.Field("RSXINFO").StringValue                  =  RsxInfo
		  DBaseRS.Field("RSXDATE").StringValue                  =  RsxDate
		  
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
		  Numero              =  0
		  Nom                 =  ""
		  NclParent           =  0
		  NclNiveau           =  0
		  Actif               =  "O"
		  StockGest           =  "O"
		  Description         =  ""
		  Blocage             =  "N"
		  RsxUser             =  0
		  RsxEtat             =  ""
		  RsxInfo             =  ""
		  RsxDate             =  ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MajPropriete()
		  
		  Numero              =  DBaseRS.Field("NUMERO").Int64Value
		  Nom                 =  DBaseRS.Field("NOM").StringValue
		  NclParent           =  DBaseRS.Field("NCLPARENT").Int64Value
		  NclNiveau           =  DBaseRS.Field("NCLNIVEAU").Int64Value
		  Actif               =  DBaseRS.Field("ACTIF").StringValue
		  StockGest           =  DBaseRS.Field("STOCKGEST").StringValue
		  Description         =  DBaseRS.Field("DESCRIPTION").StringValue
		  Blocage             =  DBaseRS.Field("BLOCAGE").StringValue
		  RsxUser             =  DBaseRS.Field("RSXUSER").Int64Value
		  RsxEtat             =  DBaseRS.Field("RSXETAT").StringValue
		  RsxInfo             =  DBaseRS.Field("RSXINFO").StringValue
		  RsxDate             =  DBaseRS.Field("RSXDATE").StringValue
		  
		  // Gestion hypothetique des valeurs null
		  if    str(Numero)         =chr(0) then  Numero                    =   0
		  if    Nom                 =chr(0) then  Nom                       =   ""
		  if    str(NclParent)      =chr(0) then  NclParent                 =   0
		  if    str(NclNiveau)      =chr(0) then  NclNiveau                 =   0
		  if    Actif               =chr(0) then  Actif                     =   "O"
		  if    StockGest           =chr(0) then  StockGest                 =   "N"
		  if    Description         =chr(0) then  Description               =   ""
		  if    Blocage             =chr(0) then  Blocage                   =   "N"
		  if    str(RsxUser)        =chr(0) then  RsxUser                   =   0
		  if    RsxEtat             =chr(0) then  RsxEtat                   =   ""
		  if    RsxInfo             =chr(0) then  RsxInfo                   =   ""
		  if    RsxDate             =chr(0) then  RsxDate                   =   ""
		  
		  Exception err as NilObjectException
		    
		    exit sub
		    
		    
		    
		    
		    
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Actif As String
	#tag EndProperty

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
		Description As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NclNiveau As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NclParent As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Numero As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		RsxDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RsxEtat As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RsxInfo As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RsxUser As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		StockGest As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Actif"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
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
			Name="Description"
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
			Name="RsxDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RsxEtat"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RsxInfo"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StockGest"
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
			Name="NclNiveau"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NclParent"
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
		#tag ViewProperty
			Name="RsxUser"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
