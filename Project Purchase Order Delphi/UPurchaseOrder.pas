unit UPurchaseOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label10: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ComboBox2: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Edit7: TEdit;
    Label15: TLabel;
    Edit8: TEdit;
    Label16: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    CheckBox1: TCheckBox;
    Label17: TLabel;
    Edit11: TEdit;
    Label18: TLabel;
    Edit12: TEdit;
    Label19: TLabel;
    Edit13: TEdit;
    Label20: TLabel;
    Edit14: TEdit;
    Label21: TLabel;
    Edit15: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Label22: TLabel;
    Edit16: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    procedure Panel2Click(Sender: TObject);
    procedure callsupplier;
    procedure FormActivate(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure callbarang;
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit14Change(Sender: TObject);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure calldetailpo;
    procedure Panel6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure totalharga;
    procedure totalbayar;
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure refreshbarang;
    procedure refreshdetailpo;
    procedure Panel4Click(Sender: TObject);
    procedure resetdetailpo;
    procedure Panel3Click(Sender: TObject);
    procedure jmlorder;
    procedure nilaiorder;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  UDataModule, DB, ADODB, Math;

{$R *.dfm}

procedure TForm3.callsupplier;
begin
  combobox2.Clear;
  DM.ADOQSupplier.Close;
  Dm.ADOQSupplier.Open;
  While not Dm.ADOQSupplier.Eof do
  begin
    combobox2.Items.Add(DM.ADOQSupplier['namaSupplier']);
    Dm.ADOQSupplier.Next;
  end;
end;

procedure TForm3.Panel2Click(Sender: TObject);
var
  id : String;
begin
     // coding untuk memilih kode dengan nomor yg paling terbesar :
  DM.ADOQKodePO.Close;
  DM.ADOQKodePO.SQL.Clear;
  DM.ADOQKodePO.SQL.Add('SELECT TOP 1 headerDataPO.noPO FROM headerDataPO');
  DM.ADOQKodePO.SQL.Add('ORDER BY headerDataPO.noPO DESC');
  DM.ADOQKodePO.Open;

  // coding untuk mengcopy nilai yang di seleksi :
  id := Copy(DM.ADOQKodePO.Fields[0].AsString, 4, 6);

  // coding jika seleksi = 0 maka id = 00001 jika tdk maka tambah 1 :
  if id <> '' then id := FormatFLoat('000000', StrtoInt(id) + 1)
  else id := '000001';

  // coding melakukan pengabungan kode string dan integer :
  Form3.Label2.Caption := 'PO-' + id;
  Form3.Label10.Caption := DateToStr(Now);
  calldetailpo;
  Panel3.Enabled := True;
  Panel5.Enabled := True;
  Panel6.Enabled := True;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  callsupplier;
  Panel3.Enabled := False;
  Panel5.Enabled := False;
  Panel6.Enabled := False;
end;

procedure TForm3.ComboBox2Change(Sender: TObject);
begin
  if DM.ADOQSupplier.Locate('namaSupplier',ComboBox2.Text,[]) then
  begin
    Label23.Caption := DM.ADOQSupplier['kodeSupplier'];
    Edit4.Text := DM.ADOQSupplier['alamat'];
    Edit5.Text := DM.ADOQSupplier['telpon'];
    Edit6.Text := DM.ADOQSupplier['email'];
    callbarang;
    Label25.Caption := '1'
  end;
end;

procedure TForm3.callbarang;
begin
  with DM.ADOQBarang do
  begin
    Close;
    SQL.Clear;
    sql.Add('SELECT * FROM DataBarang WHERE kodeSupplier = "'+Label23.Caption+'"');
    Open;
  end;
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = True then
  begin
    Edit10.Text := DM.ADOQPerusahaan['namaPerusahaan'];
    Edit7.Text := DM.ADOQPerusahaan['alamatPerusahaan'];
    Edit8.Text := DM.ADOQPerusahaan['noTelpon'];
    Edit9.Text := DM.ADOQPerusahaan['email'];
  end
  else
  if CheckBox1.Checked = False then
  begin
    Edit10.Clear;
    Edit7.Clear;
    Edit8.Clear;
    Edit9.Clear;
  end;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
  if Dm.ADOQBarang.IsEmpty then MessageDlg('Data Barang Kosong',mtInformation,[mbok],0) else
  if (Label10.Caption = '') or (Label10.Caption = 'Tanggal') then MessageDlg('Silahkan Klik Tombol New Terlebih Dahulu',mtInformation,[mbok],0) else
  if (Label2.Caption = '') or (Label2.Caption = 'No. PO') then MessageDlg('Silahkan Klik Tombol New Terlebih Dahulu',mtInformation,[mbok],0) else
  if (Label23.Caption = '') or (Label23.Caption = 'Kode Supplier') then MessageDlg('Silahkan Pilih Supplier Terlebih Dahulu',mtInformation,[mbok],0) else
  begin
    Label25.Caption := '1';
    Edit11.Text := DM.ADOQBarang['kodeBarang']  ;
    Edit12.Text := DM.ADOQBarang['namaBarang']  ;
    Edit13.Text := DM.ADOQBarang['satuan']  ;
    Edit15.Text := DM.ADOQBarang['hargaSatuan']  ;
    Edit14.Clear;
    Edit16.Clear;
  end;
end;

procedure TForm3.Edit14Change(Sender: TObject);
begin
  if Label25.Caption = '1' then
  begin
      if (Edit14.Text = '') then
        begin
          Edit16.Text := FloatToStr(StrToFloat(Edit15.Text) * 0);
        end
      else
      if (Edit14.Text = '') then
        begin
          Edit16.Text := FloatToStr(StrToFloat(Edit15.Text) * 0);
        end
      else
        begin
          Edit16.Text := FloatToStr(StrToFloat(Edit15.Text) * StrToFloat(Edit14.Text));
        end;
  end;
end;

procedure TForm3.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   begin
     key:=#0;
     MessageDlg('Silahkan Masukkan Angka Tidak Boleh Huruf dan yang Lainnya !!!',mtInformation,[mbok],0);
   end;
end;

procedure TForm3.calldetailpo;
begin
  with  DM.ADOQDetailPO do
  begin
    Close;
    sql.Clear;
    SQL.Add('SELECT * FROM detailDataPO WHERE noPO = "'+Label2.Caption+'"');
    Open;
  end;
end;

procedure TForm3.Panel6Click(Sender: TObject);
begin
  if Edit11.Text = '' then MessageDlg('Data Kode Barang Kosong',mtInformation,[mbok],0) else
  if Edit12.Text = '' then MessageDlg('Data Nama Barang Kosong',mtInformation,[mbok],0) else
  if Edit13.Text = '' then MessageDlg('Data Satuan Kosong',mtInformation,[mbok],0) else
  if (Edit14.Text = '') or (Edit14.Text = '0') then MessageDlg('Data Jumlah Kosong',mtInformation,[mbok],0) else
  if Edit15.Text = '' then MessageDlg('Data Harga Satuan Kosong',mtInformation,[mbok],0) else
  if (Edit16.Text = '') or (Edit16.Text = '0') then MessageDlg('Data Total Harga Kosong',mtInformation,[mbok],0) else
  begin
    DM.ADOQDetailPO.Append;
    DM.ADOQDetailPO['noPO'] := Label2.Caption;
    DM.ADOQDetailPO['tglPO'] := Label10.Caption;
    DM.ADOQDetailPO['kodeBarang'] := Edit11.Text;
    DM.ADOQDetailPO['namaBarang'] := Edit12.Text;
    DM.ADOQDetailPO['qty'] := Edit14.Text;
    DM.ADOQDetailPO['satuan'] := Edit13.Text;
    DM.ADOQDetailPO['hargaSatuan'] := Edit15.Text;
    DM.ADOQDetailPO['total'] := Edit16.Text;
    DM.ADOQDetailPO.Post;
    Edit11.Clear;
    Edit12.Clear;
    Edit13.Clear;
    Edit14.Clear;
    Edit15.Clear;
    Edit16.Clear;
    totalharga;
    totalbayar;
  end;
end;

procedure TForm3.Panel5Click(Sender: TObject);
begin
  if Dm.ADOQDetailPO.IsEmpty then MessageDlg('Data Kosong',mtInformation,[mbok],0) else
  if Application.MessageBox('Yakin Hapus Data ??','Pesan',Mb_YesNo or Mb_IconQuestion)=MrYes then
   Begin
     Dm.ADOQDetailPO.Delete;
     Edit11.Clear;
     Edit12.Clear;
     Edit13.Clear;
     Edit14.Clear;
     Edit15.Clear;
     Edit16.Clear;
     Label25.Caption := '1'  ;
   End;
  totalharga;
  totalbayar;
end;

procedure TForm3.DBGrid2CellClick(Column: TColumn);
begin
  if Dm.ADOQDetailPO.IsEmpty then MessageDlg('Data Barang Kosong',mtInformation,[mbok],0) else
  if (Label2.Caption = '') or (Label2.Caption = 'No. PO') then MessageDlg('Silahkan Klik Tombol New Terlebih Dahulu',mtInformation,[mbok],0) else
  begin
    Label25.Caption := '0';
    Edit11.Text := DM.ADOQDetailPO['kodeBarang']  ;
    Edit12.Text := DM.ADOQDetailPO['namaBarang']  ;
    Edit14.Text := DM.ADOQDetailPO['qty']  ;
    Edit13.Text := DM.ADOQDetailPO['satuan']  ;
    Edit15.Text := DM.ADOQDetailPO['hargaSatuan']  ;
    Edit16.Text := DM.ADOQDetailPO['total']  ;
  end;
end;

procedure TForm3.totalharga;
begin
  with DM.ADOQTtlHarga do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(hargaSatuan) AS TTLHARGA FROM detailDataPO WHERE noPO = "'+Label2.Caption+'"');
    Open;
  end;
  if DM.ADOQTtlHarga['TTLHARGA'] <> null then
    begin
      Edit2.Text := FloatToStr(DM.ADOQTtlHarga['TTLHARGA']);
    end
  else
    begin
      Edit2.Text := '';
    end;

end;

procedure TForm3.totalbayar;
begin
  if Edit2.Text <> '' then
    begin
      if Edit1.Text = '' then
      begin
        Edit3.Text := FloatToStr((StrToFloat(Edit2.Text) + (StrToFloat(Edit2.Text) * (DM.ADOQPajak['ppn'] / 100))) - 0);
      end
      else
      if Edit1.Text <> '' then
      begin
        Edit3.Text := FloatToStr((StrToFloat(Edit2.Text) + (StrToFloat(Edit2.Text) * (DM.ADOQPajak['ppn'] / 100))) - StrToFloat(Edit1.Text));
      end;
    end;
  if Edit2.Text = '' then
    begin
      Edit3.Clear;
    end;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
  if Label26.Caption = '1' then
  begin
    if ComboBox1.Text = '0' then
    begin
      Edit1.Text := '0';
      Edit3.Clear;
      totalbayar;
    end
    else
    if ComboBox1.Text = '5' then
    begin
      Edit1.Text := FloatToStr(StrToFloat(Edit2.Text) * (5/100));
      Edit3.Clear;
      totalbayar;
    end
    else
    if ComboBox1.Text = '10' then
    begin
      Edit1.Text := FloatToStr(StrToFloat(Edit2.Text) * (10/100));
      Edit3.Clear;
      totalbayar;
    end
    else
    if ComboBox1.Text = '15' then
    begin
      Edit1.Text := FloatToStr(StrToFloat(Edit2.Text) * (15/100));
      Edit3.Clear;
      totalbayar;
    end;
  end;
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
  if Edit2.Text = '' then
    begin
      label26.Caption := '0';
      ComboBox1.Text := '';
      Edit1.Clear;
    end
  else
    begin
      label26.Caption := '1';
    end;
end;

procedure TForm3.refreshbarang;
begin
  with DM.ADOQBarang do
  begin
    Close;
    SQL.Clear;
    sql.Add('SELECT * FROM DataBarang');
    Open;
  end;
end;

procedure TForm3.refreshdetailpo;
begin
  with  DM.ADOQDetailPO do
  begin
    Close;
    sql.Clear;
    SQL.Add('SELECT * FROM detailDataPO');
    Open;
  end;
end;

procedure TForm3.Panel4Click(Sender: TObject);
begin
  Label25.Caption := '0';
  ComboBox2.Text := ''; Edit4.Clear; Edit5.Clear; Edit6.Clear;
  CheckBox1.Checked := False; Edit10.Clear; Edit7.Clear;
  Edit8.Clear; Edit9.Clear; Edit11.Clear; Edit12.Clear;
  Edit13.Clear; Edit14.Clear; Edit15.Clear; Edit16.Clear;
  ComboBox1.Text := ''; Edit1.Clear;
  Edit2.Clear; Edit3.Clear; Label23.Caption := 'Kode Supplier';
  //
  //
  Label10.Caption := 'Tanggal';
  //
  resetdetailpo;
  //
  Label2.Caption := 'No. PO';
  //
  refreshbarang;
  refreshdetailpo;
  //
  Panel3.Enabled := False; Panel5.Enabled := False;
  Panel6.Enabled := False;
end;

procedure TForm3.resetdetailpo;
begin
  with  DM.ADOQDetailPO do
  begin
    Close;
    sql.Clear;
    SQL.Add('DELETE detailDataPO.noPO FROM detailDataPO WHERE (((detailDataPO.noPO)="'+Label2.Caption+'"))');
    ExecSQL;
  end;
end;

procedure TForm3.Panel3Click(Sender: TObject);
begin
  if (Label2.Caption = '') or (Label2.Caption = 'No. PO') then MessageDlg('No. PO Kosong',mtInformation,[mbok],0) else
  if (Label10.Caption = '') or (Label10.Caption = 'Tanggal') then MessageDlg('Tanggal Kosong',mtInformation,[mbok],0) else
  if (Label23.Caption = '') or (Label23.Caption = 'Kode Supplier') then MessageDlg('Kode Supplier Kosong',mtInformation,[mbok],0) else
  if ComboBox2.Text = '' then MessageDlg('Data Supplier Kosong',mtInformation,[mbok],0) else
  if Edit4.Text = '' then MessageDlg('Data Alamat Supplier Kosong',mtInformation,[mbok],0) else
  if Edit5.Text = '' then MessageDlg('Data No Telpon Kosong',mtInformation,[mbok],0) else
  if Edit6.Text = '' then MessageDlg('Data Email Kosong',mtInformation,[mbok],0) else
  if Edit10.Text = '' then MessageDlg('Nama Perusahaan Kosong',mtInformation,[mbok],0) else
  if Edit7.Text = '' then MessageDlg('Alamat Perusahaan Kosong',mtInformation,[mbok],0) else
  if Edit8.Text = '' then MessageDlg('Data No Telpon Kosong',mtInformation,[mbok],0) else
  if Edit9.Text = '' then MessageDlg('Data Email Perusahaan Kosong',mtInformation,[mbok],0) else
  if ComboBox1.Text = '' then MessageDlg('Data Diskon % Kosong',mtInformation,[mbok],0) else
  if Edit1.Text = '' then MessageDlg('Data Nilai Diskon Kosong',mtInformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Data Total Harga Kosong',mtInformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('Data Total Bayar Kosong',mtInformation,[mbok],0) else
    begin
      //
      jmlorder;
      nilaiorder;
      DM.ADOQSupplier.Edit;
      DM.ADOQSupplier['jmlOrder'] := DM.ADOQSupplier['jmlOrder'] + DM.ADOQjmlOrder['QTY'];
      DM.ADOQSupplier['nilaiOrder'] := DM.ADOQSupplier['nilaiOrder'] + DM.ADOQnilaiOrder['TTL'];
      DM.ADOQSupplier.Post;
      //
      DM.ADOQHeaderPO.Append;
      DM.ADOQHeaderPO['noPO'] := Label2.Caption;
      DM.ADOQHeaderPO['tgl'] := Label10.Caption;
      DM.ADOQHeaderPO['kodeSupplier'] := Label23.Caption;
      DM.ADOQHeaderPO['namaSupplier'] := ComboBox2.Text;
      DM.ADOQHeaderPO['alamatSupplier'] := Edit4.Text;
      DM.ADOQHeaderPO['noTelpSupplier'] := Edit5.Text;
      DM.ADOQHeaderPO['email'] := Edit6.Text;
      DM.ADOQHeaderPO['kepada'] := Edit10.Text;
      DM.ADOQHeaderPO['alamatPenerima'] := Edit7.Text;
      DM.ADOQHeaderPO['noTelpPenerima'] := Edit8.Text;
      DM.ADOQHeaderPO['emailPenerima'] := Edit9.Text;
      DM.ADOQHeaderPO['totalHarga'] := Edit2.Text;
      DM.ADOQHeaderPO['totalbayar'] := Edit3.Text;
      DM.ADOQHeaderPO['persenDiskon'] := ComboBox1.Text;
      DM.ADOQHeaderPO['nilaiDiskon'] := Edit1.Text;
      DM.ADOQHeaderPO.Post;
      //
      Label25.Caption := '0';
      ComboBox2.Text := ''; Edit4.Clear; Edit5.Clear; Edit6.Clear;
      CheckBox1.Checked := False; Edit10.Clear; Edit7.Clear;
      Edit8.Clear; Edit9.Clear; Edit11.Clear; Edit12.Clear;
      Edit13.Clear; Edit14.Clear; Edit15.Clear; Edit16.Clear;
      ComboBox1.Text := ''; Edit1.Clear;
      Edit2.Clear; Edit3.Clear; Label23.Caption := 'Kode Supplier';
      //
      //
      Label10.Caption := 'Tanggal';
      //
      //resetdetailpo;
      //
      Label2.Caption := 'No. PO';
      //
      refreshbarang;
      refreshdetailpo;
      //
      Panel3.Enabled := False; Panel5.Enabled := False;
      Panel6.Enabled := False;
    end;
end;

procedure TForm3.jmlorder;
begin
  with DM.ADOQjmlOrder do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(qty) AS QTY FROM detailDataPO WHERE noPO = "'+Label2.Caption+'"');
    Open;
  end;
end;

procedure TForm3.nilaiorder;
begin
  with DM.ADOQnilaiOrder do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(total) AS TTL FROM detailDataPO WHERE noPO = "'+Label2.Caption+'"');
    Open;
  end;
end;

end.
