#tag Class
Protected Class Class_Service
	#tag Method, Flags = &h0
		Function Serv_RetourneChamp(ChampReponse as string, Table as string, ChampCondition as string, ValeurCondition as variant) As String
		  Dim OrdreSql as string
		  Dim rs as RecordSet
		  Dim Nom as String
		  
		  if IsNumeric(ValeurCondition) then
		    OrdreSql = "  SELECT "+str(ChampReponse)+" FROM "+str(Table)+" WHERE "+str(ChampCondition)+" =  " + str(ValeurCondition)
		  else
		    OrdreSql = "  SELECT "+str(ChampReponse)+" FROM "+str(Table)+" WHERE "+str(ChampCondition)+" = '" + str(ValeurCondition)+"'"
		  end if
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    Nom = rs.Field(ChampReponse).StringValue
		  end if
		  
		  return Nom
		  
		  
		End Function
	#tag EndMethod


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
