unit UDataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQPerusahaan: TADOQuery;
    ADOQSupplier: TADOQuery;
    DSSupplier: TDataSource;
    ADOQKodeSupplier: TADOQuery;
    ADOQBarang: TADOQuery;
    ADOQKodeBarang: TADOQuery;
    DSBarang: TDataSource;
    ADOQBarangkodeBarang: TWideStringField;
    ADOQBarangnamaBarang: TWideStringField;
    ADOQBarangkodeSupplier: TWideStringField;
    ADOQBarangnamaSupplier: TWideStringField;
    ADOQBarangsatuan: TWideStringField;
    ADOQBaranghargaSatuan: TIntegerField;
    ADOQHeaderPO: TADOQuery;
    ADOQKodePO: TADOQuery;
    DSHeaderPO: TDataSource;
    ADOQDetailPO: TADOQuery;
    DSDetailPO: TDataSource;
    ADOQDetailPOnoPO: TWideStringField;
    ADOQDetailPOtglPO: TDateTimeField;
    ADOQDetailPOkodeBarang: TWideStringField;
    ADOQDetailPOnamaBarang: TWideStringField;
    ADOQDetailPOqty: TIntegerField;
    ADOQDetailPOsatuan: TWideStringField;
    ADOQDetailPOhargaSatuan: TIntegerField;
    ADOQDetailPOtotal: TIntegerField;
    ADOQTtlBayar: TADOQuery;
    ADOQTtlHarga: TADOQuery;
    ADOQPajak: TADOQuery;
    ADOQLapHeader: TADOQuery;
    ADOQLapDetail: TADOQuery;
    ADOQLapHeadernoPO: TWideStringField;
    ADOQLapHeadertgl: TDateTimeField;
    ADOQLapHeaderkodeSupplier: TWideStringField;
    ADOQLapHeadernamaSupplier: TWideStringField;
    ADOQLapHeaderalamatSupplier: TWideStringField;
    ADOQLapHeadernoTelpSupplier: TWideStringField;
    ADOQLapHeaderemail: TWideStringField;
    ADOQLapHeaderkepada: TWideStringField;
    ADOQLapHeaderalamatPenerima: TWideStringField;
    ADOQLapHeadernoTelpPenerima: TWideStringField;
    ADOQLapHeaderemailPenerima: TWideStringField;
    ADOQLapHeadertotalHarga: TIntegerField;
    ADOQLapHeadertotalbayar: TIntegerField;
    ADOQLapHeaderpersenDiskon: TIntegerField;
    ADOQLapHeadernilaiDiskon: TIntegerField;
    ADOQLapDetailnoPO: TWideStringField;
    ADOQLapDetailtglPO: TDateTimeField;
    ADOQLapDetailkodeBarang: TWideStringField;
    ADOQLapDetailnamaBarang: TWideStringField;
    ADOQLapDetailqty: TIntegerField;
    ADOQLapDetailsatuan: TWideStringField;
    ADOQLapDetailhargaSatuan: TIntegerField;
    ADOQLapDetailtotal: TIntegerField;
    ADOQnilaiOrder: TADOQuery;
    ADOQjmlOrder: TADOQuery;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery;
    ADOQuery6: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
