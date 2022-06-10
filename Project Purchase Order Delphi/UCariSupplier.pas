unit UCariSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    DBGrid1: TDBGrid;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  UDataModule, UDataBarang, DB, ADODB;

{$R *.dfm}

procedure TForm6.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Form4.Label6.Caption := DM.ADOQSupplier['kodeSupplier'];
    Form4.Edit3.Text := DM.ADOQSupplier['namaSupplier'];
    Form6.Close;
  end;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
  with  DM.ADOQSupplier do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DataSupplier');
    Open;
  end;
end;

end.
