object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ConversorBancoAPAE'
  ClientHeight = 435
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 48
    Top = 154
    Width = 320
    Height = 273
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 1
  end
  object IBQuery1: TIBQuery
    Database = DM.Banco
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM ALUNO')
    Left = 288
    Top = 8
    object IBQuery1CODALUNO: TIntegerField
      FieldName = 'CODALUNO'
      Origin = 'ALUNO.CODALUNO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1NOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ALUNO.NOME'
      Required = True
      Size = 50
    end
    object IBQuery1DATANASC: TDateField
      FieldName = 'DATANASC'
      Origin = 'ALUNO.DATANASC'
      Required = True
    end
    object IBQuery1SEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'ALUNO.SEXO'
      Size = 1
    end
    object IBQuery1OBSERVACAO: TWideMemoField
      FieldName = 'OBSERVACAO'
      Origin = 'ALUNO.OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object IBQuery1CODDEFICIENCIA: TIntegerField
      FieldName = 'CODDEFICIENCIA'
      Origin = 'ALUNO.CODDEFICIENCIA'
    end
    object IBQuery1CODTURMA: TIntegerField
      FieldName = 'CODTURMA'
      Origin = 'ALUNO.CODTURMA'
    end
    object IBQuery1EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'ALUNO.EMAIL'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 288
    Top = 152
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 288
    Top = 104
    object ClientDataSet1CODALUNO: TIntegerField
      FieldName = 'CODALUNO'
      Origin = 'ALUNO.CODALUNO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1NOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'ALUNO.NOME'
      Required = True
      Size = 50
    end
    object ClientDataSet1DATANASC: TDateField
      FieldName = 'DATANASC'
      Origin = 'ALUNO.DATANASC'
      Required = True
    end
    object ClientDataSet1SEXO: TWideStringField
      FieldName = 'SEXO'
      Origin = 'ALUNO.SEXO'
      Size = 1
    end
    object ClientDataSet1OBSERVACAO: TWideMemoField
      FieldName = 'OBSERVACAO'
      Origin = 'ALUNO.OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 4
    end
    object ClientDataSet1CODDEFICIENCIA: TIntegerField
      FieldName = 'CODDEFICIENCIA'
      Origin = 'ALUNO.CODDEFICIENCIA'
    end
    object ClientDataSet1CODTURMA: TIntegerField
      FieldName = 'CODTURMA'
      Origin = 'ALUNO.CODTURMA'
    end
    object ClientDataSet1EMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'ALUNO.EMAIL'
      Size = 50
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = IBQuery1
    Left = 288
    Top = 56
  end
end
