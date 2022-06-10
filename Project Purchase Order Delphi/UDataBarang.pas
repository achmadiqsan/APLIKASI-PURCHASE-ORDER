unit UDataBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    procedure Panel2Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Panel3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Panel6Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  UDataModule, UCariSupplier;

{$R *.dfm}

procedure TForm4.Panel2Click(Sender: TObject);
var
  id : string;
begin
  // coding untuk memilih kode dengan nomor yg paling terbesar :
  DM.ADOQKodeBarang.Close;
  DM.ADOQKodeBarang.SQL.Clear;
  DM.ADOQKodeBarang.SQL.Add('SELECT TOP 1 DataBarang.kodeBarang FROM DataBarang');
  DM.ADOQKodeBarang.SQL.Add('ORDER BY DataBarang.kodeBarang DESC');
  DM.ADOQKodeBarang.Open;

  // coding untuk mengcopy nilai yang di seleksi :
  id := Copy(DM.ADOQKodeBarang.Fields[0].AsString, 4, 7);

  // coding jika seleksi = 0 maka id = 00001 jika tdk maka tambah 1 :
  if id <> '' then id := FormatFLoat('0000000', StrtoInt(id) + 1)
  else id := '0000001';

  // coding melakukan pengabungan kode string dan integer :
  Form4.Edit1.Text := 'BR-' + id;
end;

procedure TForm4.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Form6.Show;
  end;
end;

procedure TForm4.Panel3Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('Kode Barang Kosong',mtinformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Nama Barang Kosong',mtinformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('Nama Supplier',mtinformation,[mbok],0) else
  if Edit4.Text = '' then MessageDlg('Satuan',mtinformation,[mbok],0) else
  if Edit5.Text = '' then MessageDlg('Harga Satuan',mtinformation,[mbok],0) else
  begin
    DM.ADOQBarang.Append;
    DM.ADOQBarang['kodeBarang'] := Edit1.Text;
    DM.ADOQBarang['namaBarang'] := Edit2.Text;
    DM.ADOQBarang['kodeSupplier'] := Label6.Caption;
    DM.ADOQBarang['namaSupplier'] := Edit3.Text;
    DM.ADOQBarang['satuan'] := Edit4.Text;
    DM.ADOQBarang['hargaSatuan'] := Edit5.Text;
    DM.ADOQBarang.Post;
    Edit1.Clear;
    Edit2.Clear;
    Label6.Caption := '';
    Edit3.Clear;
    Edit4.Clear;
    Edit5.Clear;
  end;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
  if Dm.ADOQBarang.IsEmpty then MessageDlg('Data Barang Kosong',mtInformation,[mbok],0) else
  begin
    //
    Edit1.Text := DM.ADOQBarang['kodeBarang'];
    Edit2.Text := DM.ADOQBarang['namaBarang'];
    Label6.Caption := DM.ADOQBarang['kodeSupplier'];
    Edit3.Text := DM.ADOQBarang['namaSupplier'];
    Edit4.Text := DM.ADOQBarang['satuan'];
    Edit5.Text := DM.ADOQBarang['hargaSatuan'];
    //
    Panel2.Enabled := False;
    Panel3.Enabled := False;
  end;
end;

procedure TForm4.Panel6Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Label6.Caption := '';
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Panel2.Enabled := True;
  Panel3.Enabled := True;
end;

procedure TForm4.Panel4Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('Kode Barang Kosong',mtinformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Nama Barang Kosong',mtinformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('Nama Supplier',mtinformation,[mbok],0) else
  if Edit4.Text = '' then MessageDlg('Satuan',mtinformation,[mbok],0) else
  if Edit5.Text = '' then MessageDlg('Harga Satuan',mtinformation,[mbok],0) else
  begin
    //
    DM.ADOQBarang.Edit;
    DM.ADOQBarang['kodeBarang'] := Edit1.Text;
    DM.ADOQBarang['namaBarang'] := Edit2.Text;
    DM.ADOQBarang['kodeSupplier'] := Label6.Caption;
    DM.ADOQBarang['namaSupplier'] := Edit3.Text;
    DM.ADOQBarang['satuan'] := Edit4.Text;
    DM.ADOQBarang['hargaSatuan'] := Edit5.Text;
    DM.ADOQBarang.Post;
    //
    Edit1.Clear;
    Edit2.Clear;
    Label6.Caption := '';
    Edit3.Clear;
    Edit4.Clear;
    Edit5.Clear;
    //
    Panel2.Enabled := True;
    Panel3.Enabled := True;
  end;
end;

procedure TForm4.Panel5Click(Sender: TObject);
begin
  if Dm.ADOQBarang.IsEmpty then MessageDlg('Data Kosong',mtInformation,[mbok],0) else
  if Application.MessageBox('Yakin Hapus Data ??','Pesan',Mb_YesNo or Mb_IconQuestion)=MrYes then
   Begin
     Dm.ADOQBarang.Delete;
     Edit1.Clear;
     Edit2.Clear;
     Edit3.Clear;
     Edit4.Clear;
     Edit5.Clear;
   End;
end;

end.
