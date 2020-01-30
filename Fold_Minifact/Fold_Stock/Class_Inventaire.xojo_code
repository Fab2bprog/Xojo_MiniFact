#tag Class
Protected Class Class_Inventaire
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
		Sub DBase_Create(NumDepot as Integer, NumArt as integer, NumMouv as Integer)
		  Dim MaxNumMouv as int64
		  Dim OrdreSql   as string
		  
		  DBaseRSTemp = DBaseID.SQLSelect("SELECT IFNULL(MAX(NUMMOUV)+1,1) AS MAXNUM FROM "+TableStockMouv+" WHERE NUMDEPOT="+str(numDepot)+" AND NumArt="+str(NumArt))
		  
		  if  not (DBaseRSTemp=NIL) then
		    DBaseRSTemp.MoveFirst
		    MaxNumMouv         = DBaseRSTemp.Field("MAXNUM").Value
		  else
		    MaxNumMouv         = 1
		  end if
		  
		  OrdreSql="    INSERT INTO [TABLEMOUV](NUMDEPOT  ,   "+_
		  "                                  NUMART    ,   "+_
		  "                                  NUMMOUV   ,   "+_
		  "                                  STOCKQTE  ,   "+_
		  "                                  TYPEMOUV  ,   "+_
		  "                                  BLOCAGE       "+_
		  "                                  )             "+_
		  "                            VALUES (            "+_
		  "                            [NUMDEPOT]      ,   "+_
		  "                            [NUMART]        ,   "+_
		  "                            [NUMMOUV]       ,   "+_
		  "                            [STOCKQTE]      ,   "+_
		  "                            '[TYPEMOUV]'        "+_
		  "                            )                   "
		  
		  OrdreSql = ReplaceAll( OrdreSql , "[TABLEMOUV]"  , TableStockMouv  )
		  OrdreSql = ReplaceAll( OrdreSql , "[NUMDEPOT]"   , str(NumDepot)   )
		  OrdreSql = ReplaceAll( OrdreSql , "[NUMART]"     , str(NumArt)     )
		  OrdreSql = ReplaceAll( OrdreSql , "[NUMMOUV]"    , str(MaxNumMouv) )
		  OrdreSql = ReplaceAll( OrdreSql , "[STOCKQTE]"   , str(StockQte)   )
		  OrdreSql = ReplaceAll( OrdreSql , "[TYPEMOUV]"   , str(TypeMouv)   )
		  
		  
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		  Else
		    DBaseID.SQLExecute ("Commit")
		  end if
		  
		  
		  NumMouv = MaxNumMouv
		  
		  
		  
		  
		  
		  
		  
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
		  
		  OrdreSql = (" DELETE FROM "+TableStockMouv+" WHERE NUMDEPOT="+str(numDepot)+" AND NUMART="+str(NumArt) + " AND TYPEMOUV = '"+TypeMouv+"'")
		  
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
		  NumDepot            =  0
		  NumArt              =  0
		  Nom                 =  ""
		  StockQte            =  0
		  TypeMouv            =  ""
		  Blocage             =  "N"
		  RsxUser             =  0
		  RsxEtat             =  ""
		  RsxInfo             =  ""
		  RsxDate             =  ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MajPropriete()
		  
		  NumDepot            =  DBaseRS.Field("NUMDEPOT").Int64Value
		  NumArt              =  DBaseRS.Field("NUMART").Int64Value
		  Nom                 =  DBaseRS.Field("NOM").StringValue
		  StockQte            =  DBaseRS.Field("STOCKQTE").DoubleValue
		  TypeMouv            =  DBaseRS.Field("TYPEMOUV").StringValue
		  Blocage             =  DBaseRS.Field("BLOCAGE").StringValue
		  RsxUser             =  DBaseRS.Field("RSXUSER").Int64Value
		  RsxEtat             =  DBaseRS.Field("RSXETAT").StringValue
		  RsxInfo             =  DBaseRS.Field("RSXINFO").StringValue
		  RsxDate             =  DBaseRS.Field("RSXDATE").StringValue
		  
		  
		  // Gestion hypothetique des valeurs null
		  if    str(NumDepot)       =chr(0) then  NumDepot                  =   0
		  if    str(NumArt)         =chr(0) then  NumArt                    =   0
		  if    Nom                 =chr(0) then  Nom                       =   ""
		  if    str(StockQte)       =chr(0) then  StockQte                  =   0
		  if    TypeMouv            =chr(0) then  TypeMouv                  =   ""
		  if    Blocage             =chr(0) then  Blocage                   =   "N"
		  if    str(RsxUser)        =chr(0) then  RsxUser                   =   0
		  if    RsxEtat             =chr(0) then  RsxEtat                   =   ""
		  if    RsxInfo             =chr(0) then  RsxInfo                   =   ""
		  if    RsxDate             =chr(0) then  RsxDate                   =   ""
		  
		  
		  
		  
		  Exception err as NilObjectException
		    
		    exit sub
		    
		    
		    
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BLOCAGE As String = "N"
	#tag EndProperty

	#tag Property, Flags = &h0
		ConditionsSource As String
	#tag EndProperty

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
		Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NumArt As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NumDepot As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		RsxDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RsxEtat As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RsxInfo As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RsxUser As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		StockQte As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		TableStockMouv As String = """STOCKMOUV"""
	#tag EndProperty

	#tag Property, Flags = &h0
		TypeMouv As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BLOCAGE"
			Visible=false
			Group="Behavior"
			InitialValue="N"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConditionsSource"
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
			Name="RsxDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RsxEtat"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RsxInfo"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StockQte"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
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
			Name="TableStockMouv"
			Visible=false
			Group="Behavior"
			InitialValue="""""STOCKMOUV"""""
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
			Name="TypeMouv"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumArt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumDepot"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RsxUser"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
