object Form3: TForm3
  Left = 96
  Top = 47
  Width = 1181
  Height = 663
  BorderIcons = [biSystemMenu]
  Caption = 'PURCHASE ORDER'
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
    Width = 1165
    Height = 624
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object Shape1: TShape
      Left = 10
      Top = 78
      Width = 1144
      Height = 4
      Brush.Color = 4210752
      Pen.Color = 4210752
    end
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 347
      Height = 32
      Cursor = crHandPoint
      Caption = 'FORM PURCHASE ORDER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -27
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 9
      Top = 52
      Width = 51
      Height = 16
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 148
      Top = 52
      Width = 44
      Height = 16
      Caption = 'No. PO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 8
      Top = 551
      Width = 56
      Height = 16
      Caption = 'Diskon %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 654
      Top = 551
      Width = 73
      Height = 16
      Caption = 'Total Harga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 920
      Top = 551
      Width = 72
      Height = 16
      Caption = 'Total Bayar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 627
      Top = 577
      Width = 21
      Height = 16
      Caption = 'Rp.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 894
      Top = 577
      Width = 21
      Height = 16
      Caption = 'Rp.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label24: TLabel
      Left = 174
      Top = 577
      Width = 21
      Height = 16
      Caption = 'Rp.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label26: TLabel
      Left = 430
      Top = 569
      Width = 7
      Height = 16
      Caption = '0'
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
      Left = 871
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
      Left = 967
      Top = 9
      Width = 89
      Height = 33
      Cursor = crHandPoint
      Caption = 'Save'
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
      Left = 1063
      Top = 9
      Width = 89
      Height = 33
      Cursor = crHandPoint
      Caption = 'Reset'
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
    object GroupBox1: TGroupBox
      Left = 8
      Top = 88
      Width = 545
      Height = 217
      Caption = 'Purchase From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label8: TLabel
        Left = 17
        Top = 42
        Width = 54
        Height = 16
        Caption = 'Supplier'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 17
        Top = 88
        Width = 103
        Height = 16
        Caption = 'Alamat Supplier'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 17
        Top = 134
        Width = 48
        Height = 16
        Caption = 'No Telp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 17
        Top = 182
        Width = 36
        Height = 16
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 194
        Top = 16
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
      object ComboBox2: TComboBox
        Left = 153
        Top = 38
        Width = 361
        Height = 27
        Color = 14120960
        ItemHeight = 19
        TabOrder = 0
        OnChange = ComboBox2Change
      end
      object Edit4: TEdit
        Left = 152
        Top = 86
        Width = 361
        Height = 27
        Color = 14120960
        TabOrder = 1
      end
      object Edit5: TEdit
        Left = 152
        Top = 134
        Width = 361
        Height = 27
        Color = 14120960
        TabOrder = 2
      end
      object Edit6: TEdit
        Left = 152
        Top = 174
        Width = 361
        Height = 27
        Color = 14120960
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 600
      Top = 88
      Width = 553
      Height = 217
      Caption = 'Ship To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label13: TLabel
        Left = 21
        Top = 44
        Width = 117
        Height = 16
        Caption = 'Nama Perusahaan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 21
        Top = 90
        Width = 125
        Height = 16
        Caption = 'Alamat Perusahaan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 21
        Top = 136
        Width = 48
        Height = 16
        Caption = 'No Telp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 21
        Top = 184
        Width = 116
        Height = 16
        Caption = 'Email Perusahaan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Edit7: TEdit
        Left = 156
        Top = 88
        Width = 361
        Height = 27
        Color = 14120960
        TabOrder = 0
      end
      object Edit8: TEdit
        Left = 156
        Top = 136
        Width = 361
        Height = 27
        Color = 14120960
        TabOrder = 1
      end
      object Edit9: TEdit
        Left = 156
        Top = 176
        Width = 361
        Height = 27
        Color = 14120960
        TabOrder = 2
      end
      object Edit10: TEdit
        Left = 156
        Top = 40
        Width = 361
        Height = 27
        Color = 14120960
        TabOrder = 3
      end
      object CheckBox1: TCheckBox
        Left = 264
        Top = 11
        Width = 249
        Height = 23
        Caption = 'Sama dengan Data Perusahaan'
        TabOrder = 4
        OnClick = CheckBox1Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 312
      Width = 1145
      Height = 76
      Caption = 'Order Barang'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      object Label17: TLabel
        Left = 7
        Top = 23
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
      object Label18: TLabel
        Left = 190
        Top = 23
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
      object Label19: TLabel
        Left = 426
        Top = 23
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
      object Label20: TLabel
        Left = 519
        Top = 23
        Width = 47
        Height = 16
        Caption = 'Jumlah'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 614
        Top = 23
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
      object Label22: TLabel
        Left = 790
        Top = 23
        Width = 73
        Height = 16
        Caption = 'Total Harga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 583
        Top = 17
        Width = 7
        Height = 16
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Edit11: TEdit
        Left = 6
        Top = 41
        Width = 179
        Height = 27
        Color = 14120960
        TabOrder = 0
      end
      object Edit12: TEdit
        Left = 189
        Top = 41
        Width = 232
        Height = 27
        Color = 14120960
        TabOrder = 1
      end
      object Edit13: TEdit
        Left = 425
        Top = 41
        Width = 88
        Height = 27
        Color = 14120960
        TabOrder = 2
      end
      object Edit14: TEdit
        Left = 518
        Top = 41
        Width = 88
        Height = 27
        Color = 14120960
        TabOrder = 3
        OnChange = Edit14Change
        OnKeyPress = Edit14KeyPress
      end
      object Edit15: TEdit
        Left = 613
        Top = 41
        Width = 168
        Height = 27
        Color = 14120960
        TabOrder = 4
      end
      object Panel5: TPanel
        Left = 1051
        Top = 35
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
        TabOrder = 5
        OnClick = Panel5Click
      end
      object Panel6: TPanel
        Left = 958
        Top = 35
        Width = 89
        Height = 33
        Cursor = crHandPoint
        Caption = 'Save'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = Panel6Click
      end
      object Edit16: TEdit
        Left = 789
        Top = 41
        Width = 163
        Height = 27
        Color = 14120960
        TabOrder = 7
      end
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 392
      Width = 345
      Height = 153
      Color = 14120960
      DataSource = DM.DSBarang
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kodeSupplier'
          Title.Alignment = taCenter
          Title.Caption = 'KODE SUPPLIER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namaSupplier'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA SUPPLIER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'satuan'
          Title.Alignment = taCenter
          Title.Caption = 'SATUAN'
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
    object DBGrid2: TDBGrid
      Left = 360
      Top = 392
      Width = 793
      Height = 153
      Color = 14120960
      DataSource = DM.DSDetailPO
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid2CellClick
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
          FieldName = 'qty'
          Title.Alignment = taCenter
          Title.Caption = 'QTY'
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
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taCenter
          Title.Caption = 'TOTAL'
          Visible = True
        end>
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 576
      Width = 145
      Height = 21
      Color = 14120960
      ItemHeight = 13
      TabOrder = 8
      OnChange = ComboBox1Change
      Items.Strings = (
        '0'
        '5'
        '10'
        '15')
    end
    object Edit1: TEdit
      Left = 200
      Top = 576
      Width = 169
      Height = 21
      Color = 14120960
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object Edit3: TEdit
      Left = 920
      Top = 576
      Width = 233
      Height = 21
      Color = 14120960
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object Edit2: TEdit
      Left = 654
      Top = 576
      Width = 233
      Height = 21
      Color = 14120960
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnChange = Edit2Change
    end
  end
end
