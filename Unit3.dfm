object Form3: TForm3
  Left = 5
  Top = 229
  AutoSize = True
  Caption = #1044#1086#1076#1072#1074#1072#1085#1085#1103' '#1079#1072#1084#1086#1074#1083#1077#1085#1085#1103
  ClientHeight = 233
  ClientWidth = 1033
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 185
    Height = 105
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 43
      Height = 19
      Caption = ' '#1044#1072#1090#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 53
      Width = 48
      Height = 19
      Caption = #8470' '#1079#1072#1083#1091
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 112
      Top = 53
      Width = 27
      Height = 19
      Caption = #1063#1072#1089
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 8
      Top = 32
      Width = 153
      Height = 21
      DataField = 'Data_zakaz'
      DataSource = Form1.DataSource1
      DynProps = <>
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 0
      Visible = True
    end
    object DBDateTimeEditEh2: TDBDateTimeEditEh
      Left = 95
      Top = 72
      Width = 51
      Height = 21
      DataField = 'Time_zakaz'
      DataSource = Form1.DataSource1
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
      EditFormat = 'HH:NN'
    end
    object DBComboBoxEh1: TDBComboBoxEh
      Left = 8
      Top = 72
      Width = 50
      Height = 21
      DataField = 'Zal_nomer'
      DataSource = Form1.DataSource1
      DynProps = <>
      EditButtons = <>
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
      TabOrder = 2
      Visible = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 200
    Top = 0
    Width = 185
    Height = 105
    Caption = #1043#1086#1089#1090#1110
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 9
      Top = 24
      Width = 67
      Height = 19
      Caption = #1044#1086#1088#1086#1089#1083#1080#1093
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 9
      Top = 64
      Width = 44
      Height = 19
      Caption = #1044#1110#1090#1077#1081
    end
    object DBEditEh3: TDBEditEh
      Left = 88
      Top = 16
      Width = 65
      Height = 27
      DataField = 'Vzrosl_col'
      DataSource = Form1.DataSource1
      DynProps = <>
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object DBEditEh4: TDBEditEh
      Left = 88
      Top = 64
      Width = 65
      Height = 27
      DataField = 'Deti_col'
      DataSource = Form1.DataSource1
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 120
    Width = 185
    Height = 105
    Caption = #1044#1072#1085#1110' '#1087#1088#1086' '#1079#1072#1084#1086#1074#1085#1080#1082#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 9
      Top = 15
      Width = 36
      Height = 19
      Caption = #1055'.'#1030'.'#1041
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 9
      Top = 54
      Width = 88
      Height = 19
      Caption = #8470' '#1090#1077#1083#1077#1092#1086#1085#1091
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBEditEh1: TDBEditEh
      Left = 8
      Top = 32
      Width = 169
      Height = 27
      DataField = 'FIO_zakaz'
      DataSource = Form1.DataSource1
      DynProps = <>
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object DBEditEh2: TDBEditEh
      Left = 8
      Top = 72
      Width = 169
      Height = 27
      DataField = 'Telepone_zakaz'
      DataSource = Form1.DataSource1
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object GroupBox4: TGroupBox
    Left = 192
    Top = 120
    Width = 193
    Height = 73
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 3
    object DBCheckBoxEh1: TDBCheckBoxEh
      Left = 8
      Top = 0
      Width = 81
      Height = 17
      Caption = #1047#1072#1076#1072#1090#1086#1082
      Checked = True
      DataField = 'Zadatok'
      DataSource = Form1.DataSource1
      DynProps = <>
      TabOrder = 0
      OnClick = DBCheckBoxEh1Click
    end
    object DBNumberEditEh2: TDBNumberEditEh
      Left = 8
      Top = 32
      Width = 177
      Height = 27
      DataField = 'Zadatok_col'
      DataSource = Form1.DataSource1
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 192
    Top = 200
    Width = 192
    Height = 25
    DataSource = Form1.DataSource1
    VisibleButtons = [nbInsert, nbPost, nbCancel]
    Flat = True
    TabOrder = 4
  end
  object GroupBox5: TGroupBox
    Left = 391
    Top = 8
    Width = 642
    Height = 225
    TabOrder = 5
    object DBGridEh1: TDBGridEh
      Left = 3
      Top = 3
      Width = 636
      Height = 217
      DataSource = Form1.DataSource1
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      SearchPanel.Enabled = True
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Data_zakaz'
          Footers = <>
          Title.Caption = #1044#1072#1090#1072' '#1079#1072#1084#1086#1074#1083#1077#1085#1085#1103
          Width = 96
          WordWrap = True
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Zal_nomer'
          Footers = <>
          Title.Caption = #8470' '#1079#1072#1083#1091
          Width = 42
          WordWrap = True
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Deti_col'
          Footers = <>
          Title.Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1076#1110#1090#1077#1081
          WordWrap = True
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Vzrosl_col'
          Footers = <>
          Title.Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1076#1086#1088#1086#1089#1083#1080#1093
          WordWrap = True
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Zadatok'
          Footers = <>
          Title.Caption = #1047#1072#1076#1072#1090#1086#1082
          WordWrap = True
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Zadatok_col'
          Footers = <>
          Title.Caption = #1043#1086#1088#1086#1096#1077#1081
          Width = 49
          WordWrap = True
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FIO_zakaz'
          Footers = <>
          Title.Caption = #1055'.'#1030'.'#1041
          Width = 77
          WordWrap = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Telepone_zakaz'
          Footers = <>
          Title.Caption = #1058#1077#1083#1077#1092#1086#1085
          WordWrap = True
        end
        item
          CellButtons = <>
          DisplayFormat = 'HH:MM'
          DynProps = <>
          EditButtons = <>
          FieldName = 'Time_zakaz'
          Footers = <>
          Title.Caption = #1063#1072#1089
          Width = 35
          WordWrap = True
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
