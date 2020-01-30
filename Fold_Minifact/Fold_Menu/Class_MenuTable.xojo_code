#tag Class
Protected Class Class_MenuTable
	#tag Method, Flags = &h0
		Sub Add_All()
		  Add_Fournisseur
		  Add_Article
		  Add_Depot
		  Add_Nomenclature
		  Add_Caracteristique
		  Add_TVA
		  Add_UnitMesure
		  Add_Securite
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Article()
		  Ite_Article       = New MenuItem
		  Ite_Article.text  = "Articles"
		  Ite_Article.Name  = "Ite_Article"
		  Ite_Article.Enable
		  Node_Root.Append Ite_Article
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Caracteristique()
		  Ite_CaractArticle         = New MenuItem
		  Ite_CaractArticle.text    = "Caracteristiques articles"
		  Ite_CaractArticle.Name    = "Ite_CaractArticle"
		  Ite_CaractArticle.Enable
		  Node_Root.Append Ite_CaractArticle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Client()
		  Ite_Client         = New MenuItem
		  Ite_Client.text    = "Clients"
		  Ite_Client.Name    = "Ite_Client"
		  Ite_Client.Enable
		  Node_Root.Append Ite_Client
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_CodePostal()
		  Ite_CodePostal          = New MenuItem
		  Ite_CodePostal.text     = "Frais livraisons par code postal"
		  Ite_CodePostal.Name     = "Ite_CodePostal"
		  Ite_CodePostal.Enable
		  Node_Root.Append Ite_CodePostal
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Depot()
		  Ite_Article       = New MenuItem
		  Ite_Article.text  = "Depots"
		  Ite_Article.Name  = "Ite_Depot"
		  Ite_Article.Enable
		  Node_Root.Append Ite_Article
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Fournisseur()
		  Ite_Fournisseur         = New MenuItem
		  Ite_Fournisseur.text    = "Fournisseurs"
		  Ite_Fournisseur.Name    = "Ite_Fournisseur"
		  Ite_Fournisseur.Enable
		  Node_Root.Append Ite_Fournisseur
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Nomenclature()
		  Ite_Nomenclature            = New MenuItem
		  Ite_Nomenclature.text       = "Nomenclature articles"
		  Ite_Nomenclature.Name       = "Ite_Nomenclature"
		  Ite_Nomenclature.Enable
		  Node_Root.Append Ite_Nomenclature
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Securite()
		  Node_Securite               = New MenuItem
		  Node_Securite.text          = "Securite"
		  Node_Securite.Name          = "NomenclSoMenu"
		  Node_Securite.Enable
		  Node_Root.Append Node_Securite
		  
		  Ite_SecurObjet              = New MenuItem
		  Ite_SecurObjet.text         = "Fonctionalites"
		  Ite_SecurObjet.Name         = "Ite_SecurObjet"
		  Ite_SecurObjet.Enable
		  Node_Securite.Append Ite_SecurObjet
		  
		  Ite_SecurGroup              = New MenuItem
		  Ite_SecurGroup.text         = "Groupes utilisateurs"
		  Ite_SecurGroup.Name         = "Ite_SecurGroup"
		  Ite_SecurGroup.Enable
		  Node_Securite.Append Ite_SecurGroup
		  
		  Ite_SecurUser               = New MenuItem
		  Ite_SecurUser.text          = "Utilisateurs"
		  Ite_SecurUser.Name          = "Ite_SecurUser"
		  Ite_SecurUser.Enable
		  Node_Securite.Append Ite_SecurUser
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_TVA()
		  Ite_TVA                 = New MenuItem
		  Ite_TVA.text            = "TVA"
		  Ite_TVA.Name            = "Ite_TVA"
		  Ite_TVA.Enable
		  Node_Root.Append Ite_TVA
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_UnitMesure()
		  Ite_UnitMesure          = New MenuItem
		  Ite_UnitMesure.text     = "Unites de mesure"
		  Ite_UnitMesure.Name     = "Ite_UnitMesure"
		  Ite_UnitMesure.Enable
		  Node_Root.Append Ite_UnitMesure
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Ite_Article As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_CaractArticle As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_Client As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_CodePostal As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_Depot As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_Fournisseur As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_Nomenclature As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_SecurGroup As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_SecurObjet As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_SecurUser As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_TVA As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_UnitMesure As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Node_Action As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Node_Root As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Node_Securite As MenuItem
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
