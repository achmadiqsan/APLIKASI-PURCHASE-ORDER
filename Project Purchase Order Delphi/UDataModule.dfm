object DM: TDM
  OldCreateOrder = False
  Left = 434
  Top = 149
  Height = 427
  Width = 515
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Project Purchase' +
      ' Order Delphi\DatabasePurchaseOrder.mdb;Persist Security Info=Fa' +
      'lse'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 16
  end
  object ADOQPerusahaan: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM dataPerusahaan')
    Left = 128
    Top = 24
  end
  object ADOQSupplier: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataSupplier')
    Left = 32
    Top = 72
  end
  object DSSupplier: TDataSource
    DataSet = ADOQSupplier
    Left = 112
    Top = 96
  end
  object ADOQKodeSupplier: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataSupplier')
    Left = 192
    Top = 64
  end
  object ADOQBarang: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataBarang')
    Left = 24
    Top = 120
    object ADOQBarangkodeBarang: TWideStringField
      FieldName = 'kodeBarang'
      Size = 255
    end
    object ADOQBarangnamaBarang: TWideStringField
      FieldName = 'namaBarang'
      Size = 255
    end
    object ADOQBarangkodeSupplier: TWideStringField
      FieldName = 'kodeSupplier'
      Size = 255
    end
    object ADOQBarangnamaSupplier: TWideStringField
      FieldName = 'namaSupplier'
      Size = 255
    end
    object ADOQBarangsatuan: TWideStringField
      FieldName = 'satuan'
      Size = 255
    end
    object ADOQBaranghargaSatuan: TIntegerField
      FieldName = 'hargaSatuan'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
  end
  object ADOQKodeBarang: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataBarang')
    Left = 168
    Top = 120
  end
  object DSBarang: TDataSource
    DataSet = ADOQBarang
    Left = 96
    Top = 152
  end
  object ADOQHeaderPO: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM headerDataPO')
    Left = 32
    Top = 176
  end
  object ADOQKodePO: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM headerDataPO')
    Left = 167
    Top = 281
  end
  object DSHeaderPO: TDataSource
    DataSet = ADOQHeaderPO
    Left = 112
    Top = 208
  end
  object ADOQDetailPO: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM detailDataPO')
    Left = 32
    Top = 232
    object ADOQDetailPOnoPO: TWideStringField
      FieldName = 'noPO'
      Size = 255
    end
    object ADOQDetailPOtglPO: TDateTimeField
      FieldName = 'tglPO'
    end
    object ADOQDetailPOkodeBarang: TWideStringField
      FieldName = 'kodeBarang'
      Size = 255
    end
    object ADOQDetailPOnamaBarang: TWideStringField
      FieldName = 'namaBarang'
      Size = 255
    end
    object ADOQDetailPOqty: TIntegerField
      FieldName = 'qty'
    end
    object ADOQDetailPOsatuan: TWideStringField
      FieldName = 'satuan'
      Size = 255
    end
    object ADOQDetailPOhargaSatuan: TIntegerField
      FieldName = 'hargaSatuan'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
    object ADOQDetailPOtotal: TIntegerField
      FieldName = 'total'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
  end
  object DSDetailPO: TDataSource
    DataSet = ADOQDetailPO
    Left = 112
    Top = 264
  end
  object ADOQTtlBayar: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM detailDataPO')
    Left = 88
    Top = 318
  end
  object ADOQTtlHarga: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM detailDataPO')
    Left = 31
    Top = 288
  end
  object ADOQPajak: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM pajak')
    Left = 224
    Top = 8
  end
  object ADOQLapHeader: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM headerDataPO')
    Left = 184
    Top = 171
    object ADOQLapHeadernoPO: TWideStringField
      FieldName = 'noPO'
      Size = 255
    end
    object ADOQLapHeadertgl: TDateTimeField
      FieldName = 'tgl'
    end
    object ADOQLapHeaderkodeSupplier: TWideStringField
      FieldName = 'kodeSupplier'
      Size = 255
    end
    object ADOQLapHeadernamaSupplier: TWideStringField
      FieldName = 'namaSupplier'
      Size = 255
    end
    object ADOQLapHeaderalamatSupplier: TWideStringField
      FieldName = 'alamatSupplier'
      Size = 255
    end
    object ADOQLapHeadernoTelpSupplier: TWideStringField
      FieldName = 'noTelpSupplier'
      Size = 255
    end
    object ADOQLapHeaderemail: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object ADOQLapHeaderkepada: TWideStringField
      FieldName = 'kepada'
      Size = 255
    end
    object ADOQLapHeaderalamatPenerima: TWideStringField
      FieldName = 'alamatPenerima'
      Size = 255
    end
    object ADOQLapHeadernoTelpPenerima: TWideStringField
      FieldName = 'noTelpPenerima'
      Size = 255
    end
    object ADOQLapHeaderemailPenerima: TWideStringField
      FieldName = 'emailPenerima'
      Size = 255
    end
    object ADOQLapHeadertotalHarga: TIntegerField
      FieldName = 'totalHarga'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
    object ADOQLapHeadertotalbayar: TIntegerField
      FieldName = 'totalbayar'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
    object ADOQLapHeaderpersenDiskon: TIntegerField
      FieldName = 'persenDiskon'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
    object ADOQLapHeadernilaiDiskon: TIntegerField
      FieldName = 'nilaiDiskon'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
  end
  object ADOQLapDetail: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM detailDataPO')
    Left = 180
    Top = 219
    object ADOQLapDetailnoPO: TWideStringField
      FieldName = 'noPO'
      Size = 255
    end
    object ADOQLapDetailtglPO: TDateTimeField
      FieldName = 'tglPO'
    end
    object ADOQLapDetailkodeBarang: TWideStringField
      FieldName = 'kodeBarang'
      Size = 255
    end
    object ADOQLapDetailnamaBarang: TWideStringField
      FieldName = 'namaBarang'
      Size = 255
    end
    object ADOQLapDetailqty: TIntegerField
      FieldName = 'qty'
    end
    object ADOQLapDetailsatuan: TWideStringField
      FieldName = 'satuan'
      Size = 255
    end
    object ADOQLapDetailhargaSatuan: TIntegerField
      FieldName = 'hargaSatuan'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
    object ADOQLapDetailtotal: TIntegerField
      FieldName = 'total'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
  end
  object ADOQnilaiOrder: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM detailDataPO')
    Left = 174
    Top = 335
  end
  object ADOQjmlOrder: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM detailDataPO')
    Left = 236
    Top = 251
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT COUNT(*) AS jml_supplier FROM DataSupplier;')
    Left = 312
    Top = 64
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT COUNT(*) AS jml_po FROM headerDataPO;')
    Left = 392
    Top = 64
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT SUM(qty) AS jml_barang FROM detailDataPO;')
    Left = 312
    Top = 128
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT SUM(total) AS TTL FROM detailDataPO')
    Left = 392
    Top = 128
  end
  object ADOQuery5: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataSupplier')
    Left = 320
    Top = 224
  end
  object ADOQuery6: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataSupplier')
    Left = 408
    Top = 216
  end
end
