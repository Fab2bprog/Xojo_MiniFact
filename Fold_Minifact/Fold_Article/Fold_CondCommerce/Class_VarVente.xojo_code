#tag Class
Protected Class Class_VarVente
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
		Sub DBase_Create()
		  Dim MaxNumero  as int64
		  Dim OrdreSql   as string
		  Dim RepUser    as integer
		  Dim rs         as RecordSet
		  
		  rs = DBaseID.SQLSelect("SELECT IFNULL(MAX(NUMERO)+1,1) AS MAXNUM FROM "+Table+" WHERE NUMART="+str(NumArt))
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    MaxNumero        = rs.Field("MAXNUM").Value
		  else
		    MaxNumero        = 1
		  end if
		  
		  OrdreSql=" INSERT OR IGNORE INTO "+Table+"(NUMERO,NUMART) VALUES ([NUMERO],[NUMART]) "
		  OrdreSql= ReplaceAll(OrdreSql, "[NUMERO]"      , str(MaxNumero)     )
		  OrdreSql= ReplaceAll(OrdreSql, "[NUMART]"      , str(NumArt)  )
		  DBaseID.SQLexecute(OrdreSql)
		  
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		    exit sub
		  Else
		    DBaseID.SQLExecute ("Commit")
		    Numero=MaxNumero
		  end if
		  
		  rs=DBaseID.SQLSelect("SELECT * FROM "+Table+" WHERE NUMERO ="+str(MaxNumero)+" AND NUMART="+str(NumArt) )
		  rs.MoveFirst
		  
		  if  not (rs=NIL) then
		    rs.Edit
		    
		    rs.Field("NUMERO"      ).Int64Value     = Numero
		    rs.Field("NUMART"      ).Int64Value     = NumArt
		    rs.Field("UNITVENTE"   ).Int64Value     = UnitVente
		    rs.Field("CONDIT"      ).DoubleValue    = Condit
		    rs.Field("NUMTVA"      ).Int64Value     = NumTva
		    rs.Field("PRIXVENTEHT" ).DoubleValue    = PrixVenteHT
		    rs.Field("PRIXVENTETTC").DoubleValue    = PrixVenteTTC
		    rs.Field("DATEDEB"     ).DateValue      = DateDeb
		    rs.Field("DATEFIN"     ).DateValue      = DateFin
		    rs.Field("PROMO"       ).StringValue    = Promo
		    rs.Field("OBSOLETE"    ).StringValue    = Obsolete
		    rs.Field("COMMENTAIRES").StringValue    = Commentaires
		    rs.Field("BLOCAGE"     ).StringValue    = BLOCAGE
		    
		    rs.Update
		    
		    If DBaseID.error then
		      MsgBox DBaseID.errormessage
		      exit sub
		    Else
		      DBaseID.SQLExecute ("Commit")
		    end if
		    
		  end if
		  
		  
		  
		  
		  Exception err as NilObjectException
		    RepUser = MsgBox ("Echec de la création de la condition d'Vente "+EndOfLine+DBaseSource,48,"Erreur execution requete sql")
		    
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Delete(LocVarVente as Int64 = - 1, LocNumArt as Int64 = - 1)
		  Dim OrdreSql as String
		  
		  if LocVarVente = -1 OR LocNumArt=-1 then
		    DBaseRS.DeleteRecord
		    DBaseID.Commit
		    exit sub
		  end if
		  
		  OrdreSql = " DELETE FROM "+Table+" WHERE NUMERO  =" + str(LocVarVente )+ " AND NUMART="+str(LocNumArt)
		  
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		  Else
		    DBaseID.SQLExecute ("Commit")
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DBase_MajRecordset()
		  
		  DBaseRS.Field("NUMERO"      ).Int64Value     = Numero
		  DBaseRS.Field("NUMART"      ).Int64Value     = NumArt
		  DBaseRS.Field("UNITVENTE"   ).Int64Value     = UnitVente
		  DBaseRS.Field("CONDIT"      ).DoubleValue    = Condit
		  DBaseRS.Field("NUMTVA"      ).Int64Value     = NumTva
		  DBaseRS.Field("PRIXVENTEHT" ).DoubleValue    = PrixVenteHT
		  DBaseRS.Field("PRIXVENTETTC").DoubleValue    = PrixVenteTTC
		  DBaseRS.Field("DATEDEB"     ).DateValue      = DateDeb
		  DBaseRS.Field("DATEFIN"     ).DateValue      = DateFin
		  DBaseRS.Field("PROMO"       ).StringValue    = Promo
		  DBaseRS.Field("OBSOLETE"    ).StringValue    = Obsolete
		  DBaseRS.Field("COMMENTAIRES").StringValue    = Commentaires
		  DBaseRS.Field("BLOCAGE"     ).StringValue    = BLOCAGE
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Update(LocVarVente as Int64 = - 1, LocNumArt as Int64 = - 1)
		  Dim OrdreSql as String
		  
		  if LocVarVente = -1 OR LocNumArt=-1 then
		    DBaseRS.Edit
		    DBase_MajRecordset
		    DBaseRS.Update
		    DBaseID.Commit
		    exit sub
		  end if
		  
		  OrdreSql = " UPDATE " + Table +  " SET    NUMERO        =  " + str(Numero         )     +"  ,"+ _
		  "                                      NUMART        =  " + str(NumArt         )     +"  ,"+ _
		  "                                      UNITVENTE     =  " + str(UnitVente      )     +"' ,"+ _
		  "                                      CONDIT        =  " + str(Condit         )     +"' ,"+ _
		  "                                      NUMTVA        =  " + str(NumTva         )     +"' ,"+ _
		  "                                      PRIXVENTEHT   =  " + str(PrixVenteHT    )     +"' ,"+ _
		  "                                      PRIXVENTETTC  =  " + str(PrixVenteTTC   )     +"' ,"+ _
		  "                                      DATEDEB       = '" + str(DateDeb.SQLDate)     +"' ,"+ _
		  "                                      DATEFIN       = '" + str(DateFin.SQLDate)     +"' ,"+ _
		  "                                      PROMO         = '" + str(Promo          )     +"' ,"+ _
		  "                                      OBSOLETE      = '" + str(Obsolete       )     +"' ,"+ _
		  "                                      COMMENTAIRES  = '" + str(Commentaires   )     +"' ,"+ _
		  "                                      BLOCAGE       = '" + str(Blocage        )     +"'  "+ _
		  " WHERE NUMERO =  " + str(LocVarVente)   +" AND  NUMART ="+str(LocNumArt)
		  
		  
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
		  Dim date1 as new date
		  Dim date2 as new date
		  
		  date1.Day=01
		  date1.Month=01
		  date1.Year=2000
		  
		  date2.Day=31
		  date2.Month=12
		  date2.Year=9999
		  
		  Numero           = 0
		  NumArt           = 0
		  UnitVente        = 0
		  Condit           = 0
		  NumTva           = 0
		  PrixVenteHT      = 0
		  PrixVenteTTC     = 0
		  DateDeb          = date1
		  DateFin          = date2
		  Promo            = "N"
		  Obsolete         = "N"
		  Commentaires     = ""
		  BLOCAGE          = "N"
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
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
		  
		  Numero        = DBaseRS.Field("NUMERO"      ).Int64Value
		  NumArt        = DBaseRS.Field("NUMART"      ).Int64Value
		  UnitVente     = DBaseRS.Field("UNITVENTE"   ).Int64Value
		  Condit        = DBaseRS.Field("CONDIT"      ).DoubleValue
		  NumTva        = DBaseRS.Field("NUMTVA"      ).Int64Value
		  PrixVenteHT   = DBaseRS.Field("PRIXVENTEHT" ).DoubleValue
		  PrixVenteTTC  = DBaseRS.Field("PRIXVENTETTC").DoubleValue
		  DateDeb       = DBaseRS.Field("DATEDEB"     ).DateValue
		  DateFin       = DBaseRS.Field("DATEFIN"     ).DateValue
		  Promo         = DBaseRS.Field("PROMO"       ).StringValue
		  Obsolete      = DBaseRS.Field("OBSOLETE"    ).StringValue
		  Commentaires  = DBaseRS.Field("COMMENTAIRES").StringValue
		  BLOCAGE       = DBaseRS.Field("BLOCAGE"     ).StringValue
		  
		  
		  // Gestion hypothetique des valeurs null
		  
		  if str(Numero  )      = chr(0) then  Numero       = 0
		  if str(NumArt  )      = chr(0) then  NumArt       = 0
		  if str(UnitVente   )  = chr(0) then  UnitVente    = 0
		  if str(Condit      )  = chr(0) then  Condit       = 0
		  if str(NumTva      )  = chr(0) then  NumTva       = 0
		  if str(PrixVenteHT )  = chr(0) then  PrixVenteHT  = 0
		  if str(PrixVenteTTC)  = chr(0) then  PrixVenteTTC = 0
		  if str(DateDeb)       = chr(0) then  DateDeb      = date1
		  if str(DateFin)       = chr(0) then  DateFin      = date2
		  if Promo              = chr(0) then  Promo        = "N"
		  if Obsolete           = chr(0) then  Obsolete     = "N"
		  if Commentaires       = chr(0) then  Commentaires = ""
		  if BLOCAGE            = chr(0) then  BLOCAGE      = "N"
		  
		  
		  Exception err as NilObjectException
		    
		    exit sub
		    
		    
		    
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BLOCAGE As String = "N"
	#tag EndProperty

	#tag Property, Flags = &h0
		Commentaires As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Condit As Double
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
		NumArt As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Numero As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NumTva As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Obsolete As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PrixVenteHT As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		PrixVenteTTC As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Promo As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Table As String = "VARACHAT"
	#tag EndProperty

	#tag Property, Flags = &h0
		UnitVente As Int64
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
			Name="Commentaires"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Condit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
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
			Name="Obsolete"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrixVenteHT"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrixVenteTTC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Promo"
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
			Name="Table"
			Visible=false
			Group="Behavior"
			InitialValue="VARACHAT"
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
			Name="NumArt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
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
			Name="NumTva"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UnitVente"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
