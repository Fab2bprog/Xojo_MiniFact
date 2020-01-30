#tag Class
Protected Class Class_MenuDocuments
	#tag Method, Flags = &h0
		Sub Add_All()
		  Add_Facture
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Facture()
		  Ite_FactureLst       = New MenuItem
		  Ite_FactureLst.text  = "Liste Facture "
		  Ite_FactureLst.Name  = "Ite_FactureLst"
		  Ite_FactureLst.Enable
		  Node_Root.Append Ite_FactureLst
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Ite_FactureLst As MenuItem
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
