object frmDemoGrafico1: TfrmDemoGrafico1
  Left = 349
  Top = 118
  ActiveControl = BitBtn1
  BorderStyle = bsNone
  Caption = 'Grafico'
  ClientHeight = 403
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 679
    Height = 3
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 679
    Height = 24
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' ESC - Retorna'
    Color = 8537634
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 679
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = 'Per'#237'odo.:'
    Color = clBtnHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object DataInicial: TLabel
      Left = 92
      Top = 5
      Width = 110
      Height = 18
      Caption = 'DataInicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DataFinal: TLabel
      Left = 292
      Top = 5
      Width = 110
      Height = 18
      Caption = 'DataInicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 236
      Top = 6
      Width = 10
      Height = 18
      Caption = #225
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBCGrafico: TDBChart
    Left = 0
    Top = 25
    Width = 679
    Height = 351
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Gradient.EndColor = clWhite
    Gradient.StartColor = 8404992
    Gradient.Visible = True
    Title.Font.Charset = ANSI_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -24
    Title.Font.Name = 'Courier New'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      '')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    Legend.TextStyle = ltsPlain
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Align = alClient
    BevelWidth = 0
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 24
      Top = 256
      Width = 0
      Height = 25
      Cancel = True
      Caption = 'BitBtn1'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = Query1
      SeriesColor = clRed
      ValueFormat = '0.00'
      XLabelsSource = 'ESSENCIA'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
      PieValues.ValueSource = 'VAL_TOT_NOTA'
      object TeeFunction1: TSubtractTeeFunction
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 8
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 328
  end
  object Query1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SAIDA_FECHAMENTO')
    Left = 384
    Top = 328
    object Query1DATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'SAIDA_FECHAMENTO.DATA'
    end
    object Query1ESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'SAIDA_FECHAMENTO.ESSENCIA'
      Size = 30
    end
    object Query1VAL_TOT_NOTA: TFloatField
      FieldName = 'VAL_TOT_NOTA'
      Origin = 'SAIDA_FECHAMENTO.VAL_TOT_NOTA'
    end
  end
end
