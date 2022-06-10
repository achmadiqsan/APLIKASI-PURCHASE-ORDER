object Form5: TForm5
  Left = 146
  Top = 151
  Width = 902
  Height = 400
  BorderIcons = [biSystemMenu]
  Caption = 'VIEW PURCHASE ORDER'
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
    Width = 886
    Height = 361
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 426
      Height = 32
      Cursor = crHandPoint
      Caption = 'FORM DATA PURCHASE ORDER'
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
      Width = 864
      Height = 4
      Brush.Color = 14120960
      Pen.Color = 14120960
    end
    object Label10: TLabel
      Left = 178
      Top = 57
      Width = 69
      Height = 16
      Caption = 'Kata Kunci'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14120960
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 61
      Width = 80
      Height = 16
      Caption = 'Berdasarkan'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14120960
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 410
      Top = 73
      Width = 44
      Height = 16
      Caption = 'No. PO'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14120960
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Panel5: TPanel
      Left = 687
      Top = 65
      Width = 89
      Height = 33
      Cursor = crHandPoint
      Caption = 'Cetak'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Panel5Click
    end
    object Panel6: TPanel
      Left = 783
      Top = 65
      Width = 89
      Height = 33
      Cursor = crHandPoint
      Caption = 'Refresh'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Panel6Click
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 106
      Width = 868
      Height = 231
      Color = 14120960
      DataSource = DM.DSHeaderPO
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'noPO'
          Title.Alignment = taCenter
          Title.Caption = 'NO. PO'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tgl'
          Title.Alignment = taCenter
          Title.Caption = 'TANGGAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kodeSupplier'
          Title.Alignment = taCenter
          Title.Caption = 'KODE SUPPLIER'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namaSupplier'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA SUPPLIER'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alamatSupplier'
          Title.Alignment = taCenter
          Title.Caption = 'ALAMAT SUPPLIER'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'noTelpSupplier'
          Title.Alignment = taCenter
          Title.Caption = 'NO. TELPON SUPPLIER'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Title.Alignment = taCenter
          Title.Caption = 'EMAIL SUPPLIER'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kepada'
          Title.Alignment = taCenter
          Title.Caption = 'KEPADA'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alamatPenerima'
          Title.Alignment = taCenter
          Title.Caption = 'ALAMAT PENERIMA'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'noTelpPenerima'
          Title.Alignment = taCenter
          Title.Caption = 'NO. TELPON PENERIMA'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'emailPenerima'
          Title.Alignment = taCenter
          Title.Caption = 'EMAIL PENERIMA'
          Width = 200
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 178
      Top = 79
      Width = 176
      Height = 22
      Color = 14120960
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = Edit1Change
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 80
      Width = 161
      Height = 21
      Color = 14120960
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'Nama Supplier'
        'Kode Supplier'
        'No. PO')
    end
  end
end
