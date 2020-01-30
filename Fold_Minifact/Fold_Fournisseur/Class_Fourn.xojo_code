#tag Class
Protected Class Class_Fourn
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
		  Dim MaxFourn  as int64
		  Dim OrdreSql   as string
		  Dim RepUser    as integer
		  Dim rs         as RecordSet
		  
		  rs = DBaseID.SQLSelect("SELECT IFNULL(MAX(NUMERO)+1,1) AS MAXNUM FROM FOURNISSEUR ")
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    MaxFourn        = rs.Field("MAXNUM").Value
		  else
		    MaxFourn        = 1
		  end if
		  
		  OrdreSql=" INSERT INTO    FOURNISSEUR(NUMERO)     VALUES ([NUMERO])    "
		  OrdreSql=ReplaceAll(OrdreSql, "[NUMERO]"          ,str(MaxFourn)     )
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		    exit sub
		  Else
		    DBaseID.SQLExecute ("Commit")
		    Numero=MaxFourn
		  end if
		  
		  rs=DBaseID.SQLSelect("SELECT * FROM FOURNISSEUR WHERE NUMERO ="+str(MaxFourn))
		  rs.MoveFirst
		  
		  if  not (rs=NIL) then
		    rs.Edit
		    
		    rs.Field("NOM").Value              = Nom
		    rs.Field("CATEGORIE").Value        = Categorie
		    rs.Field("ADRESSE1").Value         = Adresse1
		    rs.Field("ADRESSE2").Value         = Adresse2
		    rs.Field("CPO").Value              = CodePostal
		    rs.Field("VILLE").Value            = Ville
		    rs.Field("REGION").Value           = Region
		    rs.Field("PAYS").Value             = Pays
		    rs.Field("EMAIL").Value            = Email
		    rs.Field("SITE_WEB").Value         = SiteInternet
		    rs.Field("REMISE_GLOBALE").Value   = RemiseGlobale
		    rs.Field("MODE_REGLEMENT").Value   = ModeRegle
		    rs.Field("TVA_INTRA_COM").Value    = TVAIntraCom
		    rs.Field("COMMENTAIRES").Value     = Commentaires
		    rs.Field("BLOCAGE").Value         =  Blocage
		    
		    rs.Update
		    
		    If DBaseID.error then
		      MsgBox DBaseID.errormessage
		      exit sub
		    Else
		      DBaseID.SQLExecute ("Commit")
		    end if
		    
		  end if
		  
		  
		  
		  
		  Exception err as NilObjectException
		    RepUser = MsgBox ("Echec de la création du Fournisseur"+EndOfLine+DBaseSource,48,"Erreur execution requete sql")
		    
		    
		    
		    
		    
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
		  DBaseRS.Field("NOM").Value              = Nom
		  DBaseRS.Field("CATEGORIE").Value        = Categorie
		  DBaseRS.Field("ADRESSE1").Value         = Adresse1
		  DBaseRS.Field("ADRESSE2").Value         = Adresse2
		  DBaseRS.Field("CPO").Value              = CodePostal
		  DBaseRS.Field("VILLE").Value            = Ville
		  DBaseRS.Field("REGION").Value           = Region
		  DBaseRS.Field("PAYS").Value             = Pays
		  DBaseRS.Field("EMAIL").Value            = Email
		  DBaseRS.Field("SITE_WEB").Value         = SiteInternet
		  DBaseRS.Field("REMISE_GLOBALE").Value   = RemiseGlobale
		  DBaseRS.Field("MODE_REGLEMENT").Value   = ModeRegle
		  DBaseRS.Field("TVA_INTRA_COM").Value    = TVAIntraCom
		  DBaseRS.Field("COMMENTAIRES").Value     = Commentaires
		  DBaseRS.Field("BLOCAGE").Value         =  Blocage
		  
		  
		  
		  
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
		  Categorie     =  0
		  Adresse1      =  ""
		  Adresse1      =  ""
		  CodePostal    =  ""
		  Ville         =  ""
		  Region        =  ""
		  Pays          =  ""
		  Email         =  ""
		  SiteInternet  =  ""
		  RemiseGlobale =  0
		  ModeRegle     =  0
		  TVAIntraCom   =  ""
		  Commentaires  =  ""
		  BLOCAGE      =  "N"
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MajPropriete()
		  
		  Numero        =  DBaseRS.Field("NUMERO").Int64Value
		  Nom           =  DBaseRS.Field("NOM").StringValue
		  Categorie     =  DBaseRS.Field("CATEGORIE").Int64Value
		  Adresse1      =  DBaseRS.Field("ADRESSE1").StringValue
		  Adresse2      =  DBaseRS.Field("ADRESSE2").StringValue
		  CodePostal    =  DBaseRS.Field("CPO").StringValue
		  Ville         =  DBaseRS.Field("VILLE").StringValue
		  Region        =  DBaseRS.Field("REGION").StringValue
		  Pays          =  DBaseRS.Field("PAYS").StringValue
		  Email         =  DBaseRS.Field("EMAIL").StringValue
		  SiteInternet  =  DBaseRS.Field("SITE_WEB").StringValue
		  RemiseGlobale =  DBaseRS.Field("REMISE_GLOBALE").DoubleValue
		  ModeRegle     =  DBaseRS.Field("MODE_REGLEMENT").Int64Value
		  TVAIntraCom   =  DBaseRS.Field("TVA_INTRA_COM").StringValue
		  Commentaires  =  DBaseRS.Field("COMMENTAIRES").StringValue
		  Blocage       =  DBaseRS.Field("BLOCAGE").StringValue
		  
		  // Gestion hypothetique des valeurs null
		  if str(Numero)       = chr(0) then Numero          = 0
		  if Nom               = chr(0) then Nom             = ""
		  if str(Categorie)    = chr(0) then Categorie       = 0
		  if Adresse1          = chr(0) then Adresse1        = ""
		  if Adresse2          = chr(0) then Adresse2        = ""
		  if CodePostal        = chr(0) then CodePostal      = ""
		  if Ville             = chr(0) then Ville           = ""
		  if Region            = chr(0) then Region          = ""
		  if Pays              = chr(0) then Pays            = ""
		  if Email             = chr(0) then Email           = ""
		  if SiteInternet      = chr(0) then SiteInternet    = ""
		  if str(RemiseGlobale)= chr(0) then RemiseGlobale   = 0
		  if str(ModeRegle)    = chr(0) then ModeRegle       = 0
		  if TVAIntraCom       = chr(0) then TVAIntraCom     = ""
		  if Commentaires      = chr(0) then Commentaires    = ""
		  if BLOCAGE          = chr(0) then  Blocage      = "N"
		  
		  Exception err as NilObjectException
		    
		    exit sub
		    
		    
		    
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Adresse1 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Adresse2 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		BLOCAGE As String = "N"
	#tag EndProperty

	#tag Property, Flags = &h0
		Categorie As Int64 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		CodePostal As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Commentaires As String
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
		Email As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ModeRegle As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Numero As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Pays As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Region As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RemiseGlobale As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		SiteInternet As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TVAIntraCom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Ville As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Adresse1"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Adresse2"
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
			Name="CodePostal"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Commentaires"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="Email"
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
			Name="Pays"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Region"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemiseGlobale"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SiteInternet"
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
			Name="TVAIntraCom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ville"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="ModeRegle"
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
