object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 390
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnConfiguracao: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Configura'#231#245'es'
    TabOrder = 0
    OnClick = btnConfiguracaoClick
  end
  object grdTabelas: TDBGrid
    Left = 440
    Top = 8
    Width = 153
    Height = 169
    DataSource = dtsTabelas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 183
    Width = 585
    Height = 169
    DataSource = dtsTabela
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 352
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Ativar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object qryTabelas: TIBQuery
    Database = DM.Banco
    Transaction = DM.Trans
    AfterScroll = qryTabelasAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select rdb$relation_name from rdb$relations'
      'where rdb$system_flag = 0;')
    Left = 112
    Top = 8
    object qryTabelasRDBRELATION_NAME: TIBStringField
      FieldName = 'RDB$RELATION_NAME'
      Origin = 'RDB$RELATIONS.RDB$RELATION_NAME'
      FixedChar = True
      Size = 93
    end
  end
  object dtsTabelas: TDataSource
    DataSet = qryTabelas
    Left = 152
    Top = 8
  end
  object qryTabela: TIBQuery
    Database = DM.Banco
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 144
    Top = 128
  end
  object dtsTabela: TDataSource
    DataSet = qryTabela
    Left = 184
    Top = 128
  end
end
