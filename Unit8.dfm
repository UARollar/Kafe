object Form8: TForm8
  Left = 0
  Top = 0
  Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1086#1082' '#1085#1072' '#1082#1091#1093#1085#1102
  ClientHeight = 604
  ClientWidth = 1049
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxPreview1: TfrxPreview
    Left = 0
    Top = 0
    Width = 1049
    Height = 604
    Align = alClient
    OutlineVisible = True
    OutlineWidth = 121
    ThumbnailVisible = False
    UseReportHints = True
    ExplicitLeft = 496
    ExplicitTop = 176
    ExplicitWidth = 100
    ExplicitHeight = 100
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 280
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 376
    Top = 120
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 520
    Top = 304
  end
  object frxReport1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43018.509427430550000000
    ReportOptions.LastChange = 43018.509427430550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 184
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
