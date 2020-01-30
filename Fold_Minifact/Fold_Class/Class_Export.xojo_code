#tag Class
Protected Class Class_Export
	#tag Method, Flags = &h21
		Private Function ColExcel(numcol as Integer) As string
		  dim alphabet as String
		  dim lettre As string
		  alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		  lettre=mid(alphabet,numcol,1)
		  
		  return lettre
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DBaseReqSrc_Exec() As Boolean
		  
		  DBaseRS=DBaseID.SQLSelect(DBaseSource)
		  
		  DBaseRS.MoveFirst
		  
		  if  not (DBaseRS=NIL) then
		    return true
		  end if
		  
		  Exception err as NilObjectException
		    return false
		    
		    
		    
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Escape_XML(machaine As String) As String
		  machaine=ReplaceAll(machaine,"<","&lt;")
		  machaine=ReplaceAll(machaine,">","&gt;")
		  machaine=ReplaceAll(machaine,"&","&amp;")
		  machaine=ReplaceAll(machaine,"'","&apos;")
		  machaine=ReplaceAll(machaine,chr(34),"&quot;")
		  
		  return machaine
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Export_CSV() As Boolean
		  Dim stream as TextOutputStream
		  Dim lig As Integer
		  Dim col As  Integer
		  Dim ChaineLig as String
		  Dim ChaineChamp As String
		  
		  if Fichier_Export=NIL then
		    return false
		  end
		  
		  // Abandonne si un  fichier du meme nom existe
		  if Fichier_Export.Exists then
		    return false
		  end
		  
		  stream=TextOutputStream.Create(Fichier_Export)
		  
		  DBaseRS.MoveFirst
		  
		  ChaineLig=""
		  for col = 1 to DBaseRS.FieldCount
		    if not (left(DBaseRS.IdxField(col).Name,3)="RSX") then
		      ChaineChamp= ReplaceAll(DBaseRS.IdxField(col).Name,";","[?]")
		      ChaineChamp= ReplaceAll(ChaineChamp,EndOfLine,"[?]")
		      ChaineLig =ChaineLig + ChaineChamp+";"
		    end if
		  next col
		  Stream.WriteLine(ChaineLig)
		  
		  
		  For lig  = 1 To DBaseRS.RecordCount
		    ChaineLig=""
		    for col  = 1 to DBaseRS.FieldCount
		      if not (left(DBaseRS.IdxField(col).Name,3)="RSX") then
		        ChaineChamp = ReplaceAll(DBaseRS.IdxField(col).StringValue,";","[?]")
		        ChaineChamp = ReplaceAll(ChaineChamp, EndOfLine,"[?]")
		        ChaineLig        = ChaineLig + ChaineChamp+";"
		      end if
		    next col
		    Stream.WriteLine(ChaineLig)
		    DBaseRS.MoveNext
		  Next lig
		  
		  Stream.Close
		  
		  
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Export_Excel() As Boolean
		  'Dim excel As New ExcelApplication
		  'Dim book As ExcelWorkbook
		  'Dim lig As Integer
		  'Dim col As  Integer
		  '
		  'excel.Visible = True
		  'book = excel.Workbooks.Add
		  'excel.ActiveSheet.Name = "Export_page_client"
		  '
		  'DBaseRS.MoveFirst
		  '
		  'for col = 1 to DBaseRS.FieldCount
		  'if not (left(DBaseRS.IdxField(col).Name,3)="RSX") then
		  'excel.Range(ColExcel(col) + Str(1), ColExcel(col) + Str(1)).Value = DBaseRS.IdxField(col).Name
		  'end if
		  'next col
		  '
		  'For lig  = 1 To DBaseRS.RecordCount
		  'for col  = 1 to DBaseRS.FieldCount
		  'if not (left(DBaseRS.IdxField(col).Name,3)="RSX") then
		  'excel.Range(ColExcel(col) + Str(lig + 1), ColExcel(col) + Str(lig + 1)).Value =DBaseRS.IdxField(col).StringValue
		  'end if
		  'next col
		  'DBaseRS.MoveNext
		  'Next lig
		  '
		  'return true
		  '
		  'Exception err as OLEException
		  'MsgBox "Pour exporter au format excel votre pc doit fonctionner sous un systeme d'exploitation windows avec excel installé"+EndOfLine+err.message
		  'return false
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Export_XML(NomExport as String) As Boolean
		  Dim stream as TextOutputStream
		  Dim lig As Integer
		  Dim col As  Integer
		  Dim ChaineLig as String
		  
		  
		  
		  if Fichier_Export=NIL then
		    return false
		  end
		  
		  
		  // Abandonne si un  fichier du meme nom existe
		  if Fichier_Export.Exists then
		    return false
		  end
		  
		  
		  stream=TextOutputStream.Create(Fichier_Export)
		  DBaseRS.MoveFirst
		  
		  Stream.WriteLine("<?xml version='1.0' encoding='UTF-8' ?>")
		  
		  ChaineLig=""
		  
		  Stream.WriteLine("<"+Escape_XML(NomExport)+">")
		  For lig  = 1 To DBaseRS.RecordCount
		    
		    Stream.WriteLine("<"+Escape_XML("record num= ")+chr(34)+"rec"+str(lig)+chr(34)+">")
		    
		    for col  = 1 to DBaseRS.FieldCount
		      if not (left(DBaseRS.IdxField(col).Name,3)="RSX") then
		        Stream.WriteLine("<"+Escape_XML(DBaseRS.IdxField(col).Name)+">")
		        Stream.WriteLine(Escape_XML(DBaseRS.IdxField(col).StringValue))
		        Stream.WriteLine("</"+Escape_XML(DBaseRS.IdxField(col).Name)+">")
		      end if
		    next col
		    
		    Stream.WriteLine("</"+Escape_XML("record")+">")
		    DBaseRS.MoveNext
		  Next lig
		  
		  Stream.WriteLine("</"+Escape_XML(NomExport)+">")
		  
		  
		  
		  Stream.Close
		  
		  Return True
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Select_Fichier(NomFormat as string = "texte", ExtFichier as String = "txt") As Boolean
		  dim dlog as SaveAsDialog
		  
		  
		  // Crée uine boite de dialogue de type creation de fichier
		  dlog = New SaveAsDialog
		  dlog.Title="Exportation de la page courante au format "+ NomFormat
		  dlog.SuggestedFileName = "client."+ExtFichier
		  Fichier_Export = dlog.ShowModal
		  
		  // Dans le cas ou l'utilisateur annule le choix d'un fichier
		  if Fichier_Export = NIL then
		    return false
		  end
		  
		  if Fichier_Export.Exists then
		    Fichier_Export.Delete
		  end
		  
		  return true
		  
		  
		End Function
	#tag EndMethod


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
		Fichier_Export As FolderItem
	#tag EndProperty


	#tag ViewBehavior
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
