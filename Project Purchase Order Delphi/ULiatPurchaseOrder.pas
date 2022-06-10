unit ULiatPurchaseOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    procedure Panel6Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  UDataModule, DB, ULapPO;

{$R *.dfm}

procedure TForm5.Panel6Click(Sender: TObject);
begin
  ComboBox1.Text;
  Edit1.Clear;
  Label3.Caption := 'No. PO';
  DM.ADOQHeaderPO.Close;
  DM.ADOQHeaderPO.Open;
end;

procedure TForm5.Edit1Change(Sender: TObject);
begin
  if ComboBox1.Text = '' then
    begin
      DM.ADOQHeaderPO.Filtered := False;
    end
  else
  if ComboBox1.Text = 'Nama Supplier' then
    begin
      if Edit1.Text ='' then DM.ADOQHeaderPO.Filtered := False
      else
        begin
          DM.ADOQHeaderPO.Filtered := False;
          DM.ADOQHeaderPO.Filter :='namaSupplier LIKE '+Quotedstr('%'+Edit1.Text+'%');
          DM.ADOQHeaderPO.Filtered := True;
        end;
    end
  else
  if ComboBox1.Text = 'Kode Supplier' then
    begin
      if Edit1.Text ='' then DM.ADOQHeaderPO.Filtered := False
      else
        begin
          DM.ADOQHeaderPO.Filtered := False;
          DM.ADOQHeaderPO.Filter :='kodeSupplier LIKE '+Quotedstr('%'+Edit1.Text+'%');
          DM.ADOQHeaderPO.Filtered := True;
        end;
    end
  else
  if ComboBox1.Text = 'No. PO' then
    begin
      if Edit1.Text ='' then DM.ADOQHeaderPO.Filtered := False
      else
        begin
          DM.ADOQHeaderPO.Filtered := False;
          DM.ADOQHeaderPO.Filter :='noPO LIKE '+Quotedstr('%'+Edit1.Text+'%');
          DM.ADOQHeaderPO.Filtered := True;
        end;
    end;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
  ComboBox1.Text := '';
  Edit1.Clear;
  Label3.Caption := 'No. PO';
  DM.ADOQHeaderPO.Close;
  DM.ADOQHeaderPO.Open;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
  if Dm.ADOQHeaderPO.IsEmpty then MessageDlg('Data Purchase Order Kosong',mtInformation,[mbok],0) else
  begin
    Label3.Caption := DM.ADOQHeaderPO['noPo'];
  end;
end;

procedure TForm5.Panel5Click(Sender: TObject);
var
  data,data1,data2,data3 : String;
begin
  if (label3.Caption = 'No. PO') or (label3.Caption = '') then MessageDlg('Silahkan Pilih Kembali Data yang ingin Anda Cetak',mtInformation,[mbok],0) else
  begin
    //
    with DM.ADOQLapHeader do
    begin
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM headerDataPO WHERE noPO = "'+Label3.Caption+'"');
      Open;
    end;
    //
    with DM.ADOQLapDetail do
    begin
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM detailDataPO WHERE noPO = "'+Label3.Caption+'"');
      Open;
    end;
    //
    Form7.QRLabel7.Caption := DM.ADOQLapHeader['noPO'];
    Form7.QRLabel8.Caption := DM.ADOQLapHeader['tgl'];
    //
    Form7.QRLabel11.Caption := DM.ADOQLapHeader['namaSupplier'];
    Form7.QRLabel13.Caption := DM.ADOQLapHeader['alamatSupplier'];
    Form7.QRLabel14.Caption := DM.ADOQLapHeader['noTelpSupplier'];
    Form7.QRLabel15.Caption := DM.ADOQLapHeader['email'];
    //
    Form7.QRLabel12.Caption := DM.ADOQLapHeader['kepada'];
    Form7.QRLabel16.Caption := DM.ADOQLapHeader['alamatPenerima'];
    Form7.QRLabel17.Caption := DM.ADOQLapHeader['noTelpPenerima'];
    Form7.QRLabel18.Caption := DM.ADOQLapHeader['emailPenerima'];
    //
    Form7.QRLabel29.Caption := 'Pajak ' + FloatToStr(DM.ADOQPajak['ppn']) + ' %';
    //
    data := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',DM.ADOQLapHeader['totalHarga']);
    data1 := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',DM.ADOQLapHeader['nilaiDiskon']);
    data2 := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',DM.ADOQLapHeader['totalbayar']);
    Form7.QRLabel33.Caption := data;
    Form7.QRLabel34.Caption := data1;
    Form7.QRLabel38.Caption := data2;
    //
    data3 := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',DM.ADOQLapHeader['totalHarga'] * (DM.ADOQPajak['ppn'] / 100));
    Form7.QRLabel35.Caption := data3;
    Form7.QuickRep1.Preview;
  end;
end;

end.
