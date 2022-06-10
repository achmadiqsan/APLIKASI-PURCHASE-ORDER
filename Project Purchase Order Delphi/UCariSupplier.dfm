object Form6: TForm6
  Left = 467
  Top = 201
  Width = 463
  Height = 339
  BorderIcons = [biSystemMenu]
  Caption = 'SEARCH DATA SUPPLIER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 300
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 426
      Height = 32
      Cursor = crHandPoint
      Caption = 'FORM SEARCH DATA SUPPLIER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14120960
      Font.Height = -27
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 10
      Top = 48
      Width = 429
      Height = 4
      Brush.Color = 14120960
      Pen.Color = 14120960
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 62
      Width = 433
      Height = 231
      Color = 14120960
      DataSource = DM.DSSupplier
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'kodeSupplier'
          Title.Alignment = taCenter
          Title.Caption = 'KODE SUPPLIER'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namaSupplier'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA SUPPLIER'
          Width = 200
          Visible = True
        end>
    end
  end
end
