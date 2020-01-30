#tag Class
Protected Class Class_MenuStock
	#tag Method, Flags = &h0
		Sub Add_All()
		  Add_BordRecep
		  Add_Stock
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_BordRecep()
		  Ite_BordRecepLst       = New MenuItem
		  Ite_BordRecepLst.text  = "Bordereaux Reception"
		  Ite_BordRecepLst.Name  = "Ite_BordRecepLst"
		  Ite_BordRecepLst.Enable
		  Node_Root.Append Ite_BordRecepLst
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_Stock()
		  Ite_Stock       = New MenuItem
		  Ite_Stock.text  = "Stocks"
		  Ite_Stock.Name  = "Ite_Stock"
		  Ite_Stock.Enable
		  Node_Root.Append Ite_Stock
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Ite_BordRecepLst As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_Stock As MenuItem
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
