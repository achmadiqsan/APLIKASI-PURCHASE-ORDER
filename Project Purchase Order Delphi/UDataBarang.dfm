object Form4: TForm4
  Left = 235
  Top = 159
  Width = 928
  Height = 364
  BorderIcons = [biSystemMenu]
  Caption = 'DATA BARANG'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 325
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 285
      Height = 32
      Cursor = crHandPoint
      Caption = 'FORM DATA BARANG'
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
      Brush.Color = 4210752
      Pen.Color = 4210752
    end
    object Label10: TLabel
      Left = 9
      Top = 61
      Width = 83
      Height = 16
      Caption = 'Kode Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 9
      Top = 117
      Width = 87
      Height = 16
      Caption = 'Nama Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 9
      Top = 173
      Width = 95
      Height = 16
      Caption = 'Nama Supplier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 9
      Top = 223
      Width = 45
      Height = 16
      Caption = 'Satuan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 9
      Top = 271
      Width = 87
      Height = 16
      Caption = 'Harga Satuan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 129
      Top = 173
      Width = 91
      Height = 16
      Caption = 'Kode Supplier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Panel2: TPanel
      Left = 399
      Top = 9
      Width = 89
      Height = 33
      Cursor = crHandPoint
      Caption = 'New'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 495
      Top = 9
      Width = 89
      Height = 33
      Cursor = crHandPoint
      Caption = 'Add'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Panel3Click
    end
    object Panel4: TPanel
      Left = 591
      Top = 9
      Width = 89
      Height = 33
      Cursor = crHandPoint
      Caption = 'Update'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Panel4Click
    end
    object Panel5: TPanel
      Left = 687
      Top = 9
      Width = 89
      Height = 33
      Cursor = crHandPoint
      Caption = 'Delete'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Panel5Click
    end
    object Panel6: TPanel
      Left = 783
      Top = 9
      Width = 89
      Height = 33
      Cursor = crHandPoint
      Caption = 'Clear'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Panel6Click
    end
    object Edit1: TEdit
      Left = 9
      Top = 83
      Width = 249
      Height = 22
      Color = 14120960
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 9
      Top = 139
      Width = 249
      Height = 22
      Color = 14120960
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 9
      Top = 195
      Width = 249
      Height = 22
      Color = 14120960
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 9
      Top = 245
      Width = 249
      Height = 22
      Color = 14120960
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object Edit5: TEdit
      Left = 9
      Top = 293
      Width = 249
      Height = 22
      Color = 14120960
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object DBGrid1: TDBGrid
      Left = 272
      Top = 82
      Width = 601
      Height = 231
      Color = 14120960
      DataSource = DM.DSBarang
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'kodeBarang'
          Title.Alignment = taCenter
          Title.Caption = 'KODE BARANG'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namaBarang'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA BARANG'
          Width = 200
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
          FieldName = 'satuan'
          Title.Alignment = taCenter
          Title.Caption = 'SATUAN'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hargaSatuan'
          Title.Alignment = taCenter
          Title.Caption = 'HARGA SATUAN'
          Visible = True
        end>
    end
  end
end
