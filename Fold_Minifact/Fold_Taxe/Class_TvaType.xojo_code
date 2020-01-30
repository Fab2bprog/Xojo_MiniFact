#tag Class
Protected Class Class_TvaType
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
		  Dim MaxTaxeva  as int64
		  Dim OrdreSql   as string
		  Dim RepUser    as integer
		  Dim rs         as RecordSet
		  
		  rs = DBaseID.SQLSelect("SELECT IFNULL(MAX(NUMERO)+1,1) AS MAXNUM FROM "+NomTable)
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    MaxTaxeva        = rs.Field("MAXNUM").Value
		  else
		    MaxTaxeva        = 1
		  end if
		  
		  OrdreSql=" INSERT INTO    "+NomTable+"(NUMERO)     VALUES ([NUMERO])    "
		  OrdreSql=ReplaceAll(OrdreSql, "[NUMERO]"          ,str(MaxTaxeva)     )
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		    exit sub
		  Else
		    DBaseID.SQLExecute ("Commit")
		    Numero=MaxTaxeva
		  end if
		  
		  rs=DBaseID.SQLSelect("SELECT * FROM "+NomTable+" WHERE NUMERO ="+str(MaxTaxeva))
		  rs.MoveFirst
		  
		  if  not (rs=NIL) then
		    rs.Edit
		    
		    DBaseRS.Field("NUMERO").Int64Value     =   Numero
		    DBaseRS.Field("NOM").StringValue       =   Nom
		    DBaseRS.Field("NUMPOSTE").StringValue  =   NumPoste
		    DBaseRS.Field("DATEDEB").DateValue     =   Datedeb
		    DBaseRS.Field("DATEFIN").DateValue     =   Datefin
		    DBaseRS.Field("ACTIVER").StringValue   =   Activer
		    DBaseRS.Field("BLOCAGE").StringValue   =   Blocage
		    
		    
		    rs.Update
		    
		    If DBaseID.error then
		      MsgBox DBaseID.errormessage
		      exit sub
		    Else
		      DBaseID.SQLExecute ("Commit")
		    end if
		    
		  end if
		  
		  
		  
		  
		  Exception err as NilObjectException
		    RepUser = MsgBox ("Echec de la création du type de TVA "+EndOfLine+DBaseSource,48,"Erreur execution requete sql")
		    
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Delete()
		  DBaseRS.DeleteRecord
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DBase_MajRecordset()
		  
		  DBaseRS.Field("NUMERO").Int64Value     =   Numero
		  DBaseRS.Field("NOM").StringValue       =   Nom
		  DBaseRS.Field("NUMPOSTE").StringValue  =   NumPoste
		  DBaseRS.Field("DATEDEB").DateValue     =   Datedeb
		  DBaseRS.Field("DATEFIN").DateValue     =   Datefin
		  DBaseRS.Field("ACTIVER").StringValue   =   Activer
		  DBaseRS.Field("BLOCAGE").StringValue   =   Blocage
		  
		  
		  
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
		  Dim date1 as new date
		  Dim date2 as new date
		  
		  date1.Day=01
		  date1.Month=01
		  date1.Year=2000
		  
		  date2.Day=31
		  date2.Month=12
		  date2.Year=9999
		  
		  Numero    = 0
		  Nom       = ""
		  NumPoste  = ""
		  Datedeb   = date1
		  Datefin   = date2
		  Activer   = "O"
		  Blocage   = "N"
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MajPropriete()
		  Dim date1 as new date
		  Dim date2 as new date
		  
		  date1.Day=01
		  date1.Month=01
		  date1.Year=2000
		  
		  date2.Day=31
		  date2.Month=12
		  date2.Year=9999
		  
		  Numero    = DBaseRS.Field("NUMERO").Int64Value
		  Nom       = DBaseRS.Field("NOM").StringValue
		  NumPoste  = DBaseRS.Field("NUMPOSTE").StringValue
		  Datedeb   = DBaseRS.Field("DATEDEB").DateValue
		  Datefin   = DBaseRS.Field("DATEFIN").DateValue
		  Activer   = DBaseRS.Field("ACTIVER").StringValue
		  Blocage   = DBaseRS.Field("BLOCAGE").StringValue
		  
		  // Gestion hypothetique des valeurs null
		  
		  if str(Numero)    = chr(0) then   Numero    = 0
		  if Nom            = chr(0) then   Nom       = ""
		  if NumPoste       = chr(0) then   NumPoste  = ""
		  if str(Datedeb)   = chr(0) then   Datedeb   = date1
		  if str(Datefin)   = chr(0) then   Datefin   = date2
		  if Activer        = chr(0) then   Activer  = "O"
		  if Blocage        = chr(0) then   Blocage   = "N"
		  
		  
		  Exception err as NilObjectException
		    
		    exit sub
		    
		    
		    
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Activer As String
	#tag EndProperty

	#tag Property, Flags = &h0
		BLOCAGE As String = "N"
	#tag EndProperty

	#tag Property, Flags = &h0
		DateDeb As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		DateFin As Date
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
		NomTable As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Numero As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NumPoste As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Activer"
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
			Name="NomTable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumPoste"
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
