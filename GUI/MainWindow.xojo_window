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
   Height          =   634
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   634
   MinimizeButton  =   True
   MinWidth        =   1000
   Placement       =   2
   Resizeable      =   True
   Title           =   "LimnieGUI"
   Visible         =   True
   Width           =   1054
   Begin TabPanel MainPanel
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   577
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
      TabDefinition   =   "VFS\rPools\rMedia\rImport\rExport\rAbout"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   16.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Value           =   3
      Visible         =   True
      Width           =   1014
      Begin Listbox ObjectImportList
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   False
         ColumnCount     =   3
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
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   500
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   451
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   77
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   563
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
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
         Left            =   864
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
         Width           =   513
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
         Width           =   513
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
         Width           =   513
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
         Width           =   513
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
         Width           =   513
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
         Width           =   513
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
         Width           =   513
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
         Width           =   513
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
         Left            =   702
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
         Left            =   702
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
         Width           =   513
      End
      Begin Listbox PoolList
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   False
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
         Height          =   451
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
         Width           =   434
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
         Top             =   540
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
         Left            =   486
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
         Left            =   486
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
         Left            =   486
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
         Left            =   486
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
         Left            =   486
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
         Left            =   623
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
         Width           =   391
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
         Left            =   623
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
         Width           =   391
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
         Left            =   623
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
         Width           =   391
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
         Left            =   623
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
         Width           =   391
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
         Left            =   623
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
         Width           =   391
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
         Left            =   486
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
         Left            =   623
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
         Width           =   391
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
         Left            =   486
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
         Left            =   623
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
         Width           =   391
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
         Left            =   486
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
         Left            =   623
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
         Width           =   391
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
         Left            =   486
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
         Left            =   623
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
         Width           =   391
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
         Top             =   540
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
         Top             =   540
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
         Top             =   540
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   114
      End
      Begin Listbox MediaList
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   False
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
         Height          =   457
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
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   True
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   77
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   974
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin PushButton ShowAllPoolMediaBtn
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Show All Pools"
         Default         =   False
         Enabled         =   True
         Height          =   31
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
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   546
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   150
      End
      Begin PopupMenu FilterOpenClosedMediaMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   202
         ListIndex       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   547
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   157
      End
      Begin GroupBox ImportSingleFileGroup
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Import Single File (non-threaded)"
         Enabled         =   True
         Height          =   302
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
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   77
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   399
         Begin Label SingleImport2poolLabel
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ImportSingleFileGroup"
            Italic          =   False
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Store file to pool"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   187
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   357
         End
         Begin PopupMenu SingleImport2PoolMenu
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ImportSingleFileGroup"
            InitialValue    =   ""
            Italic          =   False
            Left            =   60
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   219
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   197
         End
         Begin TextField SingleImportSourceFileField
            AcceptTabs      =   False
            Alignment       =   0
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
            Height          =   30
            HelpTag         =   "Right click to select file"
            Index           =   -2147483648
            InitialParent   =   "ImportSingleFileGroup"
            Italic          =   False
            Left            =   60
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   145
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   357
         End
         Begin TextField SingleImportCustomMetadataField
            AcceptTabs      =   False
            Alignment       =   0
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
            Height          =   30
            HelpTag         =   "Custom user data for new object"
            Index           =   -2147483648
            InitialParent   =   "ImportSingleFileGroup"
            Italic          =   False
            Left            =   60
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   288
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   357
         End
         Begin PushButton SingleImportDoitBtn
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Import"
            Default         =   False
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ImportSingleFileGroup"
            Italic          =   False
            Left            =   269
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   14.0
            TextUnit        =   0
            Top             =   331
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   148
         End
         Begin Label SingleImportSourceFileLabel
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ImportSingleFileGroup"
            Italic          =   False
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   9
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Input Filename"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   113
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   357
         End
         Begin CheckBox SingleImportCopyCheck
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Copy UUID when done"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ImportSingleFileGroup"
            Italic          =   False
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   1
            TabIndex        =   12
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   330
            Transparent     =   False
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   197
         End
         Begin CheckBox SingleImportMetadataIsFilename
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Metadata = Filename"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ImportSingleFileGroup"
            Italic          =   False
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   1
            TabIndex        =   13
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   261
            Transparent     =   False
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   372
         End
      End
      Begin PushButton ClearPasswordCacheBtn
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Clear password cache"
         Default         =   False
         Enabled         =   True
         Height          =   25
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   864
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   24
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
      Begin GroupBox ExportSingleObjectGroup
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Export Single Object (non-threaded)"
         Enabled         =   True
         Height          =   259
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
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   77
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   378
         Begin TextField SingleExportSourceUUIDfield
            AcceptTabs      =   False
            Alignment       =   0
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
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ExportSingleObjectGroup"
            Italic          =   False
            Left            =   60
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   145
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   339
         End
         Begin PushButton SingleExportDoItBtn
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Export"
            Default         =   False
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ExportSingleObjectGroup"
            Italic          =   False
            Left            =   263
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   14.0
            TextUnit        =   0
            Top             =   289
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   136
         End
         Begin TextField SingleExportTargetFilenameField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFF8000
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ExportSingleObjectGroup"
            Italic          =   False
            Left            =   60
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   210
            Transparent     =   True
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   339
         End
         Begin Label SingleExportSourceUUIDlabel
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ExportSingleObjectGroup"
            Italic          =   False
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Object UUID"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   113
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   187
         End
         Begin Label SingleExportTargetFilenameLabel
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ExportSingleObjectGroup"
            Italic          =   False
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   8
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Target folder/filename"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   177
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   339
         End
         Begin CheckBox SingleExportMetadatumIsFilenameCheck
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Name file after object metadata value"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "ExportSingleObjectGroup"
            Italic          =   False
            Left            =   60
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   1
            TabIndex        =   10
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   16.0
            TextUnit        =   0
            Top             =   252
            Transparent     =   False
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   339
         End
      End
      Begin Listbox ObjectExportList
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   False
         ColumnCount     =   3
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
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   500
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   430
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         ShowDropIndicator=   False
         TabIndex        =   1
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   77
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   584
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Label AboutHeader
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   244
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
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Limnie: \r\nAn object storage library for Xojo\r\n"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   33.0
         TextUnit        =   0
         Top             =   86
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   222
      End
      Begin Label AboutHeader1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   219
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
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Created and maintained\r\nby George Poulopoulos ,\r\nunder the\r\nApache 2.0 License"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   25.0
         TextUnit        =   0
         Top             =   358
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   222
      End
      Begin TextArea AboutContent
         AcceptTabs      =   False
         Alignment       =   1
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   491
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   274
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   2
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Limnie: /li.ˈmni/ : ""lake"" in Greek, plural: Limnes\r\n\r\nLimnie is a local, highly configurable, flat virtual file system. \r\nIts main use is to act as a local object store subsystem.\r\nIt relies on robust SQLite technology and is heavily based on the pdstorage component of the\r\n-now defunct- postdoc project ( https://github.com/gregorplop/postdoc )\r\n\r\nThe main features of Limnie are briefly explained below:\r\n\r\nLocal :\r\nA Limnie VFS should always be on the same machine as the applications mounting it.\r\nIt SHOULD NOT be acessed over a network share or filesystem. It might appear to work at first, \r\nbut in the long run,  YOU WILL LOSE YOUR DATA. PERIOD.\r\nMultiple applications running on the same machine accessing a Limnie, is considered a safe practice.\r\nWithin the same application, one Limnie session per thread is allowed. This is a major design restriction.\r\n\r\nHighly configurable :\r\nA Limnie VFS consists of one or multiple storage pools that act as entirely seperate ""buckets"" you can \r\nassign data that belong to different domains, clients, or archival projects.\r\nEach pool consists of storage media. \r\nMedia are the actual containers of the content you push into the VFS.\r\nMedia are initialized to a specific (configurable) size and they grow gradually up to that limit.\r\nWhen the last medium of a pool becomes full, Limnie can auto-create the next one at a set location and size.\r\nMedia belonging to a certain pool can also be encrypted with a password that applies only to that pool.\r\nFurthermore, access to the entire VFS itself can also be password-protected if needed.\r\n\r\nFlat :\r\nLimnie does not store data in a hierarchical manner: There are no folders and subfolders. \r\nThe namespace for each storage pool is flat.\r\nEvery object pushed into a pool just gets an id and is retrievable by using that id. \r\nYour application can organize the data in any way it needs.\r\n\r\nVirtual File System :\r\nA virtual file system is a file system within your OS's filesystem. \r\nExternally, it might appear as one or more files, but when mounted properly through the proper code libraries, \r\nyour application can access their storage space in a way similar to accessing a drive connected to the computer.\r\n\r\n===========================================================================\r\n\r\nQuick start guide\r\n\r\nCreate a new Limnie VFS:\r\nOn the VFS panel, enter the filename you want to be mounting to (.limnie extension)\r\nSet the working name (lowercase, no spaces, no symbols, no weird characters)\r\nSet a friendly name and a description.\r\nPress the <Create a Limnie> button.\r\nYour new Limnie should be created and mounted automatically.\r\n\r\nCreate your first pool:\r\nOn the Pools panel, in the list, select <NEW>\r\nSet the working name (lowercase, no spaces, no symbols, no weird characters)\r\nSet a friendly name and comments.\r\n(Avoid setting a password until some issues are resolved)\r\nSet the root folder of the pool. This is the folder new media are created under.\r\nSet the size limit of newly created media. They are not supposed to grow beyond that.\r\nSet the auto-expand flag you prefer. An auto-expanding pool will automatically create the \r\nnext medium when it runs out of space while data are being pushed.\r\nPress the <New Pool> button.\r\n\r\nVerify your new pool has been created:\r\nSwitch over to the Media panel.\r\nYou should be able to see the fist medium of your pool, with the settings you specified.\r\n\r\nImport your first object into the pool:\r\nGo to the Import Panel.\r\nEnter the full path of the file you want to import. (Right click brings up a file selection dialogue)\r\nSelect the pool you want to import your file to.\r\nEvery object is accompanied with one piece of custom metadata. If <Metadata = Filename> is checked, \r\nthen the filename automatically is written to that field.\r\nPress the <Import> button.\r\nCheck the list to the right for the outcome.\r\nIf successful, then the UUID this object just acquired is all you need to retrieve it!\r\nThe UUID should have beeen copied to your clipboard too.\r\n\r\nRead the object you just pushed into the Limnie:\r\nGo to the Export panel.\r\nPaste the UUID to the Object UUID field.\r\nEnter a folder to write your exported object to.\r\nLeave <Name file after...> checked, that way you won't need to specify a filename.\r\nClick the <Export> button.\r\nCheck the list to the right for the outcome.\r\nCheck the target file location for your newly created file.\r\n"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   16.0
         TextUnit        =   0
         Top             =   86
         Transparent     =   True
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   740
      End
      Begin Label WARNING
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   90
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   486
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   25
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "WARNING: AVOID PASSWORD PROTECTED POOLS AT THIS POINT - THIS FEATURE IS NOT FULLY SUPPORTED YET"
         TextAlign       =   1
         TextColor       =   &cFF000000
         TextFont        =   "System"
         TextSize        =   20.0
         TextUnit        =   0
         Top             =   425
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   528
      End
      Begin Label QuickStartNoticeLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   33
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "MainPanel"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   25
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "If you are new to Limnie, please refer to the Quick Start Guide in the About panel"
         TextAlign       =   0
         TextColor       =   &c0080FF00
         TextFont        =   "System"
         TextSize        =   22.0
         TextUnit        =   0
         Top             =   544
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   974
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
      Top             =   605
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
      Left            =   710
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
      Text            =   "The Limnie Project repository on GitHub"
      TextAlign       =   2
      TextColor       =   &c0000FF00
      TextFont        =   "System"
      TextSize        =   16.0
      TextUnit        =   0
      Top             =   600
      Transparent     =   False
      Underline       =   True
      Visible         =   True
      Width           =   324
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  if IsNull(activeSession) = false then activeSession.Close
		  
		End Sub
	#tag EndEvent

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
		  
		  MediaList.DeleteAllRows
		  
		  ObjectExportList.DeleteAllRows
		  
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
		  RemoveHandler activeSession.poolPasswordRequest , WeakAddressOf poolPasswordRequest_handler
		  
		  activeSession.Close
		  
		  setState(UIstates.noVFSopen)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function createLimnie() As Boolean
		  if filenameField.Text.Trim = "" then 
		    MsgBox "No VFS file specified!"
		    return false
		  end if
		  
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
		  if rootFolderField_pool.Text.Trim = "" then
		    MsgBox "No root folder specified!"
		    return false
		  end if
		  
		  dim newPool as new Limnie.Pool
		  
		  newPool.name = nameField_pool.Text.Trim
		  newPool.friendlyName = friendlyNameField_pool.Text.Trim
		  newPool.comments = commentsField_pool.Text.Trim
		  newPool.rootFolder = GetFolderItem(rootFolderField_pool.Text.Trim)
		  newPool.password = passwordField_pool.Text.Trim  // PLAINTEXT PRELIMINARY!
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
		Function isMediumListed(uuid as string) As integer
		  for i as Integer = 0 to MediaList.ListCount - 1
		    if MediaList.cell(i,2) = uuid then return i
		  next i
		  
		  return -1
		  
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
		      
		      AddHandler activeSession.poolPasswordRequest , WeakAddressOf poolPasswordRequest_handler
		      
		      Return true
		      
		    else
		      SessionIndicator.FillColor = RGB(255,0,0)
		      MsgBox openVFS.errorMessage
		      CloseLimnie
		      Return false
		    end if
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function poolPasswordRequest_handler(sender as Limnie.Session, poolname as string) As string
		  dim value as Variant = InputWindow.showInput("Password for pool " + poolname , "Enter password to unlock pool " + poolname)
		  
		  return value.StringValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshStart()
		  RefreshTimer.Mode = Timer.ModeMultiple
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshStop()
		  RefreshTimer.Mode = Timer.ModeOff
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function refreshUI() As string
		  dim pools(-1) as String = activeSession.getPoolNames
		  dim pooldetails as  Limnie.Pool
		  dim rowFound as Integer
		  
		  if activeSession.getLastError <> "" then Return "Error updating pool info data: " + activeSession.getLastError
		  
		  dim poolListed as Boolean
		  
		  dim media4pool(-1) as Limnie.Medium
		  dim WHERE as string
		  
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
		    
		    poolListed = false
		    for j as Integer = 0 to SingleImport2PoolMenu.ListCount - 1
		      if SingleImport2PoolMenu.List(j) = pools(i) then 
		        poolListed = true
		        exit for j
		      end if
		    next j
		    if poolListed = False then 
		      SingleImport2PoolMenu.AddRow pools(i)
		    end if
		    
		    WHERE = MediaSurvey_WHERE + " AND " + FilterOpenClosedMediaMenu.RowTag(FilterOpenClosedMediaMenu.ListIndex).StringValue
		    System.DebugLog(WHERE)
		    media4pool = activeSession.getMediaDetails(WHERE , " pool , idx ASC")
		    
		    if media4pool.Ubound = 0 then
		      if media4pool(0).error = true and media4pool(0).errorCode = -1 then Return "Infrastructure error while surveying media: " + media4pool(0).errorMessage
		    end if
		    for j as Integer = 0 to media4pool.Ubound
		      rowFound = isMediumListed(media4pool(j).uuid)
		      if rowFound < 0 then  // new Medium , not in list
		        MediaList.AddRow media4pool(j).pool , str(media4pool(j).idx) , media4pool(j).uuid , str(media4pool(j).threshold) , str(media4pool(j).utilization) , str(media4pool(j).mounted) , str(media4pool(j).open)
		        MediaList.RowTag(MediaList.LastIndex) = media4pool(j)
		      else // medium already in list
		        MediaList.cell(rowFound , 4) = str(media4pool(j).utilization)
		        MediaList.cell(rowFound , 5) = str(media4pool(j).mounted)
		        MediaList.Cell(rowFound , 6) = str(media4pool(j).open)
		        MediaList.RowTag(rowFound) = media4pool(j)
		      end if
		    next j 
		    
		    
		  next i
		  
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setState(state as UIstates)
		  select case state
		    
		  case UIstates.noVFSopen
		    
		    RefreshStop
		    clearPanels
		    
		    passwordField.Enabled = true
		    nameField.Enabled = true
		    
		    SessionIndicator.FillColor = RGB(255,255,255)
		    
		    openVFSbtn.Enabled = true
		    CreateVFSbtn.Enabled = true
		    closeBtn.Enabled = false
		    
		    PoolList.Enabled = false
		    createPoolBtn.Enabled = false
		    newMediumBtn.Enabled = false
		    showMediaBtn.Enabled = false
		    updatePoolBtn.Enabled = false
		    
		    MediaList.Enabled = false
		    ShowAllPoolMediaBtn.Enabled = false
		    FilterOpenClosedMediaMenu.Enabled = False
		    
		    ObjectExportList.Enabled = false
		    ObjectImportList.Enabled = false
		    
		    ImportSingleFileGroup.Enabled = False
		    ExportSingleObjectGroup.Enabled = false
		    
		  case UIstates.VFSopenIdle
		    
		    passwordField.Enabled = false
		    nameField.Enabled = false
		    
		    openVFSbtn.Enabled = False
		    CreateVFSbtn.Enabled = false
		    closeBtn.Enabled = true
		    
		    PoolList.Enabled = true
		    createPoolBtn.Enabled = true
		    newMediumBtn.Enabled = true
		    showMediaBtn.Enabled = true
		    updatePoolBtn.Enabled = false
		    
		    PoolList.ListIndex = 0
		    
		    MediaList.Enabled = true
		    ShowAllPoolMediaBtn.Enabled = false
		    FilterOpenClosedMediaMenu.Enabled = true
		    
		    ImportSingleFileGroup.Enabled = true
		    ExportSingleObjectGroup.Enabled = true
		    
		    ObjectExportList.Enabled = true
		    ObjectImportList.Enabled = true
		    
		    SingleImportCustomMetadataField.Enabled = false
		    
		    MediaSurvey_WHERE = " TRUE "
		    
		    RefreshStart
		    
		  end select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SingleExport() As Boolean
		  dim uuid as string = SingleExportSourceUUIDfield.Text.Trim.Uppercase
		  
		  if uuid = "" then
		    ObjectExportList.AddRow uuid , "" , "UUID not defined!"
		    ObjectExportList.ListIndex = ObjectExportList.LastIndex
		    return False
		  end if
		  
		  if SingleExportTargetFilenameField.Text.Trim = "" then
		    ObjectExportList.AddRow uuid , "" , "Target not defined!"
		    ObjectExportList.ListIndex = ObjectExportList.LastIndex
		    return False
		  end if
		  
		  dim targetLocation as FolderItem = GetFolderItem(SingleExportTargetFilenameField.Text.Trim)
		  dim targetFolder as FolderItem
		  dim targetFile as FolderItem
		  
		  if IsNull(targetLocation) then
		    ObjectExportList.AddRow uuid , "" , "Target path is invalid!"
		    ObjectExportList.ListIndex = ObjectExportList.LastIndex
		    return False
		  end if
		  
		  if targetLocation.Directory then
		    targetFolder = targetLocation
		    targetFile = targetFolder.Child(uuid)
		  else  // it's a file
		    targetFile = targetLocation
		    targetFolder = targetFile.Parent
		  end if
		  
		  if targetFile.Exists then
		    ObjectExportList.AddRow uuid , "" , "Target file already exists!"
		    ObjectExportList.ListIndex = ObjectExportList.LastIndex
		    return False
		  end if
		  
		  dim docRetrieved as Limnie.Document = activeSession.findPoolOfDocUUID(uuid)
		  
		  if docRetrieved.error = true then 
		    ObjectExportList.AddRow uuid , "" , docRetrieved.errorMessage
		    ObjectExportList.ListIndex = ObjectExportList.LastIndex
		    return False
		  end if
		  
		  dim writeStream as BinaryStream
		  
		  try
		    writeStream = BinaryStream.Create(targetFile)
		  Catch e as IOException
		    ObjectExportList.AddRow "" , docRetrieved.pool , "IO Exception when creating file"
		    ObjectExportList.ListIndex = ObjectExportList.LastIndex
		    return false
		  end try
		  
		  docRetrieved = activeSession.readDocument(writeStream , docRetrieved.pool , uuid)
		  
		  if IsNull(writeStream) = False then writeStream.Close
		  
		  if docRetrieved.error then 
		    targetFile.Delete
		    ObjectExportList.AddRow uuid , docRetrieved.pool , docRetrieved.errorMessage
		    ObjectExportList.ListIndex = ObjectExportList.LastIndex
		    return False
		  end if
		  
		  if SingleExportMetadatumIsFilenameCheck.Value = true then
		    if docRetrieved.metadatum <> "" then
		      targetFile.Name = docRetrieved.metadatum
		    end if
		  end if
		  
		  ObjectExportList.AddRow uuid , docRetrieved.pool , targetFile.NativePath
		  ObjectExportList.ListIndex = ObjectExportList.LastIndex
		  
		  SingleExportSourceUUIDfield.Text = ""
		  SingleExportSourceUUIDfield.SetFocus
		  
		  return true
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SingleImport() As Boolean
		  if SingleImport2PoolMenu.Text = "" then
		    ObjectImportList.AddRow "" , "" , "No target pool selected!"
		    ObjectImportList.ListIndex = ObjectImportList.LastIndex
		    return false
		  end if
		  
		  if SingleImportSourceFileField.Text.Trim = "" then
		    ObjectImportList.AddRow "" , SingleImport2PoolMenu.Text , "No source file selected!"
		    ObjectImportList.ListIndex = ObjectImportList.LastIndex
		    return false
		  end if
		  
		  dim sourceFile as FolderItem = GetFolderItem(SingleImportSourceFileField.Text.Trim)
		  
		  if IsNull(sourceFile) then 
		    ObjectImportList.AddRow "" , SingleImport2PoolMenu.Text , "Invalid path to source file!"
		    ObjectImportList.ListIndex = ObjectImportList.LastIndex
		    return false
		  end if
		  
		  if sourceFile.Exists = false then
		    ObjectImportList.AddRow "" , SingleImport2PoolMenu.Text , "Source file does not exist!"
		    ObjectImportList.ListIndex = ObjectImportList.LastIndex
		    return false
		  end if
		  
		  dim sourceStream as BinaryStream = BinaryStream.Open(sourceFile , False)
		  dim newDocument as Limnie.Document = activeSession.createDocument(sourceStream , SingleImport2PoolMenu.Text , SingleImportCustomMetadataField.Text , false)
		  
		  sourceStream.Close
		  
		  if newDocument.error = true then
		    ObjectImportList.AddRow newDocument.errorMessage , SingleImport2PoolMenu.Text , sourceFile.NativePath
		    ObjectImportList.ListIndex = ObjectImportList.LastIndex
		    return false
		  end if
		  
		  ObjectImportList.AddRow newDocument.uuid , SingleImport2PoolMenu.Text , sourcefile.NativePath
		  ObjectImportList.ListIndex = ObjectImportList.LastIndex
		  
		  if SingleImportCopyCheck.Value = true then
		    dim c as new Clipboard
		    c.SetText(newDocument.uuid)
		    c.Close
		  end if
		  
		  return true
		  
		  
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		activeSession As Limnie.Session
	#tag EndProperty

	#tag Property, Flags = &h0
		MediaSurvey_WHERE As string
	#tag EndProperty


	#tag Constant, Name = DefaultLimnieFilename, Type = Text, Dynamic = False, Default = \"C:\\Limnie\\vfs.limnie", Scope = Private
	#tag EndConstant

	#tag Constant, Name = defaultTitle, Type = String, Dynamic = False, Default = \"LimnieGUI", Scope = Private
	#tag EndConstant


	#tag Enum, Name = UIstates, Type = Integer, Flags = &h0
		noVFSopen
		VFSopenIdle
	#tag EndEnum


#tag EndWindowCode

#tag Events ObjectImportList
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
		Sub Open()
		  me.ColumnCount = 3
		  me.Heading(0) = "Created UUID (or Error)"
		  me.Heading(1) = "Pool"
		  me.Heading(2) = "Source filename (or Error)"
		  
		  me.ColumnWidths = "40%,15%,45%"
		  me.HasHeading = true
		  me.ColumnsResizable = false
		  me.HeaderType(-1) = Listbox.HeaderTypes.NotSortable
		  me.RequiresSelection = false
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  base.Append( New MenuItem("Clear", "CLEAR"))
		  base.Append( New MenuItem("Copy" , "COPY"))
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  select case hitItem.Tag
		    
		  case "CLEAR"
		    me.DeleteAllRows
		    
		  case "COPY"
		    
		    dim c as new Clipboard
		    dim rowData(-1) as string
		    dim horzDelimiter as String = chr(9)
		    
		    for i as Integer = 0 to me.ListCount - 1
		      rowData.Append me.cell(i,0) + horzDelimiter + me.cell(i,1) + horzDelimiter + me.cell(i,2)
		    next i
		    
		    c.SetText(Join(rowData , EndOfLine))
		    c.Close
		    
		  end select
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Dim row, column As Integer
		  row = Me.RowFromXY(System.MouseX - Me.Left - Self.Left, System.MouseY - Me.Top - Self.Top)
		  
		  if row < 0 then
		    return
		  else
		    MsgBox me.cell(row , 0) + EndOfLine + EndOfLine + me.cell(row,1) + EndOfLine + EndOfLine + me.cell(row,2)
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
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
		    
		    if me.Text.Trim = "" then
		      me.Text = DefaultLimnieFilename
		      return true
		    end if
		    
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
		  dim pooldata2update as new Limnie.Pool
		  
		  pooldata2update.name = nameField_pool.Text
		  pooldata2update.friendlyName = friendlyNameField_pool.Text
		  pooldata2update.comments = commentsField_pool.Text
		  pooldata2update.mediumThreshold = thresholdField_pool.Text.Val
		  pooldata2update.rootFolder = GetFolderItem(rootFolderField_pool.Text)
		  pooldata2update.autoExpand = AutoExpandCheck_pool.Value
		  
		  pooldata2update = activeSession.updatePool(pooldata2update)
		  
		  if pooldata2update.error then 
		    MsgBox pooldata2update.errorMessage
		    PoolList.ListIndex = PoolList.ListIndex
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events showMediaBtn
	#tag Event
		Sub Action()
		  dim row as Integer = PoolList.ListIndex
		  if row < 0 then return
		  if PoolList.cell(row,0) = "<NEW>" then return
		  
		  MediaSurvey_WHERE = " pool = '" + PoolList.cell(row,0) + "' "
		  
		  ShowAllPoolMediaBtn.Enabled = true
		  
		  RefreshStop
		  MediaList.DeleteAllRows
		  call refreshUI
		  MainPanel.Value = 2
		  RefreshStart
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events newMediumBtn
	#tag Event
		Sub Action()
		  dim row as Integer = PoolList.ListIndex
		  if row < 0 then
		    me.Enabled = false
		    return
		  end if
		  
		  if PoolList.cell(row,0) = "<NEW>" then
		    me.Enabled = false
		    return
		  end if
		  
		  RefreshStop
		  
		  dim createNext as Limnie.Medium = activeSession.createNextMedium(PoolList.cell(row,0) , false)  // we are obviously not auto-expanding the pool in this case
		  
		  if createNext.error then 
		    MsgBox "Error creating next medium: " + createNext.errorMessage
		  end if
		  
		  call refreshUI
		  RefreshStart
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MediaList
	#tag Event
		Sub Open()
		  me.ColumnCount = 7
		  me.Heading(0) = "Pool"
		  me.Heading(1) = "ID"
		  me.Heading(2) = "UUID"
		  me.Heading(3) = "Max Size (MB)"
		  me.Heading(4) = "Utilization (%)"
		  me.Heading(5) = "Mounted"
		  me.Heading(6) = "Open"
		  
		  me.ColumnWidths = "11%,8%,38%,13%,13%,9%,8%"
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
#tag EndEvents
#tag Events ShowAllPoolMediaBtn
	#tag Event
		Sub Action()
		  MediaSurvey_WHERE = " TRUE "
		  me.Enabled = false
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FilterOpenClosedMediaMenu
	#tag Event
		Sub Open()
		  me.AddRow "  Open && Closed"
		  me.RowTag(me.ListCount - 1) = " true "
		  
		  me.AddRow "  Open"
		  me.RowTag(me.ListCount - 1) = " open = 'true' "
		  
		  me.AddRow "  Closed"
		  me.RowTag(me.ListCount - 1) = " open = 'false' "
		  
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  MediaList.DeleteAllRows
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SingleImportSourceFileField
	#tag Event
		Sub TextChange()
		  dim folderDelimiter as String
		  
		  #if TargetWindows then
		    folderDelimiter = "\"
		  #Else
		    folderDelimiter = "/"
		  #Endif
		  
		  if SingleImportMetadataIsFilename.Value = true then
		    SingleImportCustomMetadataField.Text = me.Text.NthField(folderDelimiter , me.Text.CountFields(folderDelimiter))
		  end if
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  dim file as FolderItem = GetOpenFolderItem("")
		  if file = nil then Return true
		  me.Text = file.NativePath
		  return true
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SingleImportDoitBtn
	#tag Event
		Sub Action()
		  call SingleImport
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SingleImportMetadataIsFilename
	#tag Event
		Sub Action()
		  if me.Value = true then 
		    SingleImportCustomMetadataField.Enabled = false
		    SingleImportCustomMetadataField.Text = SingleImportSourceFileField.Text
		  else
		    SingleImportCustomMetadataField.Enabled = true
		    SingleImportCustomMetadataField.Text = ""
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClearPasswordCacheBtn
	#tag Event
		Sub Action()
		  if IsNull(activeSession) = false then activeSession.clearPoolPasswordCache
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SingleExportSourceUUIDfield
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  select case asc(key)
		    
		  case 3,13
		    
		    call SingleExport
		    return true
		    
		  else
		    return false
		  end Select
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SingleExportDoItBtn
	#tag Event
		Sub Action()
		  call SingleExport
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SingleExportMetadatumIsFilenameCheck
	#tag Event
		Sub Action()
		  if me.Value = true then 
		    SingleImportCustomMetadataField.Text = SingleImportSourceFileField.Text
		  else
		    SingleImportCustomMetadataField.Text = ""
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ObjectExportList
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
		Sub Open()
		  me.ColumnCount = 3
		  me.Heading(0) = "UUID"
		  me.Heading(1) = "Pool"
		  me.Heading(2) = "Target filename or Error"
		  
		  me.ColumnWidths = "35%,20%,45%"
		  me.HasHeading = true
		  me.ColumnsResizable = false
		  me.HeaderType(-1) = Listbox.HeaderTypes.NotSortable
		  me.RequiresSelection = false
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  base.Append( New MenuItem("Clear", "CLEAR"))
		  base.Append( New MenuItem("Copy" , "COPY"))
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  select case hitItem.Tag
		    
		  case "CLEAR"
		    me.DeleteAllRows
		    
		  case "COPY"
		    
		    dim c as new Clipboard
		    dim rowData(-1) as string
		    dim horzDelimiter as String = chr(9)
		    
		    for i as Integer = 0 to me.ListCount - 1
		      rowData.Append me.cell(i,0) + horzDelimiter + me.cell(i,1) + horzDelimiter + me.cell(i,2)
		    next i
		    
		    c.SetText(Join(rowData , EndOfLine))
		    c.Close
		    
		  end select
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Dim row, column As Integer
		  row = Me.RowFromXY(System.MouseX - Me.Left - Self.Left, System.MouseY - Me.Top - Self.Top)
		  
		  if row < 0 then
		    return
		  else
		    MsgBox me.cell(row , 0) + EndOfLine + EndOfLine + me.cell(row,1) + EndOfLine + EndOfLine + me.cell(row,2)
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RefreshTimer
	#tag Event
		Sub Action()
		  
		  dim refreshPoolsOK as String = refreshUI
		  
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
		  ShowURL(LimnieProjectURL)
		  
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
	#tag ViewProperty
		Name="MediaSurvey_WHERE"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
