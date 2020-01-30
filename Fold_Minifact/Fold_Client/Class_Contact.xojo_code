#tag Class
Protected Class Class_Contact
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
		Function DBaseReqDirect_Exe(OrdreSql as String) As Boolean
		  
		  DBaseRS=DBaseID.SQLSelect(OrdreSql)
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
		Sub DBase_Create(numcli as Integer)
		  Dim MaxContact as int64
		  Dim OrdreSql   as string
		  
		  DBaseRSTemp = DBaseID.SQLSelect("SELECT IFNULL(MAX(NUMCONTACT)+1,1) AS MAXNUM FROM "+TableContact+" WHERE NUMCLIENT="+str(numcli))
		  
		  if  not (DBaseRSTemp=NIL) then
		    DBaseRSTemp.MoveFirst
		    MaxContact         = DBaseRSTemp.Field("MAXNUM").Value
		  else
		    MaxContact         = 1
		  end if
		  
		  OrdreSql=" INSERT INTO [TABLECONTACT](NUMCLIENT  ,  "+_
		  "                            NUMCONTACT       ,  "+_
		  "                            NOM              ,  "+_
		  "                            FONCTION         ,  "+_
		  "                            EMAIL            ,  "+_
		  "                            TELBUREAU        ,  "+_
		  "                            TELPORTABLE      ,  "+_
		  "                            FAX                 "+_
		  "                            )                   "+_
		  "                            VALUES (            "+_
		  "                            [NUMCLIENT]      ,  "+_
		  "                            [NUMCONTACT]     ,  "+_
		  "                            '[NOM]'          ,  "+_
		  "                            '[FONCTION]'     ,  "+_
		  "                            '[EMAIL]'        ,  "+_
		  "                            '[TELBUREAU]'    ,  "+_
		  "                            '[TELPORTABLE]'  ,  "+_
		  "                            '[FAX]'             "+_
		  "                            )                   "
		  
		  
		  
		  OrdreSql=ReplaceAll(OrdreSql,"[TABLECONTACT]",TableContact   )
		  OrdreSql=ReplaceAll(OrdreSql,"[NUMCLIENT]"   ,str(numcli)    )
		  OrdreSql=ReplaceAll(OrdreSql,"[NUMCONTACT]"  ,str(MaxContact))
		  OrdreSql=ReplaceAll(OrdreSql,"[NOM]"         ,Nom            )
		  OrdreSql=ReplaceAll(OrdreSql,"[FONCTION]"    ,Fonction       )
		  OrdreSql=ReplaceAll(OrdreSql,"[EMAIL]"       ,EMail          )
		  OrdreSql=ReplaceAll(OrdreSql,"[TELBUREAU]"   ,TelBureau      )
		  OrdreSql=ReplaceAll(OrdreSql,"[TELPORTABLE]" ,TelPortable    )
		  OrdreSql=ReplaceAll(OrdreSql,"[FAX]"         ,Fax            )
		  
		  
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		  Else
		    DBaseID.SQLExecute ("Commit")
		  end if
		  
		  
		  NumContact = MaxContact
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Delete(Numero as int64 = 0)
		  Dim OrdreSql as String
		  
		  If Numero=0 then
		    DBaseRS.DeleteRecord
		    DBaseID.Commit
		    exit sub
		  end if
		  
		  OrdreSql = " DELETE FROM "+TableContact+" WHERE NUMCONTACT  =  " + str(Numero)
		  
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		  Else
		    DBaseID.SQLExecute ("Commit")
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DBase_MajRecordset()
		  
		  
		  DBaseRS.Field("NUMCLIENT").Value    = NumClient
		  DBaseRS.Field("NUMCONTACT").Value   = NumContact
		  DBaseRS.Field("NOM").Value          = Nom
		  DBaseRS.Field("FONCTION").Value     = Fonction
		  DBaseRS.Field("EMAIL").Value        = Email
		  DBaseRS.Field("TELBUREAU").Value    = TelBureau
		  DBaseRS.Field("TELPORTABLE").Value  = TelPortable
		  DBaseRS.Field("FAX").Value          = Fax
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Update(Numero as integer = 0)
		  Dim OrdreSql as String
		  
		  if Numero = 0 then
		    DBaseRS.Edit
		    DBase_MajRecordset
		    DBaseRS.Update
		    DBaseID.Commit
		    exit sub
		  end if
		  
		  OrdreSql = " UPDATE "+TableContact+" SET NUMCONTACT  =  " + str(NumContact)  +"  ,"+ _
		  "                             NOM         = '" + Nom          +"' ,"+ _
		  "                             FONCTION    = '" + Fonction     +"' ,"+ _
		  "                             EMAIL       = '" + Email        +"' ,"+ _
		  "                             TELBUREAU   = '" + TelBureau    +"' ,"+ _
		  "                             TELPORTABLE = '" + TelPortable  +"' ,"+ _
		  "                             FAX         = '" + Fax          +"'  "+ _
		  " WHERE NUMCONTACT                        =  " + str(NumContact)   +"   "
		  
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		  Else
		    DBaseID.SQLExecute ("Commit")
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init_Champs()
		  
		  NumClient       = 0
		  NumContact      = 0
		  Nom             = ""
		  Fonction        = ""
		  Email           = ""
		  TelBureau       = ""
		  TelPortable     = ""
		  Fax             = ""
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MajPropriete()
		  
		  NumClient          = DBaseRS.Field("NUMCLIENT").Value
		  NumContact         = DBaseRS.Field("NUMCONTACT").Value
		  Nom                = DBaseRS.Field("NOM").Value
		  Fonction           = DBaseRS.Field("FONCTION").Value
		  Email              = DBaseRS.Field("EMAIL").Value
		  TelBureau          = DBaseRS.Field("TELBUREAU").Value
		  TelPortable        = DBaseRS.Field("TELPORTABLE").Value
		  Fax                = DBaseRS.Field("FAX").Value
		  
		  // Gestion hypothetique des valeurs null
		  if str(NumClient)    = chr(0) then  NumClient       = 0
		  if str(NumContact)   = chr(0) then  NumContact      = 0
		  if Nom               = chr(0) then  Nom             = ""
		  if Fonction          = chr(0) then  Fonction        = ""
		  if Email             = chr(0) then  Email           = ""
		  if TelBureau         = chr(0) then  TelBureau       = ""
		  if TelPortable       = chr(0) then  TelPortable     = ""
		  if Fax               = chr(0) then  Fax             = ""
		  
		  Exception err as NilObjectException
		    
		    exit sub
		    
		    
		    
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DBaseID As REALSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		DBaseRS As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		DBaseRSTemp As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		DBaseSource As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Email As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Fax As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Fonction As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NumClient As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NumContact As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		TableContact As String = "CONTACT"
	#tag EndProperty

	#tag Property, Flags = &h0
		TelBureau As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TelPortable As String
	#tag EndProperty


	#tag ViewBehavior
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
			Name="Fax"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Fonction"
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
			Name="TableContact"
			Visible=false
			Group="Behavior"
			InitialValue="CONTACT"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TelBureau"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TelPortable"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="NumClient"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumContact"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
