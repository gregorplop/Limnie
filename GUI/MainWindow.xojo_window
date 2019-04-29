#tag Window
Begin Window MainWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   530
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   530
   MinimizeButton  =   True
   MinWidth        =   888
   Placement       =   0
   Resizeable      =   True
   Title           =   "LimnieGUI"
   Visible         =   True
   Width           =   980
   Begin TabPanel MainPanel
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   473
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "VFS\rPools\rMedia\rImport\rExport"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   16.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   940
      Begin PushButton CreateVFSbtn
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Create a Limnie"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   790
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   78
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   150
      End
      Begin Label uuidLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "UUID"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   115
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin TextField filenameField
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   177
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   78
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   439
      End
      Begin Label nameLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Name"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   152
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin Label friendlynameLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Friendly  Name"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   189
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin Label descriptionLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Description"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   226
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin Label PasswordLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Password"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   263
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin Label timestampLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Init Timestamp"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   300
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin Label versionLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Limnie Version"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   337
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin Label filenameLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Filename"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   78
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin TextField uuidField
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   177
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   115
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   439
      End
      Begin TextField nameField
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   177
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   152
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   439
      End
      Begin TextField friendlynameField
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   177
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   189
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   439
      End
      Begin TextField descriptionField
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   177
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   226
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   439
      End
      Begin TextField passwordField
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   177
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   True
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   15
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   263
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   439
      End
      Begin TextField initTimestampField
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   177
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   300
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   439
      End
      Begin TextField versionField
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   177
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   17
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   337
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   439
      End
      Begin PushButton openVFSbtn
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Open"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   628
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   18
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   78
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   150
      End
      Begin PushButton closeBtn
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Close"
         Default         =   False
         Enabled         =   False
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   790
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   21
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   115
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   150
      End
      Begin Label HostnameLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   22
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Hostname"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   374
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin TextField HostnameField
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   177
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   23
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   374
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   439
      End
      Begin Listbox PoolList
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   1
         ColumnsResizable=   False
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   False
         HeadingIndex    =   -1
         Height          =   347
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   77
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   332
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin PushButton createPoolBtn
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "New Pool"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   411
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   436
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
      End
      Begin Label nameLabel_pool
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Name"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   77
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin Label friendlyNameLabel_pool
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Friendly Name"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   114
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin Label commentsLabel_pool
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Comments"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   151
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin Label PasswordLabel_pool
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Password"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   188
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin Label timestampLabel_pool
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Init Timestamp"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   299
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin TextField nameField_pool
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   548
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   77
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   392
      End
      Begin TextField friendlyNameField_pool
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   548
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   114
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   392
      End
      Begin TextField commentsField_pool
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   548
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   151
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   392
      End
      Begin TextField passwordField_pool
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   548
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   True
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   188
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   392
      End
      Begin TextField initTimestampField_pool
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   548
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   299
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   392
      End
      Begin Label uuidLabel_pool
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "UUID"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   336
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin TextField uuidField_pool
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   548
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   15
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   336
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   392
      End
      Begin Label rootFolderLabel_pool
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   16
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Root Folder"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   225
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin TextField rootFolderField_pool
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   548
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   17
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   225
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   392
      End
      Begin Label thresholdLabel_pool
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   18
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Size Limit (MB)"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   262
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin TextField thresholdField_pool
         AcceptTabs      =   False
         Alignment       =   2
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   548
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   19
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   262
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   392
      End
      Begin Label AutoExpandLabel_pool
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   20
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Auto-Expand"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   373
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox AutoExpandCheck_pool
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "True"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   548
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         State           =   1
         TabIndex        =   21
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   373
         Transparent     =   False
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   392
      End
      Begin PushButton updatePoolBtn
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Update Pool"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   537
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   22
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   436
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
      End
      Begin PushButton showMediaBtn
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Show Media"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   23
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   436
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
      End
      Begin PushButton newMediumBtn
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "New Medium"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   166
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   24
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   436
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
      End
   End
   Begin Timer RefreshTimer
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   0
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Oval SessionIndicator
      AutoDeactivate  =   True
      BorderColor     =   &c00000000
      BorderWidth     =   1
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   20
      HelpTag         =   "Active session indicator"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      Top             =   501
      Transparent     =   True
      Visible         =   True
      Width           =   20
   End
   Begin Label projectLink
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   630
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Project Limnie by George Poulopoulos"
      TextAlign       =   2
      TextColor       =   &c0000FF00
      TextFont        =   "System"
      TextSize        =   16.0
      TextUnit        =   0
      Top             =   496
      Transparent     =   False
      Underline       =   True
      Visible         =   True
      Width           =   330
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  me.Title = defaultTitle + " version " + str(LimnieVersion)
		  
		  setState(UIstates.noVFSopen)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub clearPanels()
		  descriptionField.Text = ""
		  filenameField.Text = ""
		  friendlynameField.Text = ""
		  initTimestampField.Text = ""
		  nameField.Text = ""
		  passwordField.Text = ""
		  uuidField.Text = ""
		  versionField.Text = ""
		  HostnameField.Text = ""
		  
		  PoolList.DeleteAllRows
		  PoolList.AddRow "<NEW>"
		  
		  ClearPoolFields
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearPoolFields()
		  AutoExpandCheck_pool.Value = true
		  commentsField_pool.Text = ""
		  friendlyNameField_pool.Text = ""
		  initTimestampField_pool.Text = ""
		  passwordField_pool.Text = ""
		  rootFolderField_pool.Text = ""
		  thresholdField_pool.Text = ""
		  initTimestampField_pool.Text = ""
		  uuidField_pool.Text = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloseLimnie()
		  activeSession.Close
		  
		  setState(UIstates.noVFSopen)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function createLimnie() As Boolean
		  dim newVFS as new Limnie.VFS
		  
		  newVFS.file = GetFolderItem(filenameField.Text.Trim)
		  newVFS.name = nameField.Text.Trim
		  newVFS.friendlyName = friendlynameField.Text.Trim
		  newVFS.description = descriptionField.Text.Trim
		  newVFS.password = passwordField.Text.Trim
		  
		  newVFS = Limnie.createLimnie(newVFS)
		  
		  if newVFS.error = true then 
		    SessionIndicator.FillColor = RGB(255,0,0)
		    MsgBox newVFS.errorMessage
		    return False
		  else
		    Return true
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function createPool() As Boolean
		  dim newPool as new Limnie.Pool
		  
		  newPool.name = nameField_pool.Text.Trim
		  newPool.friendlyName = friendlyNameField_pool.Text.Trim
		  newPool.comments = commentsField_pool.Text.Trim
		  newPool.rootFolder = GetFolderItem(rootFolderField_pool.Text.Trim)
		  newPool.password = passwordField_pool.Text.Trim
		  newPool.mediumThreshold = thresholdField_pool.Text.Trim.Val
		  newPool.autoExpand = AutoExpandCheck_pool.Value
		  
		  newPool = activeSession.createNewPool(newPool)
		  
		  if newPool.error then
		    MsgBox "Error creating pool: " + newPool.errorMessage
		    return false
		    
		  else
		    uuidField_pool.Text = newPool.uuid
		    initTimestampField_pool.Text = newPool.initStamp
		    
		    return true
		    
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isPoolListed(poolname as string) As integer
		  for i as Integer = 1 to PoolList.ListCount - 1
		    if PoolList.cell(i,0) = poolname then return i
		  next i
		  
		  return -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function openLimnie() As Boolean
		  if filenameField.Text.Trim = "" then return false
		  
		  dim openVFS as new Limnie.VFS
		  
		  openVFS.file = GetFolderItem(filenameField.Text.Trim)
		  openVFS.password = passwordField.Text.Trim
		  
		  activeSession = new Limnie.Session(openVFS)
		  
		  if activeSession.getLastError <> "" then
		    setState(UIstates.noVFSopen)
		    SessionIndicator.FillColor = RGB(255,0,0)
		    msgbox activeSession.getLastError
		    return False
		  else
		    
		    openVFS = activeSession.getVFSdetails
		    
		    if openVFS.error = False then
		      
		      setState(UIstates.VFSopenIdle)
		      SessionIndicator.FillColor = RGB(0,255,0)
		      
		      descriptionField.Text = openVFS.description
		      friendlynameField.Text = openVFS.friendlyName
		      nameField.Text = openVFS.name
		      HostnameField.Text = openVFS.hostname
		      initTimestampField.Text = openVFS.initStamp.SQLDateTime
		      uuidField.Text = openVFS.uuid
		      versionField.Text = openVFS.version
		      
		      Return true
		      
		    else
		      SessionIndicator.FillColor = RGB(255,0,0)
		      MsgBox openVFS.errorMessage
		      CloseLimnie
		    end if
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function refreshPoolList() As string
		  dim pools(-1) as String = activeSession.getPoolNames
		  dim pooldetails as  Limnie.Pool
		  dim rowFound as Integer
		  
		  if activeSession.getLastError <> "" then Return "Error updating pool info data: " + activeSession.getLastError
		  
		  
		  for i as Integer = 0 to pools.Ubound
		    pooldetails = activeSession.getPoolDetails(pools(i) , true)
		    if pooldetails.error then return "Error getting details for pool " + pools(i)
		    
		    rowFound = isPoolListed(pooldetails.name)
		    
		    if rowFound < 0 then // new pool, not in list
		      PoolList.AddRow pooldetails.name , str(pooldetails.encrypted) , str(pooldetails.mediaCount)
		      PoolList.RowTag(PoolList.LastIndex) = pooldetails
		    else  // pool already in list
		      PoolList.cell(rowFound , 2) = str(pooldetails.mediaCount)
		      PoolList.RowTag(rowFound) = pooldetails
		    end if
		    
		  next i
		  
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setState(state as UIstates)
		  select case state
		    
		  case UIstates.noVFSopen
		    
		    RefreshTimer.Mode = timer.ModeOff
		    
		    clearPanels
		    
		    SessionIndicator.FillColor = RGB(255,255,255)
		    
		    openVFSbtn.Enabled = true
		    CreateVFSbtn.Enabled = true
		    closeBtn.Enabled = false
		    
		    PoolList.Enabled = false
		    createPoolBtn.Enabled = false
		    newMediumBtn.Enabled = false
		    showMediaBtn.Enabled = false
		    updatePoolBtn.Enabled = false
		    
		  case UIstates.VFSopenIdle
		    
		    openVFSbtn.Enabled = False
		    CreateVFSbtn.Enabled = false
		    closeBtn.Enabled = true
		    
		    PoolList.Enabled = true
		    createPoolBtn.Enabled = true
		    newMediumBtn.Enabled = true
		    showMediaBtn.Enabled = true
		    updatePoolBtn.Enabled = false
		    
		    PoolList.ListIndex = 0
		    
		    RefreshTimer.Mode = timer.ModeMultiple
		    
		  end select
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		activeSession As Limnie.Session
	#tag EndProperty


	#tag Constant, Name = defaultTitle, Type = String, Dynamic = False, Default = \"LimnieGUI", Scope = Private
	#tag EndConstant


	#tag Enum, Name = UIstates, Type = Integer, Flags = &h0
		noVFSopen
		VFSopenIdle
	#tag EndEnum


