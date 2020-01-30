#tag Class
Protected Class Class_ObjGroupWin
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
		    
		    RepUser = MsgBox ("Les conditions de votre recherche semblent incoherentes !"+" Merci de les reformuler."+EndOfLine+DBaseSource,48,"Erreur execution requete sql")
		    return false
		    
		    
		    
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init_Champs()
		  ObjetID        =  ""
		  NumGroup       =  0
		  ModeAcces      =  ""
		  Blocage        =  ""
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MajPropriete()
		  
		  
		  
		  ObjetID               =  DBaseRS.Field("OBJETID").StringValue
		  NumGroup              =  DBaseRS.Field("NUMGROUP").Int64Value
		  ModeAcces             =  DBaseRS.Field("MODEACCES").StringValue
		  Blocage               =  DBaseRS.Field("BLOCAGE").StringValue
		  NomGroup              =  RechNomGroupe(NumGroup)
		  CommentairesObjet     =  RechComentObjet(ObjetID)
		  
		  // Gestion hypothetique des valeurs null
		  if   ObjetID   = chr(0) then  ObjetID   = ""
		  if   ModeAcces = chr(0) then  ModeAcces = ""
		  if   Blocage   = chr(0) then  Blocage   = ""
		  
		  Select case ModeAcces
		  Case "W"
		    ModeAccesLib="Ecriture"
		  Case "R"
		    ModeAccesLib="Lecture seule"
		  Case "N"
		    ModeAccesLib="Interdit"
		  Case else
		    ModeAccesLib="Indefini"
		  end Select
		  
		  
		  
		  
		  
		  
		  Exception err as NilObjectException
		    
		    exit sub
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RechComentObjet(ObjetIdentif as string) As String
		  Dim OrdreSql as string
		  Dim rs as RecordSet
		  Dim Nom as String
		  
		  OrdreSql = "  SELECT COMMENTAIRES FROM OBJET WHERE OBJETID= '" + ObjetIdentif+"'"
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    Nom = rs.Field("COMMENTAIRES").Value
		  end if
		  
		  return Nom
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RechNomGroupe(Numero as int64 = - 1) As String
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
		Blocage As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Categorie As Int64 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		CommentairesObjet As String
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
		ModeAcces As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ModeAccesLib As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NomGroup As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NumGroup As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		ObjetID As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Blocage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CommentairesObjet"
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
			Name="ModeAcces"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ModeAccesLib"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="NomGroup"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ObjetID"
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
			Name="Categorie"
			Visible=false
			Group="Behavior"
			InitialValue="0"
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
