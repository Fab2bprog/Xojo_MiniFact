#tag Class
Protected Class Class_AccesObjet
	#tag Method, Flags = &h0
		Function Interoge_Acces(Objet_AccesID as string, BesoinAcces as string, SilentMode as Boolean = true) As Boolean
		  Dim RepAcces as String
		  Dim RepUser as Integer
		  Dim Reponse as Boolean
		  
		  Reponse  = False
		  
		  RepAcces = Verif_Acces(Objet_AccesID)
		  
		  if RepAcces = "R" And BesoinAcces = "W" then
		    Reponse = false
		  end if
		  
		  if RepAcces = "W" And BesoinAcces = "R" then
		    Reponse = true
		  end if
		  
		  if RepAcces = "W" And BesoinAcces = "W" then
		    Reponse = true
		  end if
		  
		  if RepAcces = "R" And BesoinAcces = "R" then
		    Reponse = true
		  end if
		  
		  if Reponse = False and SilentMode=False then
		    RepUser= MsgBox(" Vous n'avez pas les permissions necessaires pour realiser cette action ",48,"Rejet acces sur objet :"+Objet_AccesID)
		  end if
		  
		  
		  
		  return Reponse
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Verif_Acces(Objet_AccesID as string, SilentMode as Boolean = true) As String
		  Dim VerifGroupWin as Class_ObjGroupWin
		  Dim RepUser as Integer
		  
		  ModeAcces ="N"
		  Blocage   ="N"
		  LibModeAcces="Aucun"
		  
		  // On blinde l'utilisateur Administrateur et son groupe pour qu'ils aient acces à tout
		  if  App.MyLogUserInfo.Numero    = 1 or App.MyLogUserInfo.NumGroupe = 1 then
		    Blocage      = "O"
		    ModeAcces    = "W"
		    LibModeAcces = "Lecture / Ecriture et Blocage d'enregistrement"
		    return ModeAcces
		  end if
		  
		  // S'il s'agit d'un autre type d'utilisateur alors on verifie
		  VerifGroupWin = new Class_ObjGroupWin
		  VerifGroupWin.DBaseID=App.MainDB
		  VerifGroupWin.DBaseSource="SELECT * FROM OBJETGROUP WHERE OBJETID='"+Objet_AccesID+"' AND NUMGROUP="+str(App.MyLogUserInfo.NumGroupe)
		  
		  
		  if not VerifGroupWin.DBaseReqSrc_Exec then
		    RepUser= MsgBox(" Erreur dans la requete d'acces ",48,"Rejet acces")
		    return "N"
		  end if
		  
		  if not VerifGroupWin.Charge_Premier  then
		    if SilentMode=false then
		      RepUser= MsgBox(" Vous n'avez pas les permissions necessaires pour realiser cette action ",48,"Rejet acces sur objet :"+Objet_AccesID)
		    end if
		    return "N"
		  end if
		  
		  ModeAcces = VerifGroupWin.ModeAcces
		  Blocage   = VerifGroupWin.Blocage
		  
		  select case ModeAcces
		  Case "W"
		    If Blocage="O" then
		      LibModeAcces="Lecture / Ecriture et Blocage d'enregistrement"
		    else
		      LibModeAcces="Lecture / Ecriture (sauf exception blocage d'enregistrement)"
		    end if
		  Case "R"
		    LibModeAcces="Lecture uniquement"
		  Case else
		    LibModeAcces="Aucun !"
		  end select
		  
		  
		  return ModeAcces
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Blocage As String
	#tag EndProperty

	#tag Property, Flags = &h0
		LibModeAcces As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ModeAcces As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Blocage"
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
			Name="LibModeAcces"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
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
	#tag EndViewBehavior
End Class
#tag EndClass