#tag EndWindowCode

#tag Events CreateVFSbtn
	#tag Event
		Sub Action()
		  dim createOK as Boolean = createLimnie
		  
		  if createOK then 
		    dim openOK as Boolean = openLimnie
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events filenameField
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim file as FolderItem = GetOpenFolderItem(Limnie.LimnieFileType)
		  if file = nil then Return true
		  filenameField.Text = file.NativePath
		  return true
		  
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  select case asc(key)
		    
		  case 3,13
		    call openLimnie
		    return true
		  else
		    return false
		  end select
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events openVFSbtn
	#tag Event
		Sub Action()
		  call openLimnie
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events closeBtn
	#tag Event
		Sub Action()
		  CloseLimnie
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PoolList
	#tag Event
		Sub Open()
		  me.ColumnCount = 3
		  me.Heading(0) = "Name"
		  me.Heading(1) = "Encrypted"
		  me.Heading(2) = "Media"
		  me.ColumnWidths = "45%,30%,25%"
		  me.HasHeading = true
		  me.ColumnsResizable = false
		  me.HeaderType(-1) = Listbox.HeaderTypes.NotSortable
		  me.RequiresSelection = true
		  
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2 = 0 Then
		    g.ForeColor= &cf7faff
		  Else
		    g.ForeColor= &cffffff
		  End If
		  g.FillRect(0, 0, g.Width, g.Height)
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  dim row as Integer = me.ListIndex
		  
		  if row < 0 then return
		  
		  if me.cell(row,0) = "<NEW>" then
		    ClearPoolFields
		    
		    showMediaBtn.Enabled = false
		    newMediumBtn.Enabled = false
		    createPoolBtn.Enabled = true
		    
		    passwordField_pool.Enabled = true
		    passwordField_pool.Text = ""
		    nameField_pool.Enabled = true
		    updatePoolBtn.Enabled = False
		    
		    nameField_pool.Text = ""
		    nameField_pool.SetFocus
		    
		  else
		    if me.RowTag(row) isa Limnie.Pool then
		      
		      showMediaBtn.Enabled = true
		      newMediumBtn.Enabled = true
		      updatePoolBtn.Enabled = true
		      createPoolBtn.Enabled = False
		      
		      dim pooldetails as Limnie.Pool = me.RowTag(row)
		      
		      passwordField_pool.Enabled = false
		      
		      nameField_pool.Text = pooldetails.name
		      nameField_pool.Enabled = False
		      
		      friendlyNameField_pool.Text = pooldetails.friendlyName
		      commentsField_pool.Text = pooldetails.comments
		      rootFolderField_pool.Text = pooldetails.rootFolder.NativePath
		      thresholdField_pool.Text = str(pooldetails.mediumThreshold)
		      initTimestampField_pool.Text = pooldetails.initStamp
		      uuidField_pool.Text = pooldetails.uuid
		      AutoExpandCheck_pool.Value = pooldetails.autoExpand
		      
		      passwordField_pool.Text = if(pooldetails.encrypted = true , "XXXXXX" , "")  // if encrypted, just show something to indicate that
		      
		      
		    end if
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events createPoolBtn
	#tag Event
		Sub Action()
		  
		  call createPool
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rootFolderField_pool
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim ff as FolderItem
		  ff = SelectFolder
		  if IsNull(ff) = false then rootFolderField_pool.Text = ff.NativePath 
		  
		  return true
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events AutoExpandCheck_pool
	#tag Event
		Sub Action()
		  if me.Value = true then
		    me.Caption = "True"
		  else
		    me.Caption = "False"
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events updatePoolBtn
	#tag Event
		Sub Action()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events showMediaBtn
	#tag Event
		Sub Action()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events newMediumBtn
	#tag Event
		Sub Action()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RefreshTimer
	#tag Event
		Sub Action()
		  
		  dim refreshPoolsOK as String = refreshPoolList
		  
		  if refreshPoolsOK <> "" then
		    me.Mode = timer.ModeOff
		    MsgBox "Error returned by auto-refreshing mechanism: " + EndOfLine + refreshPoolsOK + EndOfLine + EndOfLine + "Automatic refreshing has been suspended"
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events projectLink
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  ShowURL("https://github.com/gregorplop/Limnie")
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
