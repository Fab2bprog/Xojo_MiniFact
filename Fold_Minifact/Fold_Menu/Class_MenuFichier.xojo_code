#tag Class
Protected Class Class_MenuFichier
	#tag Method, Flags = &h0
		Sub Add_All()
		  Add_Nouveau
		  Add_Ouvrir
		  Add_Fermer
		  Add_Separateur
		  Add_Quitter
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Fermer()
		  Ite_CloseBase          = New MenuItem
		  Ite_CloseBase.text     = "Fermer fichier"
		  Ite_CloseBase.Name     = "Ite_CloseBase"
		  Ite_CloseBase.Enable
		  Node_Root.Append Ite_CloseBase
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Nouveau()
		  Ite_NewBase       = New MenuItem
		  Ite_NewBase.text  = "Nouveau fichier"
		  Ite_NewBase.Name  = "Ite_NewBase"
		  Ite_NewBase.Enable
		  Node_Root.Append Ite_NewBase
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Ouvrir()
		  Ite_OpenBase            = New MenuItem
		  Ite_OpenBase.text       = "Ouvrir fichier"
		  Ite_OpenBase.Name       = "Ite_OpenBase"
		  Ite_OpenBase.Enable
		  Node_Root.Append Ite_OpenBase
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Quitter()
		  Ite_FileQuit         = New QuitMenuItem
		  Ite_FileQuit.Text= "Quitter"
		  Node_Root.Append Ite_FileQuit
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Separateur()
		  Dim Ite_MenuSepare  as MenuItem
		  
		  Ite_MenuSepare              = New MenuItem
		  Ite_MenuSepare.text       = "-"
		  Ite_MenuSepare.Name       = "Ite_MenuSepare"
		  Node_Root.Append Ite_MenuSepare
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Ite_CloseBase As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_FileQuit As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_NewBase As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_OpenBase As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Node_Root As MenuItem
	#tag EndProperty


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
