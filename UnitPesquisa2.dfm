object frmPesquisa2: TfrmPesquisa2
  Tag = 9
  Left = 253
  Top = 157
  Width = 465
  Height = 447
  AutoSize = True
  BorderIcons = []
  Caption = 'Pesquisa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 408
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 8
      Top = 344
      Width = 441
      Height = 9
      Shape = bsBottomLine
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 441
      Height = 49
      Caption = 
        '(Digite o C'#211'DIGO ou NOME DO PRODUTO que deseja Localizar e tecle' +
        ' "ENTER")'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Edit1: TEdit
        Left = 8
        Top = 16
        Width = 425
        Height = 24
        BevelKind = bkTile
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = Edit1Change
        OnKeyDown = Edit1KeyDown
        OnKeyPress = Edit1KeyPress
      end
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 72
      Width = 441
      Height = 265
      Hint = 
        'Selecione o fornecedor desejado e tecle "ENTER" ou clique em "SE' +
        'LECIONAR".'
      DataSource = DCONSULTA
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGOPRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESSENCIA'
          Title.Alignment = taCenter
          Title.Caption = 'Ess'#234'ncia'
          Width = 190
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATALANCAMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Entrada'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NFNUMERO'
          Title.Alignment = taCenter
          Title.Caption = 'NF'
          Width = 74
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 256
      Top = 360
      Width = 97
      Height = 45
      Cursor = crHandPoint
      Caption = '&Selecionar'
      ModalResult = 6
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 352
      Top = 360
      Width = 97
      Height = 45
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Retornar'
      TabOrder = 3
      TabStop = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077FF77FF700F
        77FFFF77FF77F0B0FF7777FF77FF70B307FF00000007F0B330007777770000B3
        307777770708800330777777000880F03077777702088003307700000A2080B3
        3077AAAAAAA200B3307700000AA080B3307777770A0880B330777777000880BB
        307777770708880BB077777777088880B0777777770000000077}
      Layout = blGlyphTop
    end
    object GroupBox2: TGroupBox
      Left = 10
      Top = 356
      Width = 207
      Height = 48
      Caption = '&Ordena'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object ComboBox1: TComboBox
        Left = 8
        Top = 18
        Width = 185
        Height = 21
        BevelKind = bkTile
        Style = csDropDownList
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        Sorted = True
        TabOrder = 0
        TabStop = False
        Text = 'C'#211'DIGO PRODUTO'
        Items.Strings = (
          'C'#211'DIGO PRODUTO'
          'ENTRADA'
          'ESS'#202'NCIA'
          'NF')
      end
    end
    object Panel2: TPanel
      Left = 8
      Top = 56
      Width = 441
      Height = 17
      BevelInner = bvRaised
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object DCONSULTA: TDataSource
    DataSet = TCONSULTA
    Left = 24
    Top = 280
  end
  object TCONSULTA: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    IndexDefs = <
      item
        Name = 'INDCODPRODUTO'
        Fields = 'CODIGOPRODUTO'
      end>
    StoreDefs = True
    TableName = 'ENTRADA_TOROS_DISCRIMINACAO'
    Left = 56
    Top = 280
    object TCONSULTACODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TCONSULTACODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TCONSULTAESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TCONSULTAUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TCONSULTAQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TCONSULTAVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
    end
    object TCONSULTAVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object TCONSULTAALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object TCONSULTACODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TCONSULTASITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TCONSULTATOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object TCONSULTADATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TCONSULTANFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      DisplayFormat = '000000'
    end
    object TCONSULTAESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TCONSULTACODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TCONSULTATRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object TCONSULTATORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object TCONSULTASITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object TCONSULTASITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object TCONSULTASITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
  end
end
