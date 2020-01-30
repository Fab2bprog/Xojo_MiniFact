#tag Class
Protected Class Class_ViewStock
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
		  Dim OrdreSql as string
		  
		  Init_Champs
		  
		  OrdreSql = "DROP TABLE IF EXISTS TEMP_VIEWSTOCK "
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  
		  
		  OrdreSql = " CREATE TEMPORARY TABLE TEMP_VIEWSTOCK(       "  + _
		  " NUMDEPOT               BIGINT           ,    "  + _
		  " NUMART                 BIGINT NOT NULL  ,    "  + _
		  " NOM                    VARCHAR(50)      ,    "  + _
		  " NCLPARENT              BIGINT           ,    "  + _
		  " NCLNIVEAU              BIGINT           ,    "  + _
		  " NCLNUMERO              BIGINT           ,    "  + _
		  " NCLNOM                 VARCHAR(50)      ,    "  + _
		  " ACTIF                  VARCHAR(1)       ,    "  + _
		  " STOCKGEST              VARCHAR(1)       ,    "  + _
		  " STOCKQTE               DECIMAL(10,5)    ,    "  + _
		  " STOCKALERTMINGEST      VARCHAR(1)       ,    "  + _
		  " STOCKALERTMIN          DECIMAL(10,5)    ,    "  + _
		  " STOCKALERTMAXGEST      VARCHAR(1)       ,    "  + _
		  " STOCKALERTMAX          DECIMAL(10,5)    ,    "  + _
		  " BLOCAGE                VARCHAR          ,    "  + _
		  " RSXUSER                BIGINT           ,    "  + _
		  " RSXETAT                VARCHAR(5)       ,    "  + _
		  " RSXINFO                VARCHAR(15)      ,    "  + _
		  " RSXDATE                VARCHAR(15)      ,    "  + _
		  " PRIMARY KEY (NUMDEPOT,NUMART ASC)            "  + _
		  " )                                            "
		  
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Create_ViewStock()
		  Dim OrdreSql as string
		  Dim OrdreSql1 as string
		  Dim OrdreSql2 as string
		  Dim ChampNomencl   as String
		  Dim EnfantNomencl as Class_EnfantNomencl
		  
		  
		  Dim niv as integer
		  
		  EnfantNomencl = new Class_EnfantNomencl
		  EnfantNomencl.Filtre_Enfant(Filtre_NclCibleCode,Filtre_NclCibleNiveau)
		  
		  
		  OrdreSql = "DELETE FROM TEMP_VIEWSTOCK"
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  OrdreSql = "  INSERT OR REPLACE INTO TEMP_VIEWSTOCK(             " + _
		  "                                      NUMDEPOT              , " + _
		  "                                      NUMART                , " + _
		  "                                      NOM                   , " + _
		  "                                      NCLPARENT             , " + _
		  "                                      NCLNIVEAU             , " + _
		  "                                      NCLNOM                , " + _
		  "                                      ACTIF                 , " + _
		  "                                      STOCKGEST             , " + _
		  "                                      STOCKQTE              , " + _
		  "                                      STOCKALERTMINGEST     , " + _
		  "                                      STOCKALERTMIN         , " + _
		  "                                      STOCKALERTMAXGEST     , " + _
		  "                                      STOCKALERTMAX         , " + _
		  "                                      BLOCAGE                 " + _
		  "                                      )                       " + _
		  "                                                              " + _
		  "       SELECT  NUMDEPOT               ,                       " + _
		  "               NUMART                 ,                       " + _
		  "               VIEW_STOCKARTICLE.NOM                    ,                       " + _
		  "               VIEW_STOCKARTICLE.NCLPARENT              ,                       " + _
		  "               VIEW_STOCKARTICLE.NCLNIVEAU              ,                       " + _
		  "               TEMP_NOMENCL.NOM       ,                       " + _
		  "               ACTIF                  ,                       " + _
		  "               STOCKGEST              ,                       " + _
		  "               STOCKQTE               ,                       " + _
		  "               STOCKALERTMINGEST      ,                       " + _
		  "               STOCKALERTMIN          ,                       " + _
		  "               STOCKALERTMAXGEST      ,                       " + _
		  "               STOCKALERTMAX          ,                       " + _
		  "               VIEW_STOCKARTICLE.BLOCAGE                                        " + _
		  "               FROM VIEW_STOCKARTICLE,TEMP_NOMENCL            " + _
		  "       WHERE   VIEW_STOCKARTICLE.NCLPARENT  = TEMP_NOMENCL.NUMERO " + _
		  "           AND VIEW_STOCKARTICLE.NCLNIVEAU  = TEMP_NOMENCL.NIVEAU " + _
		  "           ORDER BY NUMDEPOT,NUMART                               "
		  
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		  
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
		Sub Init_Champs()
		  NumDepot            =  0
		  NumArt              =  0
		  Nom                 =  ""
		  NclParent           =  0
		  NclNiveau           =  0
		  Actif               =  "O"
		  StockGest           =  "N"
		  StockQte               =  0
		  StockAlertMinGest   =  "N"
		  StockAlertMin       =  0
		  StockAlertMaxGest   =  "N"
		  StockAlertMax       =  0
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
		  NclParent           =  DBaseRS.Field("NCLPARENT").Int64Value
		  NclNiveau           =  DBaseRS.Field("NCLNIVEAU").Int64Value
		  Actif               =  DBaseRS.Field("ACTIF").StringValue
		  StockGest           =  DBaseRS.Field("STOCKGEST").StringValue
		  StockQte            =  DBaseRS.Field("STOCKQTE").DoubleValue
		  StockAlertMinGest   =  DBaseRS.Field("STOCKALERTMINGEST").StringValue
		  StockAlertMin       =  DBaseRS.Field("STOCKALERTMIN").DoubleValue
		  StockAlertMaxGest   =  DBaseRS.Field("STOCKALERTMAXGEST").StringValue
		  StockAlertMax       =  DBaseRS.Field("STOCKALERTMAX").DoubleValue
		  Blocage             =  DBaseRS.Field("BLOCAGE").StringValue
		  RsxUser             =  DBaseRS.Field("RSXUSER").Int64Value
		  RsxEtat             =  DBaseRS.Field("RSXETAT").StringValue
		  RsxInfo             =  DBaseRS.Field("RSXINFO").StringValue
		  RsxDate             =  DBaseRS.Field("RSXDATE").StringValue
		  
		  
		  // Gestion hypothetique des valeurs null
		  if    str(NumDepot)       =chr(0) then  NumDepot                  =   0
		  if    str(NumArt)         =chr(0) then  NumArt                    =   0
		  if    Nom                 =chr(0) then  Nom                       =   ""
		  if    str(NclParent)      =chr(0) then  NclParent                 =   0
		  if    str(NclNiveau)      =chr(0) then  NclNiveau                 =   0
		  if    Actif               =chr(0) then  Actif                     =   "O"
		  if    StockGest           =chr(0) then  StockGest                 =   "N"
		  if    str(StockQte)       =chr(0) then  StockQte                  =   0
		  if    StockAlertMinGest   =chr(0) then  StockAlertMinGest         =   "N"
		  if    str(StockAlertMin)  =chr(0) then  StockAlertMin             =   0
		  if    StockAlertMaxGest   =chr(0) then  StockAlertMaxGest         =   "N"
		  if    str(StockAlertMax)  =chr(0) then  StockAlertMax             =   0
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
		Actif As String
	#tag EndProperty

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
		DBaseSource As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Filtre_NclCibleCode As Int64 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Filtre_NclCibleNiveau As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NclEnsembleArt_Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NclEnsembleArt_Numero As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NclFamilleArt_Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NclFamilleArt_Numero As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NclGroupeArt_Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NclGroupeArt_Numero As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NclNiveau As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NclParent As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NclSousFamilleArt_Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NclSousFamilleArt_Numero As Int64
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
		StockAlertMax As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		StockAlertMaxGest As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StockAlertMin As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		StockAlertMinGest As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StockGest As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StockQte As Double
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Actif"
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
			Name="NclEnsembleArt_Nom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NclFamilleArt_Nom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NclGroupeArt_Nom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NclSousFamilleArt_Nom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="StockAlertMax"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StockAlertMaxGest"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StockAlertMin"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StockAlertMinGest"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StockGest"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Filtre_NclCibleCode"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Filtre_NclCibleNiveau"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NclEnsembleArt_Numero"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NclFamilleArt_Numero"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NclGroupeArt_Numero"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NclNiveau"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NclParent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NclSousFamilleArt_Numero"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
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
