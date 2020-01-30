#tag Class
Protected Class Class_Taxeva
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

	#tag Method, Flags = &h21
		Private Sub Complete_Libelle()
		  Dim TypeTVA as Class_TvaType
		  Dim RepUser as Integer
		  
		  TypeTVA = new  Class_TvaType
		  TypeTVA.DBaseID     = App.MainDB
		  TypeTVA.NomTable    = "TVACOLCT"
		  TypeTVA.DBaseSource = "SELECT * FROM "+TypeTVA.NomTable+" WHERE NUMERO="+str(TvaColct)
		  if TypeTVA.DBaseReqSrc_Exec then
		    if TypeTVA.Charge_Premier then
		      Lab_TvaColct= TypeTVA.Nom
		    end if
		  end if
		  
		  TypeTVA.NomTable    = "TVADEDUC"
		  TypeTVA.DBaseSource = "SELECT * FROM "+TypeTVA.NomTable+" WHERE NUMERO="+str(TvaDeduc)
		  if TypeTVA.DBaseReqSrc_Exec then
		    if TypeTVA.Charge_Premier then
		      Lab_TvaDeduc= TypeTVA.Nom
		    end if
		  end if
		  
		  
		  
		  TypeTVA.NomTable    = "TVAIMMOS"
		  TypeTVA.DBaseSource = "SELECT * FROM "+TypeTVA.NomTable+" WHERE NUMERO="+str(TvaImmos)
		  if TypeTVA.DBaseReqSrc_Exec then
		    if TypeTVA.Charge_Premier then
		      Lab_TvaImmos= TypeTVA.Nom
		    end if
		  end if
		  
		  
		  TypeTVA.NomTable    = "TVANATURE"
		  TypeTVA.DBaseSource = "SELECT * FROM "+TypeTVA.NomTable+" WHERE NUMERO="+str(TvaNature)
		  if TypeTVA.DBaseReqSrc_Exec then
		    if TypeTVA.Charge_Premier then
		      Lab_TvaNature= TypeTVA.Nom
		    end if
		  end if
		  
		  Exception err as NilObjectException
		    RepUser = MsgBox ("Probleme détecté dans les libelles poste TVA"+EndOfLine+DBaseSource,48,"Erreur execution requete sql")
		    exit Sub
		    
		    
		    
		    
		    
		    
		    
		    
		    
		End Sub
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
		Sub DBase_Create()
		  Dim MaxTaxeva  as int64
		  Dim OrdreSql   as string
		  Dim RepUser    as integer
		  Dim rs         as RecordSet
		  
		  rs = DBaseID.SQLSelect("SELECT IFNULL(MAX(NUMERO)+1,1) AS MAXNUM FROM TVADESC ")
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    MaxTaxeva        = rs.Field("MAXNUM").Value
		  else
		    MaxTaxeva        = 1
		  end if
		  
		  OrdreSql=" INSERT INTO    TVADESC(NUMERO)     VALUES ([NUMERO])    "
		  OrdreSql=ReplaceAll(OrdreSql, "[NUMERO]"          ,str(MaxTaxeva)     )
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		    exit sub
		  Else
		    DBaseID.SQLExecute ("Commit")
		    Numero=MaxTaxeva
		  end if
		  
		  rs=DBaseID.SQLSelect("SELECT * FROM TVADESC WHERE NUMERO ="+str(MaxTaxeva))
		  rs.MoveFirst
		  
		  if  not (rs=NIL) then
		    rs.Edit
		    
		    rs.Field("NUMERO").Value    = Numero
		    rs.Field("TAUX").Value      = Taux
		    rs.Field("NOM").Value       = Nom
		    rs.Field("DATEDEB").Value   = Datedeb
		    rs.Field("DATEFIN").Value   = Datefin
		    rs.Field("TVACOLCT").Value  = Tvacolct
		    rs.Field("TVADEDUC").Value  = Tvadeduc
		    rs.Field("TVAIMMOS").Value  = Tvaimmos
		    rs.Field("TVANATURE").Value = TvaNature
		    rs.Field("BLOCAGE").Value   = Blocage
		    
		    rs.Update
		    
		    If DBaseID.error then
		      MsgBox DBaseID.errormessage
		      exit sub
		    Else
		      DBaseID.SQLExecute ("Commit")
		    end if
		    
		  end if
		  
		  
		  
		  
		  Exception err as NilObjectException
		    RepUser = MsgBox ("Echec de la création de la TVA "+EndOfLine+DBaseSource,48,"Erreur execution requete sql")
		    
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Delete()
		  DBaseRS.DeleteRecord
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DBase_MajRecordset()
		  
		  DBaseRS.Field("NUMERO").Int64Value    = Numero
		  DBaseRS.Field("TAUX").DoubleValue     = Taux
		  DBaseRS.Field("NOM").StringValue      = Nom
		  DBaseRS.Field("DATEDEB").DateValue    = Datedeb
		  DBaseRS.Field("DATEFIN").DateValue    = Datefin
		  DBaseRS.Field("TVACOLCT").Int64Value  = Tvacolct
		  DBaseRS.Field("TVADEDUC").Int64Value  = Tvadeduc
		  DBaseRS.Field("TVAIMMOS").Int64Value  = Tvaimmos
		  DBaseRS.Field("TVANATURE").Int64Value = Tvanature
		  DBaseRS.Field("BLOCAGE").StringValue  = Blocage
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Update()
		  Dim OrdreSql as String
		  
		  DBaseRS.Edit
		  DBase_MajRecordset
		  DBaseRS.Update
		  DBaseID.Commit
		  
		  
		  OrdreSql="UPDATE VARACHAT SET  PRIXACHATTTC = PRIXACHATHT * (1+("+str(Taux)+"/100)) WHERE NUMTVA="+str(Numero)
		  if not app.RequeteSql(OrdreSql) then
		  end if
		  
		  OrdreSql="UPDATE VARVENTE SET  PRIXVENTETTC = PRIXVENTEHT * (1+("+str(Taux)+"/100)) WHERE NUMTVA="+str(Numero)
		  if not app.RequeteSql(OrdreSql) then
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init_Champs()
		  Dim date1 as new date
		  Dim date2 as new date
		  
		  date1.Day=01
		  date1.Month=01
		  date1.Year=2000
		  
		  date2.Day=31
		  date2.Month=12
		  date2.Year=9999
		  
		  Numero    = 0
		  Taux      = 0
		  Nom       = ""
		  Datedeb   = date1
		  Datefin   = date2
		  Tvacolct  = 0
		  Tvadeduc  = 0
		  Tvaimmos  = 0
		  Tvanature  = 0
		  Blocage   = "N"
		  
		  Lab_TvaColct=""
		  Lab_TvaDeduc=""
		  Lab_TvaImmos=""
		  Lab_TvaNature=""
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MajPropriete()
		  
		  Dim date1 as new date
		  Dim date2 as new date
		  
		  date1.Day=01
		  date1.Month=01
		  date1.Year=2000
		  
		  date2.Day=31
		  date2.Month=12
		  date2.Year=9999
		  
		  Numero    = DBaseRS.Field("NUMERO").Int64Value
		  Taux      = DBaseRS.Field("TAUX").DoubleValue
		  Nom       = DBaseRS.Field("NOM").StringValue
		  Datedeb   = DBaseRS.Field("DATEDEB").DateValue
		  Datefin   = DBaseRS.Field("DATEFIN").DateValue
		  Tvacolct  = DBaseRS.Field("TVACOLCT").Int64Value
		  Tvadeduc  = DBaseRS.Field("TVADEDUC").Int64Value
		  Tvaimmos  = DBaseRS.Field("TVAIMMOS").Int64Value
		  Tvanature = DBaseRS.Field("TVANATURE").Int64Value
		  Blocage   = DBaseRS.Field("BLOCAGE").StringValue
		  
		  // Gestion hypothetique des valeurs null
		  
		  if str(Numero)    = chr(0) then   Numero    = 0
		  if str(Taux)      = chr(0) then   Taux      = 0
		  if Nom            = chr(0) then   Nom       = ""
		  if str(Datedeb)   = chr(0) then   Datedeb   = date1
		  if str(Datefin)   = chr(0) then   Datefin   = date2
		  if str(Tvacolct)  = chr(0) then   Tvacolct  = 0
		  if str(Tvadeduc)  = chr(0) then   Tvadeduc  = 0
		  if str(Tvaimmos)  = chr(0) then   Tvaimmos  = 0
		  if str(Tvanature) = chr(0) then   Tvanature = 0
		  if Blocage        = chr(0) then   Blocage   = "N"
		  
		  // Recherche des libelles correspondant aux postes et à la nature des tva
		  
		  Complete_Libelle
		  
		  
		  
		  
		  
		  Exception err as NilObjectException
		    
		    exit sub
		    
		    
		    
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BLOCAGE As String = "N"
	#tag EndProperty

	#tag Property, Flags = &h0
		DateDeb As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		DateFin As Date
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
		Lab_TvaColct As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Lab_TvaDeduc As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Lab_TvaImmos As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Lab_TvaNature As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Numero As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Taux As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		TvaColct As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		TvaDeduc As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		TvaImmos As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		TvaNature As Int64
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
			Name="Lab_TvaColct"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Lab_TvaDeduc"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Lab_TvaImmos"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Lab_TvaNature"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Taux"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
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
			Name="Numero"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TvaColct"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TvaDeduc"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TvaImmos"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TvaNature"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
