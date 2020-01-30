#tag Menu
Begin Menu Mnu_Facture
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Value = "&Fichier"
      Index = -2147483648
      Text = "&Fichier"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem Sub_Imprime
         SpecialMenu = 0
         Value = "Imprime Facture"
         Index = -2147483648
         Text = "Imprime Facture"
         AutoEnabled = True
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem Ite_ImprimHT
            SpecialMenu = 0
            Value = "Hors Taxes"
            Index = -2147483648
            Text = "Hors Taxes"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem Ite_ImprimTTC
            SpecialMenu = 0
            Value = "Toutes taxes comprises"
            Index = -2147483648
            Text = "Toutes taxes comprises"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem Ite_ImprimNoTVA
            SpecialMenu = 0
            Value = "Sans TVA"
            Index = -2147483648
            Text = "Sans TVA"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem Ite_ImprimAssoc
            SpecialMenu = 0
            Value = "Associations"
            Index = -2147483648
            Text = "Associations"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
      End
      Begin MenuItem Ite_Exit
         SpecialMenu = 0
         Value = "Quitter Fenetre"
         Index = -2147483648
         Text = "Quitter Fenetre"
         ShortcutKey = "Esc"
         Shortcut = "Esc"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EditMenu
      SpecialMenu = 0
      Value = "Edition"
      Index = -2147483648
      Text = "Edition"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem EditUndo
         SpecialMenu = 0
         Value = "Annuler"
         Index = -2147483648
         Text = "Annuler"
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu1
         SpecialMenu = 0
         Value = "-"
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCut
         SpecialMenu = 0
         Value = "Couper"
         Index = -2147483648
         Text = "Couper"
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopy
         SpecialMenu = 0
         Value = "&Copier"
         Index = -2147483648
         Text = "&Copier"
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditPaste
         SpecialMenu = 0
         Value = "Coller"
         Index = -2147483648
         Text = "Coller"
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu0
         SpecialMenu = 0
         Value = "-"
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSelectAll
         SpecialMenu = 0
         Value = "Tout Sélectionner"
         Index = -2147483648
         Text = "Tout Sélectionner"
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem ImportMenu
      SpecialMenu = 0
      Value = "Importation"
      Index = -2147483648
      Text = "Importation"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem Ite_ImportDoc
         SpecialMenu = 0
         Value = "Document"
         Index = -2147483648
         Text = "Document"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ImportationLignes
         SpecialMenu = 0
         Value = "Lignes vers"
         Index = -2147483648
         Text = "Lignes vers"
         AutoEnabled = True
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem Ite_ImportDetDebut
            SpecialMenu = 0
            Value = "Debut de la liste"
            Index = -2147483648
            Text = "Debut de la liste"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem Ite_ImportDetSel
            SpecialMenu = 0
            Value = "Ligne sélectionnée"
            Index = -2147483648
            Text = "Ligne sélectionnée"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem Ite_ImportDetFin
            SpecialMenu = 0
            Value = "Fin de la liste"
            Index = -2147483648
            Text = "Fin de la liste"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
      End
   End
   Begin MenuItem ReglementMenu
      SpecialMenu = 0
      Value = "Paiement"
      Index = -2147483648
      Text = "Paiement"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem Sub_EchPaiement
         SpecialMenu = 0
         Value = "Mode de paiement"
         Index = -2147483648
         Text = "Mode de paiement"
         AutoEnabled = True
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem Ite_EchCalendrier
            SpecialMenu = 0
            Value = "Calendrier échéances"
            Index = -2147483648
            Text = "Calendrier échéances"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem Ite_EchCondition
            SpecialMenu = 0
            Value = "Personnaliser pour cette facture"
            Index = -2147483648
            Text = "Personnaliser pour cette facture"
            AutoEnabled = True
            AutoEnable = True
            Visible = True
         End
      End
      Begin MenuItem Ite_Reglement
         SpecialMenu = 0
         Value = "Régler"
         Index = -2147483648
         Text = "Régler"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
