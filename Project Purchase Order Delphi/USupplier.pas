unit USupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label10: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    DBGrid1: TDBGrid;
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Panel6Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure refresh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  UDataModule;

{$R *.dfm}

procedure TForm2.Panel2Click(Sender: TObject);
var
  id : string;
begin
    // coding untuk memilih kode dengan nomor yg paling terbesar :
  DM.ADOQKodeSupplier.Close;
  DM.ADOQKodeSupplier.SQL.Clear;
  DM.ADOQKodeSupplier.SQL.Add('SELECT TOP 1 DataSupplier.kodeSupplier FROM DataSupplier');
  DM.ADOQKodeSupplier.SQL.Add('ORDER BY DataSupplier.kodeSupplier DESC');
  DM.ADOQKodeSupplier.Open;

  // coding untuk mengcopy nilai yang di seleksi :
  id := Copy(DM.ADOQKodeSupplier.Fields[0].AsString, 5, 6);

  // coding jika seleksi = 0 maka id = 00001 jika tdk maka tambah 1 :
  if id <> '' then id := FormatFLoat('000000', StrtoInt(id) + 1)
  else id := '000001';

  // coding melakukan pengabungan kode string dan integer :
  Form2.Edit1.Text := 'SUP-' + id;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    Edit5.Clear;
    Panel3.Enabled := True;
    Panel4.Enabled := False;
    Panel5.Enabled := False;
end;

procedure TForm2.Panel3Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('Kode Supplier Kosong',mtinformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Nama Supplier Kosong',mtinformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('Alamat Kosong',mtinformation,[mbok],0) else
  if Edit4.Text = '' then MessageDlg('No Telpon Kosong',mtinformation,[mbok],0) else
  if Edit5.Text = '' then MessageDlg('Email Kosong',mtinformation,[mbok],0) else
  begin
    DM.ADOQSupplier.Append;
    DM.ADOQSupplier['kodeSupplier'] := Edit1.Text;
    DM.ADOQSupplier['namaSupplier'] := Edit2.Text;
    DM.ADOQSupplier['alamat'] := Edit3.Text;
    DM.ADOQSupplier['telpon'] := Edit4.Text;
    DM.ADOQSupplier['email'] := Edit5.Text;
    DM.ADOQSupplier.Post;
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    Edit5.Clear;
    Panel3.Enabled := False;
    Panel4.Enabled := False;
    Panel5.Enabled := False;
  end;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
  if Dm.ADOQSupplier.IsEmpty then MessageDlg('Data Supplier Kosong',mtInformation,[mbok],0) else
  begin
    Edit1.Text := DM.ADOQSupplier['kodeSupplier']  ;
    Edit2.Text := DM.ADOQSupplier['namaSupplier']  ;
    Edit3.Text := DM.ADOQSupplier['alamat']  ;
    Edit4.Text := DM.ADOQSupplier['telpon']  ;
    Edit5.Text := DM.ADOQSupplier['email']  ;
    Panel3.Enabled := False;
    Panel4.Enabled := True;
    Panel5.Enabled := True;
  end;
end;

procedure TForm2.Panel6Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Panel3.Enabled := False;
  Panel4.Enabled := False;
  Panel5.Enabled := False;
  refresh;
end;

procedure TForm2.Panel4Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('Kode Supplier Kosong',mtinformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Nama Supplier Kosong',mtinformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('Alamat Kosong',mtinformation,[mbok],0) else
  if Edit4.Text = '' then MessageDlg('No Telpon Kosong',mtinformation,[mbok],0) else
  if Edit5.Text = '' then MessageDlg('Email Kosong',mtinformation,[mbok],0) else
  begin
    DM.ADOQSupplier.Edit;
    DM.ADOQSupplier['kodeSupplier'] := Edit1.Text;
    DM.ADOQSupplier['namaSupplier'] := Edit2.Text;
    DM.ADOQSupplier['alamat'] := Edit3.Text;
    DM.ADOQSupplier['telpon'] := Edit4.Text;
    DM.ADOQSupplier['email'] := Edit5.Text;
    DM.ADOQSupplier.Post;
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    Edit5.Clear;
    Panel3.Enabled := False;
    Panel4.Enabled := False;
    Panel5.Enabled := False;
  end;
end;

procedure TForm2.Panel5Click(Sender: TObject);
begin
  if Dm.ADOQSupplier.IsEmpty then MessageDlg('Data Kosong',mtInformation,[mbok],0) else
  if Application.MessageBox('Yakin Hapus Data ??','Pesan',Mb_YesNo or Mb_IconQuestion)=MrYes then
   Begin
     Dm.ADOQSupplier.Delete;
     Edit1.Clear;
     Edit2.Clear;
     Edit3.Clear;
     Edit4.Clear;
     Edit5.Clear;
     Panel3.Enabled := False;
     Panel4.Enabled := False;
     Panel5.Enabled := False;
   End;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  Panel3.Enabled := False;
  Panel4.Enabled := False;
  Panel5.Enabled := False;
  refresh;
end;

procedure TForm2.refresh;
begin
    DM.ADOQSupplier.Close;
  DM.ADOQSupplier.Open;
end;

end.
