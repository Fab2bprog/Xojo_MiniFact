#tag Class
Protected Class Class_ArtImg
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
		  Dim OrdreSql   as string
		  Dim RepUser    as integer
		  Dim rs         as RecordSet
		  Dim MaxNumImg  As Int64
		  
		  rs = DBaseID.SQLSelect("SELECT IFNULL(MAX(NUMIMG)+1,1) AS MAXNUM FROM "+Table+" WHERE NUMART="+str(NumArt)  )
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    MaxNumImg        = rs.Field("MAXNUM").Value
		  else
		    MaxNumImg        = 1
		  end if
		  
		  NumImg=MaxNumImg
		  
		  OrdreSql=" INSERT OR IGNORE INTO "+Table+"(NUMART,NUMIMG) VALUES ([NUMART],[NUMIMG]) "
		  OrdreSql= ReplaceAll(OrdreSql, "[NUMART]"      , str(NumArt)     )
		  OrdreSql= ReplaceAll(OrdreSql, "[NUMIMG]"      , str(MaxNumImg)  )
		  DBaseID.SQLexecute(OrdreSql)
		  
		  If DBaseID.error then
		    MsgBox DBaseID.errormessage
		    exit sub
		  Else
		    DBaseID.SQLExecute ("Commit")
		  end if
		  
		  rs=DBaseID.SQLSelect("SELECT * FROM "+Table+" WHERE NUMART ="+str(NumArt)+" AND NUMIMG ="+str(NumImg)  )
		  rs.MoveFirst
		  
		  if  not (rs=NIL) then
		    
		    rs.Edit
		    rs.Field("NUMART").Int64Value            = NumArt
		    rs.Field("NUMIMG").Int64Value            = NumImg
		    rs.Field("FICHNOM").StringValue          = FichNom
		    rs.Field("FICHPATH").StringValue         = FichPath
		    rs.Field("IMGFLAG").Int64Value           = ImgFlag
		    rs.Field("COMMENTAIRES").StringValue     = Commentaires
		    rs.Field("BLOCAGE").StringValue          = Blocage
		    rs.Field("IMAGEBLOB").PictureValue              = ImageBlob
		    rs.Update
		    
		    If DBaseID.error then
		      MsgBox DBaseID.errormessage
		      exit sub
		    Else
		      DBaseID.SQLExecute ("Commit")
		    end if
		    
		  end if
		  
		  
		  
		  Exception err as NilObjectException
		    RepUser = MsgBox ("Echec de la prise en compte de l'image "+EndOfLine+DBaseSource,48,"Erreur execution requete sql")
		    
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Delete(Numero as Int64 = 0)
		  Dim OrdreSql as String
		  
		  If Numero=0 then
		    DBaseRS.DeleteRecord
		    DBaseID.Commit
		    exit sub
		  end if
		  
		  OrdreSql = " DELETE FROM "+Table+" WHERE NUMIMG  =  " + str(Numero)
		  
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
		  
		  DBaseRS.Field("NUMART").Int64Value            = NumArt
		  DBaseRS.Field("NUMIMG").Int64Value            = NumImg
		  DBaseRS.Field("FICHNOM").StringValue          = FichNom
		  DBaseRS.Field("FICHPATH").StringValue         = FichPath
		  DBaseRS.Field("IMGFLAG").Int64Value           = ImgFlag
		  DBaseRS.Field("COMMENTAIRES").StringValue     = Commentaires
		  DBaseRS.Field("BLOCAGE").StringValue          = Blocage
		  DBaseRS.Field("IMAGEBLOB").PictureValue          = ImageBlob
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DBase_Update(RefArt as Int64 = - 1, RefImg as Int64 = - 1)
		  Dim OrdreSql as String
		  
		  if RefArt = -1 OR RefImg=-1 then
		    DBaseRS.Edit
		    DBase_MajRecordset
		    DBaseRS.Update
		    DBaseID.Commit
		    exit sub
		  end if
		  
		  OrdreSql = " UPDATE " + Table +  "    SET NUMART       =  " + str(RefArt)    +"  ,"+ _
		  "                                      NUMIMG       =  " + str(RefImg)    +"  ,"+ _
		  "                                      FICHNOM      = '" + FichNom        +"' ,"+ _
		  "                                      FICHPATH     = '" + FichPath       +"' ,"+ _
		  "                                      IMGFLAG      =  " + str(ImgFlag)   +"  ,"+ _
		  "                                      COMMENTAIRES =  '" + Commentaires  +"'  "+ _
		  " WHERE NUMART =  " + str(RefArt)   +" AND  NUMIMG ="+str(RefImg)
		  
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
		  
		  NumArt       = 0
		  NumImg       = 0
		  FichNom      = ""
		  FichPath     = ""
		  ImgFlag      = 0
		  Commentaires = ""
		  Blocage      = "N"
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MajPropriete()
		  
		  NumArt       = DBaseRS.Field("NUMART").Int64Value
		  NumImg       = DBaseRS.Field("NUMIMG").Int64Value
		  FichNom      = DBaseRS.Field("FICHNOM").StringValue
		  FichPath     = DBaseRS.Field("FICHPATH").StringValue
		  ImgFlag      = DBaseRS.Field("IMGFLAG").Int64Value
		  Commentaires = DBaseRS.Field("COMMENTAIRES").StringValue
		  Blocage      = DBaseRS.Field("BLOCAGE").StringValue
		  ImageBlob    = DBaseRS.Field("IMAGEBLOB").PictureValue
		  
		  // Gestion hypothetique des valeurs null
		  
		  if str(NumArt)    = chr(0) then   NumArt       = 0
		  if str(NumImg)    = chr(0) then   NumImg       = 0
		  if FichNom        = chr(0) then   FichNom      = ""
		  if FichPath       = chr(0) then   FichPath     = ""
		  if str(ImgFlag)   = chr(0) then   ImgFlag      = 0
		  if Commentaires   = chr(0) then   Commentaires = ""
		  if Blocage        = chr(0) then   Blocage      = "N"
		  
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
		DBaseID As REALSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		DBaseRS As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h0
		DBaseSource As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FichNom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FichPath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ImageBlob As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		ImgFlag As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NumArt As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NumImg As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Table As String = "ARTIMG"
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
			Name="DBaseSource"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FichNom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FichPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageBlob"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
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
			InitialValue="ARTCARACT"
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
			Name="ImgFlag"
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
			Name="NumImg"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
