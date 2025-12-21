object Form1: TForm1
  Left = 216
  Top = 153
  Width = 805
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -24
    Top = -24
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = TENTRADA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRSubDetail2: TQRSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1899.708333333333000000)
      Master = QuickRep1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText6: TQRDBText
        Left = 8
        Top = 0
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          0.000000000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = TENTRADA
        DataField = 'ESSENCIATIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 184
        Top = 0
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333400000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = TENTRADA
        DataField = 'ESSENCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 392
        Top = 0
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1037.166666666667000000
          0.000000000000000000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = TENTRADA
        DataField = 'TOTALM3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Mask = '0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 504
        Top = 0
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          0.000000000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = TENTRADA
        DataField = 'VALUNITARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 648
        Top = 0
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = TENTRADA
        DataField = 'VALTOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object DENTRADA: TDataSource
    DataSet = TENTRADA
    Left = 103
    Top = 288
  end
  object TENTRADA: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODDISCRIMINACAO'
        DataType = ftInteger
      end
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftFloat
      end
      item
        Name = 'ESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'VALUNITARIO'
        DataType = ftFloat
      end
      item
        Name = 'VALTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'ALIQICMS'
        DataType = ftFloat
      end
      item
        Name = 'CODIGOPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'SITUACAO_TRIBUTARIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TOTALPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'DATALANCAMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'NFNUMERO'
        DataType = ftFloat
      end
      item
        Name = 'ESSENCIATIPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODIGOESSENCIA'
        DataType = ftFloat
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CPF'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'INSCRICAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COMPRIMENTO'
        DataType = ftFloat
      end
      item
        Name = 'LARGURA'
        DataType = ftFloat
      end
      item
        Name = 'EXPESSURA'
        DataType = ftFloat
      end
      item
        Name = 'TOTALM3'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'IND_SAIDA'
        DescFields = 'ESSENCIA'
        Fields = 'ESSENCIA'
        Options = [ixDescending]
      end>
    StoreDefs = True
    TableName = 'SAIDA_MADEIRAS_DISCRIMINACAO'
    Left = 167
    Top = 288
    object TENTRADACODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TENTRADACODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TENTRADAESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TENTRADAUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TENTRADAQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TENTRADAVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
    end
    object TENTRADAVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object TENTRADAALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object TENTRADACODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TENTRADASITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TENTRADATOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object TENTRADADATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TENTRADANFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object TENTRADAESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TENTRADACODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TENTRADAFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TENTRADACPF: TFloatField
      FieldName = 'CPF'
    end
    object TENTRADAINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
    object TENTRADACOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TENTRADALARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object TENTRADAEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
    end
    object TENTRADATOTALM3: TFloatField
      FieldName = 'TOTALM3'
    end
  end
end
