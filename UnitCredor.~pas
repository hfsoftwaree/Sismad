unit UnitCredor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, dblookup, EDBDate, TFlatCheckBoxUnit, EDBNum, IBQuery,shellapi ;

type
  TfrmCredor = class(TForm)
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DBEdit13: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit1: TMaskEdit;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit5: TDBEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    MaskEdit4: TMaskEdit;
    EvCheckCNPJ1: TEvCheckCNPJ;
    EvCheckCPF1: TEvCheckCPF;
    MaskEdit5: TMaskEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBComboBox3: TDBComboBox;
    ImageList1: TImageList;
    DBEDIT11: TDBLookupComboBox;
    UF: TDBEdit;
    DBEdit3: TDBEdit;
    Panel18: TPanel;
    DBEdit12: TDBEdit;
    MaskEdit2: TMaskEdit;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    DBEdit17: TDBEdit;
    GroupBox4: TGroupBox;
    TIPOPESSOA: TDBLookupComboBox;
    CIDADE: TDBLookupComboBox;
    Edit3: TEdit;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    TabSheet3: TTabSheet;
    Panel21: TPanel;
    memo1: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit14: TDBEdit;
    DATACADASTRAMENTO: TEvDBDateEdit;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    TabSheet11: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    STATUS: TDBComboBox;
    DBEdit22: TDBEdit;
    TabSheet12: TTabSheet;
    Panel30: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    GroupBox6: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    GroupBox7: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    EvDBDateEdit1: TEvDBDateEdit;
    EvDBDateEdit2: TEvDBDateEdit;
    MaskEdit6: TMaskEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    EvDBDateEdit3: TEvDBDateEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBComboBox2: TDBComboBox;
    MaskEdit7: TMaskEdit;
    EvDBDateEdit4: TEvDBDateEdit;
    EvDBDateEdit5: TEvDBDateEdit;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label68: TLabel;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    EvDBDateEdit6: TEvDBDateEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    DBComboBox5: TDBComboBox;
    TabSheet13: TTabSheet;
    Panel31: TPanel;
    GroupBox8: TGroupBox;
    Panel32: TPanel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    BitBtn10: TBitBtn;
    GroupBox9: TGroupBox;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Panel33: TPanel;
    BitBtn11: TBitBtn;
    MaskEdit9: TMaskEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    MaskEdit10: TMaskEdit;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    Panel35: TPanel;
    Label92: TLabel;
    DBGrid6: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    BitBtn16: TBitBtn;
    Label96: TLabel;
    Label4: TLabel;
    Label97: TLabel;
    sexo: TDBComboBox;
    Label98: TLabel;
    Label99: TLabel;
    estadocivil: TDBComboBox;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    DBEdit4: TDBEdit;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    DBEdit18: TDBEdit;
    Label121: TLabel;
    DBEdit19: TDBEdit;
    Label122: TLabel;
    Label123: TLabel;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    EvDBDateEdit8: TEvDBDateEdit;
    clientedesde: TEvDBDateEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    ALUGUEL: TEvDBNumEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    Label124: TLabel;
    Label125: TLabel;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    Edit4: TEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    vendedor: TDBLookupComboBox;
    DataSource1: TDataSource;
    QVendedor: TIBQuery;
    DBEdit10: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBEdit95: TDBEdit;
    MaskEdit11: TMaskEdit;
    MaskEdit12: TMaskEdit;
    MaskEdit13: TMaskEdit;
    MaskEdit14: TMaskEdit;
    MaskEdit15: TMaskEdit;
    MaskEdit16: TMaskEdit;
    DBEdit96: TDBEdit;
    EvCheckCPF2: TEvCheckCPF;
    MaskEdit17: TMaskEdit;
    MaskEdit18: TMaskEdit;
    DBEdit97: TDBEdit;
    MaskEdit19: TMaskEdit;
    MaskEdit21: TMaskEdit;
    MaskEdit22: TMaskEdit;
    DBEdit98: TDBEdit;
    MaskEdit8: TMaskEdit;
    GroupBox10: TGroupBox;
    Panel34: TPanel;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBComboBox1: TDBComboBox;
    DBEdit99: TDBEdit;
    MaskEdit23: TMaskEdit;
    Panel3: TPanel;
    Label126: TLabel;
    Label127: TLabel;
    Label91: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    Label128: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    GroupBox11: TGroupBox;
    DBEdit100: TDBEdit;
    Label2: TLabel;
    EvDBDateEdit7: TEvDBDateEdit;
    DBComboBox4: TDBComboBox;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    MaskEdit20: TMaskEdit;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Panel4: TPanel;
    DBEdit103: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    DBEdit107: TDBEdit;
    EvDBDateEdit10: TEvDBDateEdit;
    EvDBDateEdit11: TEvDBDateEdit;
    EvDBDateEdit12: TEvDBDateEdit;
    EvDBDateEdit13: TEvDBDateEdit;
    EvDBDateEdit14: TEvDBDateEdit;
    DBComboBox6: TDBComboBox;
    DBComboBox7: TDBComboBox;
    DBComboBox10: TDBComboBox;
    DBComboBox11: TDBComboBox;
    DBComboBox12: TDBComboBox;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    MaskEdit24: TMaskEdit;
    MaskEdit25: TMaskEdit;
    MaskEdit26: TMaskEdit;
    MaskEdit27: TMaskEdit;
    MaskEdit28: TMaskEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    DBEdit121: TDBEdit;
    EvDBDateEdit15: TEvDBDateEdit;
    EvDBDateEdit16: TEvDBDateEdit;
    EvDBDateEdit17: TEvDBDateEdit;
    EvDBDateEdit18: TEvDBDateEdit;
    DBComboBox13: TDBComboBox;
    DBComboBox14: TDBComboBox;
    DBComboBox15: TDBComboBox;
    DBComboBox16: TDBComboBox;
    DBEdit122: TDBEdit;
    DBEdit123: TDBEdit;
    DBEdit124: TDBEdit;
    DBEdit125: TDBEdit;
    DBEdit126: TDBEdit;
    DBEdit127: TDBEdit;
    DBEdit128: TDBEdit;
    DBEdit129: TDBEdit;
    MaskEdit29: TMaskEdit;
    MaskEdit30: TMaskEdit;
    MaskEdit31: TMaskEdit;
    MaskEdit32: TMaskEdit;
    TabSheet14: TTabSheet;
    DBEdit130: TDBEdit;
    DBEdit131: TDBEdit;
    DBEdit132: TDBEdit;
    DBEdit133: TDBEdit;
    DBEdit134: TDBEdit;
    DBEdit135: TDBEdit;
    DBEdit136: TDBEdit;
    DBEdit137: TDBEdit;
    DBEdit138: TDBEdit;
    DBEdit139: TDBEdit;
    EvCheckCPF3: TEvCheckCPF;
    EvCheckCPF4: TEvCheckCPF;
    EvCheckCPF5: TEvCheckCPF;
    EvCheckCPF6: TEvCheckCPF;
    EvCheckCPF7: TEvCheckCPF;
    EvCheckCPF8: TEvCheckCPF;
    EvCheckCPF9: TEvCheckCPF;
    EvCheckCPF10: TEvCheckCPF;
    EvCheckCPF11: TEvCheckCPF;
    EvCheckCPF12: TEvCheckCPF;
    Panel5: TPanel;
    GroupBox12: TGroupBox;
    Label3: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Panel6: TPanel;
    Label139: TLabel;
    Label140: TLabel;
    DBEdit140: TDBEdit;
    EvDBDateEdit19: TEvDBDateEdit;
    DBComboBox17: TDBComboBox;
    EvDBDateEdit20: TEvDBDateEdit;
    MaskEdit33: TMaskEdit;
    DBEdit141: TDBEdit;
    DBEdit142: TDBEdit;
    DBEdit143: TDBEdit;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    DBEdit144: TDBEdit;
    EvDBDateEdit21: TEvDBDateEdit;
    DBComboBox18: TDBComboBox;
    EvDBDateEdit22: TEvDBDateEdit;
    MaskEdit34: TMaskEdit;
    DBEdit145: TDBEdit;
    DBEdit146: TDBEdit;
    DBEdit147: TDBEdit;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    DBEdit148: TDBEdit;
    EvDBDateEdit23: TEvDBDateEdit;
    DBComboBox19: TDBComboBox;
    EvDBDateEdit24: TEvDBDateEdit;
    MaskEdit35: TMaskEdit;
    DBEdit149: TDBEdit;
    DBEdit150: TDBEdit;
    DBEdit151: TDBEdit;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    DBEdit152: TDBEdit;
    EvDBDateEdit25: TEvDBDateEdit;
    DBComboBox20: TDBComboBox;
    EvDBDateEdit26: TEvDBDateEdit;
    MaskEdit36: TMaskEdit;
    DBEdit153: TDBEdit;
    DBEdit154: TDBEdit;
    DBEdit155: TDBEdit;
    DBEdit156: TDBEdit;
    DBEdit157: TDBEdit;
    DBEdit158: TDBEdit;
    DBEdit159: TDBEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    GroupBox13: TGroupBox;
    Panel10: TPanel;
    GroupBox14: TGroupBox;
    Panel11: TPanel;
    Label66: TLabel;
    Label67: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    DBEdit160: TDBEdit;
    EvDBDateEdit27: TEvDBDateEdit;
    EvDBNumEdit5: TEvDBNumEdit;
    MaskEdit37: TMaskEdit;
    MaskEdit38: TMaskEdit;
    DBEdit161: TDBEdit;
    DBEdit162: TDBEdit;
    EvDBDateEdit28: TEvDBDateEdit;
    EvDBNumEdit6: TEvDBNumEdit;
    MaskEdit39: TMaskEdit;
    MaskEdit40: TMaskEdit;
    DBEdit163: TDBEdit;
    DBEdit164: TDBEdit;
    EvDBDateEdit29: TEvDBDateEdit;
    EvDBNumEdit7: TEvDBNumEdit;
    MaskEdit41: TMaskEdit;
    MaskEdit42: TMaskEdit;
    DBEdit165: TDBEdit;
    DBEdit166: TDBEdit;
    DBEdit167: TDBEdit;
    DBEdit168: TDBEdit;
    EvDBDateEdit30: TEvDBDateEdit;
    EvDBDateEdit31: TEvDBDateEdit;
    EvDBDateEdit32: TEvDBDateEdit;
    EvDBNumEdit8: TEvDBNumEdit;
    EvDBNumEdit9: TEvDBNumEdit;
    EvDBNumEdit10: TEvDBNumEdit;
    MaskEdit43: TMaskEdit;
    MaskEdit44: TMaskEdit;
    MaskEdit45: TMaskEdit;
    MaskEdit46: TMaskEdit;
    MaskEdit47: TMaskEdit;
    MaskEdit48: TMaskEdit;
    DBEdit169: TDBEdit;
    DBEdit170: TDBEdit;
    DBEdit171: TDBEdit;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    DBEdit172: TDBEdit;
    DBEdit173: TDBEdit;
    MaskEdit49: TMaskEdit;
    MaskEdit50: TMaskEdit;
    DBEdit174: TDBEdit;
    DBEdit175: TDBEdit;
    DBEdit176: TDBEdit;
    DBEdit177: TDBEdit;
    DBEdit178: TDBEdit;
    DBEdit179: TDBEdit;
    DBEdit180: TDBEdit;
    DBEdit181: TDBEdit;
    DBEdit182: TDBEdit;
    DBEdit183: TDBEdit;
    MaskEdit51: TMaskEdit;
    MaskEdit52: TMaskEdit;
    MaskEdit53: TMaskEdit;
    MaskEdit54: TMaskEdit;
    MaskEdit55: TMaskEdit;
    MaskEdit56: TMaskEdit;
    MaskEdit57: TMaskEdit;
    MaskEdit58: TMaskEdit;
    MaskEdit59: TMaskEdit;
    MaskEdit60: TMaskEdit;
    DBEdit184: TDBEdit;
    DBEdit185: TDBEdit;
    DBEdit186: TDBEdit;
    DBEdit187: TDBEdit;
    DBEdit188: TDBEdit;
    DBEdit189: TDBEdit;
    DBEdit190: TDBEdit;
    DBEdit191: TDBEdit;
    DBEdit192: TDBEdit;
    DBEdit193: TDBEdit;
    DBEdit194: TDBEdit;
    DBEdit195: TDBEdit;
    DBEdit196: TDBEdit;
    DBEdit197: TDBEdit;
    DBEdit198: TDBEdit;
    DBEdit199: TDBEdit;
    DBEdit200: TDBEdit;
    DBEdit201: TDBEdit;
    DBEdit202: TDBEdit;
    DBEdit203: TDBEdit;
    DBEdit204: TDBEdit;
    DBEdit205: TDBEdit;
    DBEdit206: TDBEdit;
    DBEdit207: TDBEdit;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    BitBtn12: TBitBtn;
    DataSource2: TDataSource;
    qcredor: TIBQuery;
    DBEdit208: TDBEdit;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure MaskEdit20Change(Sender: TObject);
    procedure DBEdit12Change(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure MaskEdit3Change(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure MaskEdit4Change(Sender: TObject);
    procedure MaskEdit5Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure DBComboBox3Exit(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure DBEDIT11Enter(Sender: TObject);
    procedure UFEnter(Sender: TObject);
    procedure MaskEdit20Exit(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit2Change(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBEDIT11Click(Sender: TObject);
    procedure CIDADEClick(Sender: TObject);
    procedure TIPOPESSOAClick(Sender: TObject);
    procedure CIDADEEnter(Sender: TObject);
    procedure TIPOPESSOAEnter(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure EvCheckCNPJ1Error(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure memo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox3Enter(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure Panel19DblClick(Sender: TObject);
    procedure DATACADASTRAMENTOExit(Sender: TObject);
    procedure Panel19Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit83Change(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure MaskEdit9Change(Sender: TObject);
    procedure MaskEdit10Change(Sender: TObject);
    procedure DBEdit91Change(Sender: TObject);
    procedure DBEdit92Change(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure vendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure vendedorClick(Sender: TObject);
    procedure STATUSChange(Sender: TObject);
    procedure MaskEdit11Change(Sender: TObject);
    procedure MaskEdit12Change(Sender: TObject);
    procedure DBEdit25Change(Sender: TObject);
    procedure DBEdit26Change(Sender: TObject);
    procedure MaskEdit13Change(Sender: TObject);
    procedure MaskEdit14Change(Sender: TObject);
    procedure DBEdit29Change(Sender: TObject);
    procedure DBEdit30Change(Sender: TObject);
    procedure MaskEdit15Change(Sender: TObject);
    procedure MaskEdit16Change(Sender: TObject);
    procedure DBEdit34Change(Sender: TObject);
    procedure DBEdit35Change(Sender: TObject);
    procedure MaskEdit6Change(Sender: TObject);
    procedure DBEdit96Change(Sender: TObject);
    procedure EvCheckCPF2Exit(Sender: TObject);
    procedure MaskEdit6Exit(Sender: TObject);
    procedure MaskEdit17Change(Sender: TObject);
    procedure MaskEdit18Change(Sender: TObject);
    procedure DBEdit43Change(Sender: TObject);
    procedure DBEdit44Change(Sender: TObject);
    procedure MaskEdit7Change(Sender: TObject);
    procedure DBEdit97Change(Sender: TObject);
    procedure MaskEdit19Change(Sender: TObject);
    procedure DBEdit56Change(Sender: TObject);
    procedure MaskEdit21Change(Sender: TObject);
    procedure MaskEdit22Change(Sender: TObject);
    procedure DBEdit60Change(Sender: TObject);
    procedure DBEdit98Change(Sender: TObject);
    procedure MaskEdit8Change(Sender: TObject);
    procedure DBEdit78Change(Sender: TObject);
    procedure MaskEdit23Change(Sender: TObject);
    procedure DBEdit99Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure STATUSEnter(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure DBEdit130Change(Sender: TObject);
    procedure MaskEdit24Change(Sender: TObject);
    procedure DBEdit131Change(Sender: TObject);
    procedure MaskEdit25Change(Sender: TObject);
    procedure MaskEdit26Change(Sender: TObject);
    procedure DBEdit133Change(Sender: TObject);
    procedure MaskEdit27Change(Sender: TObject);
    procedure DBEdit134Change(Sender: TObject);
    procedure MaskEdit28Change(Sender: TObject);
    procedure DBEdit135Change(Sender: TObject);
    procedure MaskEdit29Change(Sender: TObject);
    procedure DBEdit136Change(Sender: TObject);
    procedure MaskEdit30Change(Sender: TObject);
    procedure DBEdit137Change(Sender: TObject);
    procedure MaskEdit31Change(Sender: TObject);
    procedure DBEdit138Change(Sender: TObject);
    procedure MaskEdit32Change(Sender: TObject);
    procedure DBEdit139Change(Sender: TObject);
    procedure DBEdit132Change(Sender: TObject);
    procedure EvCheckCPF3Error(Sender: TObject);
    procedure EvCheckCPF4Error(Sender: TObject);
    procedure EvCheckCPF5Error(Sender: TObject);
    procedure EvCheckCPF6Error(Sender: TObject);
    procedure EvCheckCPF7Error(Sender: TObject);
    procedure EvCheckCPF8Error(Sender: TObject);
    procedure EvCheckCPF9Error(Sender: TObject);
    procedure EvCheckCPF10Error(Sender: TObject);
    procedure EvCheckCPF11Error(Sender: TObject);
    procedure EvCheckCPF12Error(Sender: TObject);
    procedure MaskEdit33Change(Sender: TObject);
    procedure DBEdit156Change(Sender: TObject);
    procedure MaskEdit34Change(Sender: TObject);
    procedure DBEdit157Change(Sender: TObject);
    procedure MaskEdit35Change(Sender: TObject);
    procedure DBEdit158Change(Sender: TObject);
    procedure MaskEdit36Change(Sender: TObject);
    procedure DBEdit159Change(Sender: TObject);
    procedure MaskEdit37Change(Sender: TObject);
    procedure DBEdit184Change(Sender: TObject);
    procedure MaskEdit39Change(Sender: TObject);
    procedure DBEdit185Change(Sender: TObject);
    procedure MaskEdit41Change(Sender: TObject);
    procedure DBEdit186Change(Sender: TObject);
    procedure MaskEdit43Change(Sender: TObject);
    procedure DBEdit187Change(Sender: TObject);
    procedure MaskEdit45Change(Sender: TObject);
    procedure DBEdit188Change(Sender: TObject);
    procedure MaskEdit47Change(Sender: TObject);
    procedure DBEdit189Change(Sender: TObject);
    procedure MaskEdit38Change(Sender: TObject);
    procedure MaskEdit40Change(Sender: TObject);
    procedure MaskEdit42Change(Sender: TObject);
    procedure MaskEdit44Change(Sender: TObject);
    procedure MaskEdit46Change(Sender: TObject);
    procedure MaskEdit48Change(Sender: TObject);
    procedure DBEdit190Change(Sender: TObject);
    procedure DBEdit191Change(Sender: TObject);
    procedure DBEdit192Change(Sender: TObject);
    procedure DBEdit193Change(Sender: TObject);
    procedure DBEdit194Change(Sender: TObject);
    procedure DBEdit195Change(Sender: TObject);
    procedure MaskEdit49Change(Sender: TObject);
    procedure MaskEdit51Change(Sender: TObject);
    procedure MaskEdit53Change(Sender: TObject);
    procedure MaskEdit55Change(Sender: TObject);
    procedure MaskEdit57Change(Sender: TObject);
    procedure MaskEdit59Change(Sender: TObject);
    procedure MaskEdit50Change(Sender: TObject);
    procedure MaskEdit52Change(Sender: TObject);
    procedure MaskEdit54Change(Sender: TObject);
    procedure MaskEdit56Change(Sender: TObject);
    procedure MaskEdit58Change(Sender: TObject);
    procedure MaskEdit60Change(Sender: TObject);
    procedure DBEdit196Change(Sender: TObject);
    procedure DBEdit197Change(Sender: TObject);
    procedure DBEdit198Change(Sender: TObject);
    procedure DBEdit199Change(Sender: TObject);
    procedure DBEdit200Change(Sender: TObject);
    procedure DBEdit201Change(Sender: TObject);
    procedure DBEdit202Change(Sender: TObject);
    procedure DBEdit203Change(Sender: TObject);
    procedure DBEdit204Change(Sender: TObject);
    procedure DBEdit205Change(Sender: TObject);
    procedure DBEdit206Change(Sender: TObject);
    procedure DBEdit207Change(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBComboBox3Change(Sender: TObject);
    procedure clientedesdeEnter(Sender: TObject);
    procedure DATACADASTRAMENTOEnter(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBEdit82Exit(Sender: TObject);
    procedure DBEdit94Exit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit155Exit(Sender: TObject);
    procedure MaskEdit60Exit(Sender: TObject);
    procedure DBCheckBox7Exit(Sender: TObject);
    procedure DBEdit37Exit(Sender: TObject);
    procedure DBEdit46Exit(Sender: TObject);
    procedure MaskEdit32Exit(Sender: TObject);
    procedure MaskEdit19Exit(Sender: TObject);
    procedure DBComboBox5Exit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCredor: TfrmCredor;

implementation

uses UnitDM, UnitPrincipal, UnitPesquisa3, unitfrmcredorseleciona;


{$R *.dfm}

procedure TfrmCredor.BitBtn4Click(Sender: TObject);
begin
if frmprincipal.incluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
PageControl1.ActivePage := TabSheet1;
DM.TCredor.Cancel ;
BitBtn4.Enabled := False;
BitBtn5.Enabled := False;
BitBtn6.Enabled := False;
BitBtn3.Enabled := False;
BitBtn9.Enabled := False;
DBComboBox3.SetFocus;

bitbtn17.Enabled := false;
bitbtn18.Enabled := false;
bitbtn19.Enabled := false;
bitbtn20.Enabled := false;
DM.TCredor.Append;
DBCOMBOBOX3.ItemIndex := DBCOMBOBOX3.Items.IndexOf('1-PESSOA FÍSICA');
DBLookupComboBox1.KeyValue := 'CONSUMIDOR FINAL';
DBEDIT89.Text := DBCOMBOBOX3.Text ;
DBEDIT90.Text := DBLOOKUPCOMBOBOX1.Text ;
dbedit83.Text := dbcombobox3.Text ;
dbedit14.Text := '5';
end;
end;

procedure TfrmCredor.BitBtn5Click(Sender: TObject);
begin
if frmprincipal.excluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('É preciso estar logado como "admin" para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.TCredor.Open;
if DM.TCredor.RecordCount = 0 then
begin
DM.TCredor.Close;
Application.MessageBox('Não hà Clientes para serem Excluídos!', 'Alteração', mb_Ok + mb_IconInformation);
end
else
begin
DM.TCredor.Open;
if DM.TCredor.RecordCount <> 0 then
begin
If Application.MessageBox('Confirma Exclusão deste Cliente?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.TCredor.Delete;
Panel18.Caption := 'Cliente(s) Cadastrado(s).: ' + intTostr(DM.TCredor.RecordCount);
DM.TCredor.Edit ;

with QCredor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('select Count(*) CODIGOCREDOR');
      SQL.Add('from Credor');
      Open;
    end;
Panel18.Caption := 'Cliente(s) Cadastrado(s).: '+ QCredor.FieldByName('CODIGOCREDOR').AsString;
QCRedor.Close ;
end;
end;
end;
end;
end;
end;

procedure TfrmCredor.BitBtn1Click(Sender: TObject);
begin
if frmprincipal.alterar.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
	if DBComboBox3.Text='' then
   	begin
         Application.MessageBox('Tipo de Cliente deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
             PageControl1.ActivePage := TabSheet1;
         DBComboBox3.SetFocus;

    end
    else
begin
	if DBEdit2.Text='' then
   	begin
         Application.MessageBox('Razão Social/Nome deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
    PageControl1.ActivePage := TabSheet1;
         DBEdit2.SetFocus;
    end
    else
begin
	if DBLookupComboBox1.Text='' then
   	begin
         Application.MessageBox('Tipo de pessoa deve ser informada!', 'Cadastro', mb_Ok + mb_IconInformation);
             PageControl1.ActivePage := TabSheet1;
         DBLookupComboBox1.SetFocus;
        end;
        end;
        end;

if (DBComboBox3.Text <> '') and (DBEDIT2.Text <> '') and (DBLookupComboBox1.Text <> '') then
begin
if DM.TCredor.State in [dsInsert] then
  begin
  If Application.MessageBox('Confirma Inclusão?', 'Confirmação',
  mb_YesNo + mb_ICONQUESTION) = idYes then
  begin
    try
      if DM.TCredor['PADROES_INATIVO'] = null then DM.TCredor['PADROES_INATIVO'] := '2';
      edit4.Text := dbedit2.Text ;
      DM.TCredor.Post;
      DM.TCredor.Refresh;
      DM.TCredor.Locate('NOMECREDOR',Edit4.text,[lopartialkey,locaseinsensitive]);

      If Application.MessageBox('Continua Cadastramento?', 'Confirmação',
      mb_YesNo + mb_ICONQUESTION) = idYes then
      begin
      DM.TCredor.Append;
      BitBtn4.Enabled := False;
      BitBtn5.Enabled := False;
      BitBtn6.Enabled := False;
      BitBtn3.Enabled := False;
      BitBtn9.Enabled := False;
      DBCOMBOBOX3.ItemIndex := DBCOMBOBOX3.Items.IndexOf('1-PESSOA FÍSICA');
      DBLookupComboBox1.KeyValue := 'CONSUMIDOR FINAL';
      DBEDIT89.Text := DBCOMBOBOX3.Text ;
      DBEDIT90.Text := DBLOOKUPCOMBOBOX1.Text ;
      dbedit83.Text := dbcombobox3.Text ;
      dbedit14.Text := '5';
      edit4.Clear ;
      dbcombobox3.SetFocus ;
      end
      else
      begin
      BitBtn4.Enabled := True;
      BitBtn5.Enabled := True;
      BitBtn6.Enabled := True;
      BitBtn3.Enabled := True;
      BitBtn9.Enabled := True;
      bitbtn17.Enabled := true;
      bitbtn18.Enabled := true;
      bitbtn19.Enabled := true;
      bitbtn20.Enabled := true;
      edit4.Clear ;
      DM.TCredor.Edit ;
      end;
    except
    Application.MessageBox('Cliente já Cadastrado, Verifique!', 'Cliente', mb_Ok + mb_IconExclamation);
    bitbtn2.Click ;
  end;
  end;
  DM.TCredor.CanModify ;
//comando caso clieque em Nao ao salvar registro
end
else
begin

If Application.MessageBox('Confirma Alteração?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
      DM.TCredor.Edit;
      edit4.Text := dbedit2.Text ;
      DM.TCredor.Post;
      DM.TCredor.Refresh;
      DM.TCredor.Locate('NOMECREDOR',Edit4.text,[lopartialkey,locaseinsensitive]);
      BitBtn4.Enabled := True;
      BitBtn5.Enabled := True;
      BitBtn6.Enabled := True;
      BitBtn3.Enabled := True;
      BitBtn9.Enabled := True;
      bitbtn17.Enabled := true;
      bitbtn18.Enabled := true;
      bitbtn19.Enabled := true;
      bitbtn20.Enabled := true;
      edit4.Clear ;
      DM.TCredor.Edit ;
      end
      else
      begin
      DM.TCredor.CanModify ;
      end;
end;
end;
end;
end;


procedure TfrmCredor.BitBtn2Click(Sender: TObject);
begin
DM.TCredor.Cancel ;
BitBtn4.Enabled := True;
BitBtn5.Enabled := True;
BitBtn6.Enabled := True;
BitBtn3.Enabled := True;
BitBtn9.Enabled := True;
bitbtn17.Enabled := true;
bitbtn18.Enabled := true;
bitbtn19.Enabled := true;
bitbtn20.Enabled := true;
DM.TCredor.Edit ;
end;


procedure TfrmCredor.BitBtn3Click(Sender: TObject);
begin
edit2.Text := '';
edit3.Text := '';
cidade.KeyValue := ' ';
tipopessoa.KeyValue := ' ';

DM.TCredor.Cancel;
DM.TCredor.Filtered := false;
DM.TCredor.Close;
DM.QMunicipio.Close;
DM.QTipopessoa.Close;
Close;
end;


procedure TfrmCredor.Edit1Change(Sender: TObject);
begin
DM.TCredor.Locate('NOMECREDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmCredor.FormShow(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
Label1.Caption := 'Cadastro de Clientes';
BitBtn7.Visible := False;
BitBtn6.Visible := True;

DM.TCredor.Open;
bitbtn16.SetFocus;
with DM.QTipopessoa do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from CREDORTIPO Order by TIPONOME');
               Open;
               Last;
    end;

with DM.QMunicipio do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Municipio Order by NOM_MUNIC');
               Open;
               Last;
    end;
//DM.TCredor.edit;
end;

procedure TfrmCredor.BitBtn7Click(Sender: TObject);
begin
//DM.TCredor.IndexFieldNames := 'NOMECREDOR';
Label1.Caption := 'Cadastro de Clientes';
PageControl1.ActivePage := TabSheet1;
BitBtn7.Visible := False;
BitBtn6.Visible := True;
DBComboBox3.SetFocus;
end;

procedure TfrmCredor.BitBtn6Click(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet2;
end;

procedure TfrmCredor.MaskEdit1Change(Sender: TObject);
begin
DBEdit9.Text := MaskEdit1.Text; 
end;

procedure TfrmCredor.DBEdit9Change(Sender: TObject);
begin
MaskEdit1.Text := DBEdit9.Text; 
end;

procedure TfrmCredor.MaskEdit20Change(Sender: TObject);
begin
DBEdit130.Text := MaskEdit20.Text;

end;

procedure TfrmCredor.DBEdit12Change(Sender: TObject);
begin
MaskEdit2.Text := DBEdit12.Text; 
end;

procedure TfrmCredor.DBEdit13Change(Sender: TObject);
begin
MaskEdit3.Text := DBEdit13.Text;
end;

procedure TfrmCredor.MaskEdit3Change(Sender: TObject);
begin
DBEdit13.Text := MaskEdit3.Text;
end;

procedure TfrmCredor.TabSheet1Show(Sender: TObject);
begin
Label1.Caption := 'Cadastro de Clientes';
DBComboBox3.SetFocus;
BitBtn7.Visible := False;
BitBtn6.Visible := True;
end;

procedure TfrmCredor.MaskEdit4Change(Sender: TObject);
begin
DBEdit6.Text := MaskEdit4.Text; 
end;

procedure TfrmCredor.MaskEdit5Change(Sender: TObject);
begin
DBEdit7.Text := MaskEdit5.Text;
end;

procedure TfrmCredor.DBEdit6Change(Sender: TObject);
begin
MaskEdit4.Text := DBEdit6.Text; 
end;

procedure TfrmCredor.DBEdit7Change(Sender: TObject);
begin
MaskEdit5.Text := DBEdit7.Text;
end;

procedure TfrmCredor.MaskEdit5Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit5.Clear;
end;

procedure TfrmCredor.DBComboBox3Exit(Sender: TObject);
begin
dbedit83.Text := dbcombobox3.Text ;
//dbcombobox3.DroppedDown ;
if dbcombobox3.Text = '1-PESSOA FÍSICA' then
begin
dbedit208.Text := '1';
end
else
begin
if dbcombobox3.Text = '2-PESSOA JURÍDICA' then
begin
dbedit208.Text := '2';
end
else
begin
if dbcombobox3.Text = '3-PRODUTOR RURAL' then
begin
dbedit208.Text := '3';
end;
end;
end;
end;

procedure TfrmCredor.TabSheet1Enter(Sender: TObject);
begin
Label1.Caption := 'Cadastro de Clientes';
//DM.TCredor.IndexFieldNames := 'NOMECREDOR'; nao utilizar esta funcao pois vai comecar a salvar registro em branco.
end;

procedure TfrmCredor.DBEDIT11Enter(Sender: TObject);
begin
//DBEDIT11.DropDown;
end;


procedure TfrmCredor.UFEnter(Sender: TObject);
begin
if dbedit11.Text <> '' then
begin
uf.EditText := DM.QMunicipio['SIG_UF'];
end
else
exit;
end;

procedure TfrmCredor.MaskEdit20Exit(Sender: TObject);
begin
//IF DBEDIT12.Text = '' THEN
//DBEDIT12.Text :='0000000000';
end;

procedure TfrmCredor.MaskEdit3Exit(Sender: TObject);
begin
IF DBEDIT13.Text = '' then DBEDIT13.Text :='0000000000';
end;

procedure TfrmCredor.MaskEdit2Change(Sender: TObject);
begin
DBEdit12.Text := MaskEdit2.Text;
end;

procedure TfrmCredor.MaskEdit2Exit(Sender: TObject);
begin
IF DBEDIT12.Text = '' then DBEDIT12.Text :='0000000000';
end;

procedure TfrmCredor.MaskEdit1Exit(Sender: TObject);
begin
IF DBEDIT9.Text = '' THEN
DBEDIT9.Text :='00000000';
end;

procedure TfrmCredor.DBEdit10Exit(Sender: TObject);
begin
bitbtn1.Click;
end;

procedure TfrmCredor.DBLookupComboBox1Enter(Sender: TObject);
begin
//dblookupcombobox1.DropDown;
end;

procedure TfrmCredor.DBLookupComboBox1Click(Sender: TObject);
begin
dbedit14.Text := DM.QTipopessoa['CODIGOTIPO'];
end;

procedure TfrmCredor.DBEDIT11Click(Sender: TObject);
begin
DBEDIT17.Text := DM.QMunicipio['COD_MUNIC'];
end;

procedure TfrmCredor.CIDADEClick(Sender: TObject);
begin
edit2.Text := DM.QMunicipio['COD_MUNIC'];
//DM.TCredor.Filtered := false;
//DM.TCredor.Close;
DM.TCredor.Filter := 'CODIGOCIDADE =' + (edit2.Text);
DM.TCredor.Filtered := TRUE;
DM.TCredor.Open;
DM.TCredor.IndexFieldNames := 'NOMECREDOR';

with QCredor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('select Count(*) CODIGOCREDOR');
      SQL.Add('from Credor');
      SQL.Add('where CODIGOCIDADE =:codigo '); // linha para atender as condições
      ParamByName('codigo').Text := edit2.Text ; // preenche o parametro
      Open;
    end;
Panel18.Caption := 'Cliente(s) Cadastrado(s).: '+ QCredor.FieldByName('CODIGOCREDOR').AsString;
QCRedor.Close ;
end;

procedure TfrmCredor.TIPOPESSOAClick(Sender: TObject);
begin
edit3.Text := DM.QTipopessoa['CODIGOTIPO'];
//DM.TCredor.Filtered := false;
//DM.TCredor.Close;
DM.TCredor.Filter := 'CODIGOTIPOPESSOA =' + (edit3.Text);
DM.TCredor.Filtered := TRUE;
DM.TCredor.Open;
DM.TCredor.IndexFieldNames := 'NOMECREDOR';

with QCredor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('select Count(*) CODIGOCREDOR');
      SQL.Add('from Credor');
      SQL.Add('where CODIGOTIPOPESSOA =:codigo '); // linha para atender as condições
      ParamByName('codigo').Text := edit3.Text ; // preenche o parametro
      Open;
    end;
Panel18.Caption := 'Cliente(s) Cadastrado(s).: '+ QCredor.FieldByName('CODIGOCREDOR').AsString;
QCRedor.Close ;

end;

procedure TfrmCredor.CIDADEEnter(Sender: TObject);
begin
//CIDADE.DropDown;
tipopessoa.KeyValue := ' ';
end;

procedure TfrmCredor.TIPOPESSOAEnter(Sender: TObject);
begin
//TIPOPESSOA.DropDown;
cidade.KeyValue := ' ';
end;

procedure TfrmCredor.BitBtn8Click(Sender: TObject);
begin
edit2.Text := '';
edit3.Text := '';
cidade.KeyValue := ' ';
tipopessoa.KeyValue := ' ';
DM.TCredor.Filtered := false;
DM.TCredor.Close;
DM.TCredor.Open;
DM.TCredor.IndexFieldNames := 'NOMECREDOR';

with QCredor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('select Count(*) CODIGOCREDOR');
      SQL.Add('from Credor');
      Open;
    end;
Panel18.Caption := 'Cliente(s) Cadastrado(s).: '+ QCredor.FieldByName('CODIGOCREDOR').AsString;
QCRedor.Close ;
end;

procedure TfrmCredor.EvCheckCNPJ1Error(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit4.Clear;
end;

procedure TfrmCredor.Button1Click(Sender: TObject);
begin
  DM.TCredor.Close;
  DM.QMunicipio.Close;
  DM.QTipopessoa.Close;
  Close;
frmPrincipal.EvKeyNavigator1.Active := False;
DM.QCredor.Close;
DM.QCredor.Open;
frmpesquisa3.Edit1.SetFocus;
frmpesquisa3.Edit1.Clear;
DM.QCredor.Last;
frmpesquisa3.Panel2.Caption := '' + intTostr(DM.QCredor.RecordCount);
DM.QCredor.First;
    with DM.QCredor do
  	  begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Credor Order by NOMECREDOR');
               Open;
      end;
end;

procedure TfrmCredor.BitBtn9Click(Sender: TObject);
begin
DM.TCredor.Cancel;
DM.TCredor.Filtered := false;
DM.TCredor.Close;
DM.QMunicipio.Close;
DM.QTipopessoa.Close;
Qvendedor.close;

edit2.Text := '';
edit3.Text := '';
cidade.KeyValue := ' ';
tipopessoa.KeyValue := ' ';
bitbtn3.Visible := true;
bitbtn9.Visible := false;

Close;

frmPrincipal.EvKeyNavigator1.Active := False;
frmpesquisa3.Edit1.SetFocus;
frmpesquisa3.Edit1.Clear;

with DM.QCredor  do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Credor');
      SQL.Add('Where PADROES_INATIVO =:busca');
      SQL.Add('Order by NOMECREDOR'); 
      ParamByName('busca').Text := '2';
      Open;
      end;

//DM.QCredor.Close;
//DM.QCredor.Open;
//DM.QCredor.Last;
//frmpesquisa3.Panel2.Caption := '' + intTostr(DM.QCredor.RecordCount);
//DM.QCredor.First;
  //  with DM.QCredor do
  	//  begin
      //         Close;
        //       SQL.Clear;
          //     SQL.Add('Select * from Credor Order by NOMECREDOR');
            //   Open;
//      end;

end;

procedure TfrmCredor.memo1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  if memo1.Lines.Text = '' then
  begin
  Key:=#8;
  bitbtn1.SetFocus;
  end
  else
  end
else
end;

procedure TfrmCredor.DBComboBox3Enter(Sender: TObject);
begin
dbedit83.Text := dbcombobox3.Text ;
//dbcombobox3.DroppedDown ;
if dbcombobox3.Text = '1-PESSOA FÍSICA' then
begin
dbedit208.Text := '1';
end
else
begin
if dbcombobox3.Text = '2-PESSOA JURÍDICA' then
begin
dbedit208.Text := '2';
end
else
begin
if dbcombobox3.Text = '3-PRODUTOR RURAL' then
begin
dbedit208.Text := '3';
end;
end;
end;
end;

procedure TfrmCredor.DBEdit16Enter(Sender: TObject);
begin
if dbedit83.Text = '2-PESSOA JURÍDICA' then
begin
dm.TCredor.Edit ;
dbedit16.Text := dbedit2.Text;
dbedit16.SelectAll;
end
else
begin
if dbedit83.Text = '1-PESSOA FÍSICA' then
begin
  dm.TCredor.Edit ;
  if dbedit16.Text = dbedit2.Text then dbedit16.Clear;
end;
end
end;

procedure TfrmCredor.Panel19DblClick(Sender: TObject);
begin
datacadastramento.Enabled := true;
datacadastramento.SetFocus ;
end;

procedure TfrmCredor.DATACADASTRAMENTOExit(Sender: TObject);
begin
//datacadastramento.Enabled := false;
end;

procedure TfrmCredor.Panel19Click(Sender: TObject);
begin
datacadastramento.Enabled := false;
bitbtn1.SetFocus ;
end;

procedure TfrmCredor.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
begin
KEY := 0;
end;

if key = VK_BACK then
begin
EDIT1.SetFocus;
end;
end;

procedure TfrmCredor.DBEdit83Change(Sender: TObject);
begin
if dbedit83.Text = '3-PRODUTOR RURAL' then
begin
Label96.Caption := 'Razão Social';
Label100.Caption := 'CPF';
Label101.Caption := 'Inscrição';
Label98.Caption := 'Nome de Fantasia';
Label102.Caption := 'Data Fundação';
DBCHECKBOX1.Caption := 'Sede Própria';
sexo.Enabled := false;
sexo.Color := clbtnface;
estadocivil.Enabled := false;
estadocivil.Color := clbtnface;
MAskEdit4.Visible := false;
MAskEdit5.Visible := true;
dbedit84.Enabled  := false;
dbedit84.Color := clbtnface;
dbedit85.Enabled  := true;
dbedit85.Color := clwindow;
dbedit4.Enabled  := true;
dbedit4.Color := clwindow;
tabsheet5.TabVisible := false;
tabsheet7.TabVisible := false;
tabsheet8.TabVisible := false;
end
else
begin
if dbedit83.Text = '2-PESSOA JURÍDICA' then
begin
Label96.Caption := 'Razão Social';
Label100.Caption := 'CNPJ';
Label101.Caption := 'Inscrição';
Label98.Caption := 'Nome de Fantasia';
Label102.Caption := 'Data Fundação';
DBCHECKBOX1.Caption := 'Sede Própria';
sexo.Enabled := false;
sexo.Color := clbtnface;
estadocivil.Enabled := false;
estadocivil.Color := clbtnface;
MAskEdit4.Visible := true;
MAskEdit5.Visible := false;
dbedit84.Enabled  := false;
dbedit84.Color := clbtnface;
dbedit85.Enabled  := true;
dbedit85.Color := clwindow;
dbedit4.Enabled  := true;
dbedit4.Color := clwindow;
tabsheet5.TabVisible := false;
tabsheet7.TabVisible := false;
tabsheet8.TabVisible := false;
end
else
begin
if DBedit83.Text = '1-PESSOA FÍSICA' then
begin
Label96.Caption := 'Nome Cliente';
Label100.Caption := 'CPF';
Label101.Caption := 'Identidade';
Label98.Caption := 'Naturalidade';
Label102.Caption := 'Data Nascimento';
DBCHECKBOX1.Caption := 'Casa Própria';
sexo.Enabled := true;
sexo.Color := clwindow;
estadocivil.Enabled := true;
estadocivil.Color := clwindow;
MAskEdit4.Visible := false;
MAskEdit5.Visible := true;
dbedit84.Enabled  := true;
dbedit84.Color := clwindow;
dbedit85.Enabled  := false;
dbedit85.Color := clbtnface;
dbedit4.Enabled  := false;
dbedit4.Color := clbtnface;
tabsheet5.TabVisible := true;
tabsheet7.TabVisible := true;
tabsheet8.TabVisible := true;
end;
end;
end;
end;

procedure TfrmCredor.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_SPACE then
dblookupcombobox1.DropDown;
end;

procedure TfrmCredor.BitBtn17Click(Sender: TObject);
begin
DM.TCredor.First;
DM.TCredor.Edit ;
end;

procedure TfrmCredor.BitBtn20Click(Sender: TObject);
begin
DM.TCredor.Last;
DM.TCredor.Edit ;
end;

procedure TfrmCredor.BitBtn18Click(Sender: TObject);
begin
DM.TCredor.Prior;
DM.TCredor.Edit ;
end;

procedure TfrmCredor.BitBtn19Click(Sender: TObject);
begin
DM.TCredor.Next;
DM.TCredor.Edit ;
end;

procedure TfrmCredor.BitBtn16Click(Sender: TObject);
begin
Application.CreateForm(Tfrmcredor_seleciona, frmcredor_seleciona);
frmcredor_seleciona.ShowModal;
frmcredor_seleciona.Free;
end;

procedure TfrmCredor.MaskEdit9Change(Sender: TObject);
begin
DBEdit91.Text := MaskEdit9.Text;
end;

procedure TfrmCredor.MaskEdit10Change(Sender: TObject);
begin
DBEdit92.Text := MaskEdit10.Text;
end;

procedure TfrmCredor.DBEdit91Change(Sender: TObject);
begin
MaskEdit9.Text := DBEdit91.Text;
end;

procedure TfrmCredor.DBEdit92Change(Sender: TObject);
begin
MaskEdit10.Text := DBEdit92.Text;
end;

procedure TfrmCredor.BitBtn10Click(Sender: TObject);
begin
dm.TCredor.edit;
DBEDIT91.Text := DBEDIT9.Text;
DBEDIT65.Text := DBEDIT5.Text ;
DBEDIT66.Text := DBEDIT88.Text ;
DBEDIT67.Text := DBEDIT87.Text ;
DBEDIT68.Text := DBEDIT8.Text ;
DBEDIT69.Text := DBEDIT11.Text ;
DBEDIT93.Text := UF.Text ;
dm.TCredor.post;
dm.TCredor.edit;
end;

procedure TfrmCredor.BitBtn11Click(Sender: TObject);
begin
dm.TCredor.edit;
DBEDIT92.Text := DBEDIT9.Text;
DBEDIT70.Text := DBEDIT5.Text ;
DBEDIT71.Text := DBEDIT88.Text ;
DBEDIT72.Text := DBEDIT87.Text ;
DBEDIT73.Text := DBEDIT8.Text ;
DBEDIT74.Text := DBEDIT11.Text ;
DBEDIT94.Text := UF.Text ;
dm.TCredor.post;
dm.TCredor.edit;
end;

procedure TfrmCredor.BitBtn21Click(Sender: TObject);
begin
dm.TCredor.edit;
DBEDIT91.Text := '';
DBEDIT65.Text := '';
DBEDIT66.Text := '';
DBEDIT67.Text := '';
DBEDIT68.Text := '';
DBEDIT69.Text := '';
dbedit93.Text := '';
dm.TCredor.post;
dm.TCredor.edit;
end;

procedure TfrmCredor.BitBtn22Click(Sender: TObject);
begin
dm.TCredor.edit;
DBEDIT92.Text := '';
DBEDIT70.Text := '';
DBEDIT71.Text := '';
DBEDIT72.Text := '';
DBEDIT73.Text := '';
DBEDIT74.Text := '';
dbedit94.Text := '';
dm.TCredor.post;
dm.TCredor.edit;
end;

procedure TfrmCredor.vendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_SPACE then vendedor.DropDown;
end;

procedure TfrmCredor.vendedorClick(Sender: TObject);
begin
dbedit10.Text := qvendedor['CODIGOVENDEDOR'];
end;

procedure TfrmCredor.STATUSChange(Sender: TObject);
begin
if status.Text = '' then
begin
dbedit95.Text := '0';
dbedit22.Text := '';
DBEDIT22.Enabled := false;
DBEDIT22.Color := CLbtnface;
end
else
begin
if status.Text = 'PENDENTE' then
begin
dbedit95.Text := '1';
DBEDIT22.Enabled := TRUE;
DBEDIT22.Color := CLWINDOW;
end
else
begin
if status.Text = 'BLOQUEADO' then
begin
dbedit95.Text := '2';
DBEDIT22.Enabled := TRUE;
DBEDIT22.Color := CLWINDOW;
end;
end;
end;
end;

procedure TfrmCredor.MaskEdit11Change(Sender: TObject);
begin
dbedit25.Text := maskedit11.text;
end;

procedure TfrmCredor.MaskEdit12Change(Sender: TObject);
begin
dbedit26.Text := maskedit12.Text ;
end;

procedure TfrmCredor.DBEdit25Change(Sender: TObject);
begin
maskedit11.Text := dbedit25.Text ;
end;

procedure TfrmCredor.DBEdit26Change(Sender: TObject);
begin
maskedit12.Text := dbedit26.Text ;
end;

procedure TfrmCredor.MaskEdit13Change(Sender: TObject);
begin
dbedit29.Text := maskedit13.Text ;
end;

procedure TfrmCredor.MaskEdit14Change(Sender: TObject);
begin
dbedit30.Text := maskedit14.Text ;
end;

procedure TfrmCredor.DBEdit29Change(Sender: TObject);
begin
maskedit13.Text := dbedit29.Text ;
end;

procedure TfrmCredor.DBEdit30Change(Sender: TObject);
begin
maskedit14.Text := dbedit30.Text ;
end;

procedure TfrmCredor.MaskEdit15Change(Sender: TObject);
begin
dbedit34.Text := maskedit15.Text ;
end;

procedure TfrmCredor.MaskEdit16Change(Sender: TObject);
begin
dbedit35.Text := maskedit16.Text ;
end;

procedure TfrmCredor.DBEdit34Change(Sender: TObject);
begin
maskedit15.Text := dbedit34.Text ;
end;

procedure TfrmCredor.DBEdit35Change(Sender: TObject);
begin
maskedit16.Text := dbedit35.Text ;
end;

procedure TfrmCredor.MaskEdit6Change(Sender: TObject);
begin
dbedit96.Text := maskedit6.Text ;
end;

procedure TfrmCredor.DBEdit96Change(Sender: TObject);
begin
maskedit6.Text := dbedit96.Text ;
end;

procedure TfrmCredor.EvCheckCPF2Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit6.Clear;
end;

procedure TfrmCredor.MaskEdit6Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit6.Clear;
end;

procedure TfrmCredor.MaskEdit17Change(Sender: TObject);
begin
dbedit43.Text := maskedit17.Text ;
end;

procedure TfrmCredor.MaskEdit18Change(Sender: TObject);
begin
dbedit44.Text := maskedit18.text;
end;

procedure TfrmCredor.DBEdit43Change(Sender: TObject);
begin
maskedit17.Text := dbedit43.Text ;
end;

procedure TfrmCredor.DBEdit44Change(Sender: TObject);
begin
maskedit18.Text := dbedit44.Text ;
end;

procedure TfrmCredor.MaskEdit7Change(Sender: TObject);
begin
dbedit97.Text := maskedit7.Text ;
end;

procedure TfrmCredor.DBEdit97Change(Sender: TObject);
begin
maskedit7.Text := dbedit97.Text ;
end;

procedure TfrmCredor.MaskEdit19Change(Sender: TObject);
begin
dbedit56.Text := maskedit19.Text ;
end;

procedure TfrmCredor.DBEdit56Change(Sender: TObject);
begin
maskedit19.Text := dbedit56.Text ;
end;

procedure TfrmCredor.MaskEdit21Change(Sender: TObject);
begin
dbedit98.Text := maskedit21.Text ;
end;

procedure TfrmCredor.MaskEdit22Change(Sender: TObject);
begin
dbedit60.Text := maskedit22.Text ;
end;

procedure TfrmCredor.DBEdit60Change(Sender: TObject);
begin
maskedit22.Text := dbedit60.Text ;
end;

procedure TfrmCredor.DBEdit98Change(Sender: TObject);
begin
maskedit21.Text := dbedit98.Text ;
end;

procedure TfrmCredor.MaskEdit8Change(Sender: TObject);
begin
dbedit78.Text := maskedit8.Text ;
end;

procedure TfrmCredor.DBEdit78Change(Sender: TObject);
begin
maskedit8.Text := dbedit78.Text ;
end;

procedure TfrmCredor.MaskEdit23Change(Sender: TObject);
begin
dbedit99.Text := maskedit23.Text ;
end;

procedure TfrmCredor.DBEdit99Change(Sender: TObject);
begin
maskedit23.Text := dbedit99.Text;
end;

procedure TfrmCredor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 80) Then bitbtn16.Click ;
end;

procedure TfrmCredor.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_DOWN then
begin
dbgrid1.SetFocus;
end;
end;

procedure TfrmCredor.STATUSEnter(Sender: TObject);
begin
if status.Text = '' then
begin
dbedit95.Text := '0';
dbedit22.Text := '';
DBEDIT22.Enabled := false;
DBEDIT22.Color := CLbtnface;
end
else
begin
if status.Text = 'PENDENTE' then
begin
dbedit95.Text := '1';
DBEDIT22.Enabled := TRUE;
DBEDIT22.Color := CLWINDOW;
end
else
begin
if status.Text = 'BLOQUEADO' then
begin
dbedit95.Text := '2';
DBEDIT22.Enabled := TRUE;
DBEDIT22.Color := CLWINDOW;
end;
end;
end;
end;

procedure TfrmCredor.TabSheet4Show(Sender: TObject);
begin
Qvendedor.Open;
qvendedor.Last ;
qvendedor.First;

if status.Text = '' then
begin
dbedit95.Text := '0';
dbedit22.Text := '';
DBEDIT22.Enabled := false;
DBEDIT22.Color := CLbtnface;
end
else
begin
if status.Text = 'PENDENTE' then
begin
dbedit95.Text := '1';
DBEDIT22.Enabled := TRUE;
DBEDIT22.Color := CLWINDOW;
end
else
begin
if status.Text = 'BLOQUEADO' then
begin
dbedit95.Text := '2';
DBEDIT22.Enabled := TRUE;
DBEDIT22.Color := CLWINDOW;
end;
end;
end;
end;

procedure TfrmCredor.DBEdit130Change(Sender: TObject);
begin
maskedit20.Text := dbedit130.Text ;
end;

procedure TfrmCredor.MaskEdit24Change(Sender: TObject);
begin
dbedit131.Text := maskedit24.Text ;
end;

procedure TfrmCredor.DBEdit131Change(Sender: TObject);
begin
maskedit24.Text := dbedit131.Text ;
end;

procedure TfrmCredor.MaskEdit25Change(Sender: TObject);
begin
dbedit132.Text := maskedit25.Text ;
end;

procedure TfrmCredor.MaskEdit26Change(Sender: TObject);
begin
dbedit133.Text := maskedit26.Text ;
end;

procedure TfrmCredor.DBEdit133Change(Sender: TObject);
begin
maskedit26.Text := dbedit133.Text ;
end;

procedure TfrmCredor.MaskEdit27Change(Sender: TObject);
begin
dbedit134.Text := maskedit27.Text ;
end;

procedure TfrmCredor.DBEdit134Change(Sender: TObject);
begin
maskedit27.Text := dbedit134.Text;
end;

procedure TfrmCredor.MaskEdit28Change(Sender: TObject);
begin
dbedit135.Text := maskedit28.Text ;
end;

procedure TfrmCredor.DBEdit135Change(Sender: TObject);
begin
maskedit28.Text := dbedit135.Text ;
end;

procedure TfrmCredor.MaskEdit29Change(Sender: TObject);
begin
dbedit136.Text := maskedit29.Text ;
end;

procedure TfrmCredor.DBEdit136Change(Sender: TObject);
begin
maskedit29.Text := dbedit136.Text ;
end;

procedure TfrmCredor.MaskEdit30Change(Sender: TObject);
begin
dbedit137.Text := maskedit30.Text ;
end;

procedure TfrmCredor.DBEdit137Change(Sender: TObject);
begin
maskedit30.Text := dbedit137.Text ;
end;

procedure TfrmCredor.MaskEdit31Change(Sender: TObject);
begin
dbedit138.Text := maskedit31.Text ;
end;

procedure TfrmCredor.DBEdit138Change(Sender: TObject);
begin
maskedit31.Text := dbedit138.Text ;
end;

procedure TfrmCredor.MaskEdit32Change(Sender: TObject);
begin
dbedit139.Text := maskedit32.Text ;
end;

procedure TfrmCredor.DBEdit139Change(Sender: TObject);
begin
maskedit32.Text := dbedit139.Text ;
end;

procedure TfrmCredor.DBEdit132Change(Sender: TObject);
begin
maskedit25.Text := dbedit132.Text ;
end;

procedure TfrmCredor.EvCheckCPF3Error(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit20.Clear;
end;

procedure TfrmCredor.EvCheckCPF4Error(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit24.Clear;
end;

procedure TfrmCredor.EvCheckCPF5Error(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit25.Clear;
end;

procedure TfrmCredor.EvCheckCPF6Error(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit26.Clear;
end;

procedure TfrmCredor.EvCheckCPF7Error(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit27.Clear;
end;

procedure TfrmCredor.EvCheckCPF8Error(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit28.Clear;
end;

procedure TfrmCredor.EvCheckCPF9Error(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit29.Clear;
end;

procedure TfrmCredor.EvCheckCPF10Error(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit30.Clear;
end;

procedure TfrmCredor.EvCheckCPF11Error(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit31.Clear;
end;

procedure TfrmCredor.EvCheckCPF12Error(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
maskedit32.Clear;
end;

procedure TfrmCredor.MaskEdit33Change(Sender: TObject);
begin
dbedit156.Text := maskedit33.Text ;
end;

procedure TfrmCredor.DBEdit156Change(Sender: TObject);
begin
maskedit33.Text := dbedit156.Text ;
end;

procedure TfrmCredor.MaskEdit34Change(Sender: TObject);
begin
dbedit157.Text := maskedit34.Text ;
end;

procedure TfrmCredor.DBEdit157Change(Sender: TObject);
begin
maskedit34.Text := dbedit157.Text ;
end;

procedure TfrmCredor.MaskEdit35Change(Sender: TObject);
begin
dbedit158.Text := maskedit35.Text ;
end;

procedure TfrmCredor.DBEdit158Change(Sender: TObject);
begin
maskedit35.Text := dbedit158.Text ;
end;

procedure TfrmCredor.MaskEdit36Change(Sender: TObject);
begin
dbedit159.Text := maskedit36.Text ;
end;

procedure TfrmCredor.DBEdit159Change(Sender: TObject);
begin
maskedit36.Text := dbedit159.Text ;
end;

procedure TfrmCredor.MaskEdit37Change(Sender: TObject);
begin
DBEDIT184.Text := MASKEDIT37.Text ;
end;

procedure TfrmCredor.DBEdit184Change(Sender: TObject);
begin
MASKEDIT37.Text := DBEDIT184.Text ;
end;

procedure TfrmCredor.MaskEdit39Change(Sender: TObject);
begin
DBEDIT185.Text := MASKEDIT39.Text ;
end;

procedure TfrmCredor.DBEdit185Change(Sender: TObject);
begin
MASKEDIT39.Text := DBEDIT185.Text ;
end;

procedure TfrmCredor.MaskEdit41Change(Sender: TObject);
begin
DBEDIT186.Text := MASKEDIT41.Text ;
end;

procedure TfrmCredor.DBEdit186Change(Sender: TObject);
begin
MASKEDIT41.Text := DBEDIT186.Text ;
end;

procedure TfrmCredor.MaskEdit43Change(Sender: TObject);
begin
DBEDIT187.Text := MASKEDIT43.Text ;
end;

procedure TfrmCredor.DBEdit187Change(Sender: TObject);
begin
MASKEDIT43.Text := DBEDIT187.Text ;
end;

procedure TfrmCredor.MaskEdit45Change(Sender: TObject);
begin
DBEDIT188.Text := MASKEDIT45.Text ;
end;

procedure TfrmCredor.DBEdit188Change(Sender: TObject);
begin
MASKEDIT45.Text := DBEDIT188.Text ;
end;

procedure TfrmCredor.MaskEdit47Change(Sender: TObject);
begin
DBEDIT189.Text := MASKEDIT47.Text ;
end;

procedure TfrmCredor.DBEdit189Change(Sender: TObject);
begin
MASKEDIT47.Text := DBEDIT189.Text ;
end;

procedure TfrmCredor.MaskEdit38Change(Sender: TObject);
begin
DBEDIT190.Text := MASKEDIT38.Text ;
end;

procedure TfrmCredor.MaskEdit40Change(Sender: TObject);
begin
DBEDIT191.Text := MASKEDIT40.Text ;
end;

procedure TfrmCredor.MaskEdit42Change(Sender: TObject);
begin
DBEDIT192.Text := MASKEDIT42.Text ;
end;

procedure TfrmCredor.MaskEdit44Change(Sender: TObject);
begin
DBEDIT193.Text := MASKEDIT44.Text ;
end;

procedure TfrmCredor.MaskEdit46Change(Sender: TObject);
begin
DBEDIT194.Text := MASKEDIT46.Text ;
end;

procedure TfrmCredor.MaskEdit48Change(Sender: TObject);
begin
DBEDIT195.Text := MASKEDIT48.Text ;
end;

procedure TfrmCredor.DBEdit190Change(Sender: TObject);
begin
MASKEDIT38.Text := DBEDIT190.Text ;
end;

procedure TfrmCredor.DBEdit191Change(Sender: TObject);
begin
MASKEDIT40.Text := DBEDIT191.Text ;
end;

procedure TfrmCredor.DBEdit192Change(Sender: TObject);
begin
MASKEDIT42.Text := DBEDIT192.Text ;
end;

procedure TfrmCredor.DBEdit193Change(Sender: TObject);
begin
MASKEDIT44.Text := DBEDIT193.Text ;
end;

procedure TfrmCredor.DBEdit194Change(Sender: TObject);
begin
MASKEDIT46.Text := DBEDIT194.Text ;
end;

procedure TfrmCredor.DBEdit195Change(Sender: TObject);
begin
MASKEDIT48.Text := DBEDIT195.Text ;
end;

procedure TfrmCredor.MaskEdit49Change(Sender: TObject);
begin
DBEDIT196.Text := MASKEDIT49.Text ;
end;

procedure TfrmCredor.MaskEdit51Change(Sender: TObject);
begin
DBEDIT197.Text := MASKEDIT51.Text ;
end;

procedure TfrmCredor.MaskEdit53Change(Sender: TObject);
begin
DBEDIT198.Text := MASKEDIT53.Text ;
end;

procedure TfrmCredor.MaskEdit55Change(Sender: TObject);
begin
DBEDIT199.Text := MASKEDIT55.Text ;
end;

procedure TfrmCredor.MaskEdit57Change(Sender: TObject);
begin
DBEDIT200.Text := MASKEDIT57.Text ;
end;

procedure TfrmCredor.MaskEdit59Change(Sender: TObject);
begin
DBEDIT201.Text := MASKEDIT59.Text ;
end;

procedure TfrmCredor.MaskEdit50Change(Sender: TObject);
begin
DBEDIT202.Text := MASKEDIT50.Text ;
end;

procedure TfrmCredor.MaskEdit52Change(Sender: TObject);
begin
DBEDIT203.Text := MASKEDIT52.Text ;
end;

procedure TfrmCredor.MaskEdit54Change(Sender: TObject);
begin
DBEDIT204.Text := MASKEDIT54.Text ;
end;

procedure TfrmCredor.MaskEdit56Change(Sender: TObject);
begin
DBEDIT205.Text := MASKEDIT56.Text ;
end;

procedure TfrmCredor.MaskEdit58Change(Sender: TObject);
begin
DBEDIT206.Text := MASKEDIT58.Text ;
end;

procedure TfrmCredor.MaskEdit60Change(Sender: TObject);
begin
DBEDIT207.Text := MASKEDIT60.Text ;
end;

procedure TfrmCredor.DBEdit196Change(Sender: TObject);
begin
MASKEDIT49.Text := DBEDIT196.Text ;
end;

procedure TfrmCredor.DBEdit197Change(Sender: TObject);
begin
MASKEDIT51.Text := DBEDIT197.Text ;
end;

procedure TfrmCredor.DBEdit198Change(Sender: TObject);
begin
MASKEDIT53.Text := DBEDIT198.Text ;
end;

procedure TfrmCredor.DBEdit199Change(Sender: TObject);
begin
MASKEDIT55.Text := DBEDIT199.Text ;
end;

procedure TfrmCredor.DBEdit200Change(Sender: TObject);
begin
MASKEDIT57.Text := DBEDIT200.Text ;
end;

procedure TfrmCredor.DBEdit201Change(Sender: TObject);
begin
MASKEDIT59.Text := DBEDIT201.Text ;
end;

procedure TfrmCredor.DBEdit202Change(Sender: TObject);
begin
MASKEDIT50.Text := DBEDIT202.Text ;
end;

procedure TfrmCredor.DBEdit203Change(Sender: TObject);
begin
MASKEDIT52.Text := DBEDIT203.Text ;
end;

procedure TfrmCredor.DBEdit204Change(Sender: TObject);
begin
MASKEDIT54.Text := DBEDIT204.Text ;
end;

procedure TfrmCredor.DBEdit205Change(Sender: TObject);
begin
MASKEDIT56.Text := DBEDIT205.Text ;
end;

procedure TfrmCredor.DBEdit206Change(Sender: TObject);
begin
MASKEDIT58.Text := DBEDIT206.Text ;
end;

procedure TfrmCredor.DBEdit207Change(Sender: TObject);
begin
MASKEDIT60.Text := DBEDIT207.Text ;
end;

procedure TfrmCredor.DBGrid1TitleClick(Column: TColumn);
var
  I: Integer;
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
  DM.TCredor.IndexFieldNames := Column.FieldName;
  Column.Title.Font.Style := [fsBold];

end;

procedure TfrmCredor.DBComboBox3Change(Sender: TObject);
begin
dbedit83.Text := dbcombobox3.Text ;

if dbcombobox3.Text = '1-PESSOA FÍSICA' then
begin
dbedit208.Text := '1';
end
else
begin
if dbcombobox3.Text = '2-PESSOA JURÍDICA' then
begin
dbedit208.Text := '2';
end
else
begin
if dbcombobox3.Text = '3-PRODUTOR RURAL' then
begin
dbedit208.Text := '3';
end;
end;
end;
end;

procedure TfrmCredor.clientedesdeEnter(Sender: TObject);
begin
if clientedesde.Text = '  /  /    ' then
begin
dm.TCredor.Edit ;
clientedesde.Text := DateToStr(Now);
end;
end;

procedure TfrmCredor.DATACADASTRAMENTOEnter(Sender: TObject);
begin
if DATACADASTRAMENTO.Text = '  /  /    ' then
begin
dm.TCredor.Edit ;
DATACADASTRAMENTO.Text   := DateToStr(now);
END;
end;

procedure TfrmCredor.BitBtn12Click(Sender: TObject);
var
Mail : String;
begin
Mail := 'mailto:'+dbedit15.Text;
ShellExecute(GetDesktopWindow,'open',pchar(Mail),nil,nil,sw_ShowNormal);
end;

procedure TfrmCredor.DBEdit82Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet13;
end;

procedure TfrmCredor.DBEdit94Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet4;
end;

procedure TfrmCredor.DBEdit21Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet14;
end;

procedure TfrmCredor.DBEdit155Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet9;
end;

procedure TfrmCredor.MaskEdit60Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet10;
end;

procedure TfrmCredor.DBCheckBox7Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet12;
end;

procedure TfrmCredor.DBEdit37Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet5;
end;

procedure TfrmCredor.DBEdit46Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet6;
end;

procedure TfrmCredor.MaskEdit32Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet7;
end;

procedure TfrmCredor.MaskEdit19Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet8;
end;

procedure TfrmCredor.DBComboBox5Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet11;
end;

procedure TfrmCredor.TabSheet2Show(Sender: TObject);
begin
Label1.Caption := 'Pesquisa de Clientes';

qcredor.Open;
if qcredor.RecordCount = 0 then
begin
qcredor.Close;
Application.MessageBox('Não hà Clientes cadastrados para execução deste menu!', 'Pesquisa', mb_Ok + mb_IconInformation);
DBEdit2.SetFocus;
end
else
begin
if (cidade.Text = '') and (tipopessoa.Text = '') then
begin
    with QCredor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('select Count(*) CODIGOCREDOR');
      SQL.Add('from Credor');
      Open;
    end;
    Panel18.Caption := 'Cliente(s) Cadastrado(s).: '+ QCredor.FieldByName('CODIGOCREDOR').AsString;
    QCredor.Close ;
    Label1.Caption := 'Pesquisa de Clientes';
    BitBtn6.Visible := False;
    BitBtn7.Visible := True;
    Edit1.SetFocus;
end;
    BitBtn6.Visible := False;
    BitBtn7.Visible := True;
end;
end;

end.
