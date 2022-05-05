unit HumanDateDiff;

interface
uses DateUtils, System.Generics.Collections, HumanDateDiff.Lang;
//  type
//  var LangBR: TLang;
//  var LangEN: TLang;
  var DefaultLang: TLang;
  var DefaultPrintAfterBefore:Boolean;

  type
  ['{BC58395B-419C-4282-BA12-17A68BEF0822}']
  IHumanDateDiff = interface(IInterface)
    function Lang(pLang:TLang):IHumanDateDiff;
    function PrintAfterBefore(pPrintAB:Boolean):IHumanDateDiff;
    function Diff(pDateFrom, pDateTo:TDateTime):String;
  end;

  THumanDateDiff = class(TInterfacedObject, IHumanDateDiff)
  private
    [weak]
    lLang:TLang;
    lPrintAB:Boolean;
    function _toStr(pSingular, pPlural:String; pValor:Integer; pFuture:Boolean):String;
  public
    function Lang(pLang:TLang):IHumanDateDiff;
    function PrintAfterBefore(pPrintAB:Boolean):IHumanDateDiff;
    function Diff(pDateFrom, pDateTo:TDateTime):String;
    class function New:IHumanDateDiff;
  end;
implementation

uses
  System.SysUtils, StrUtils, HumanDateDiff.Lang.BR;


{ THumanDateDiff }

function THumanDateDiff.Diff(pDateFrom, pDateTo: TDateTime): String;
begin
  if(YearsBetween(pDateFrom, pDateTo)>0) then
    result := self._toStr(lLang.Items[THumanDateDiffLang.Year], lLang.Items[THumanDateDiffLang.Years], YearsBetween(pDateFrom, pDateTo), pDateFrom<pDateTo)
  else   if(MonthsBetween(pDateFrom, pDateTo)>0) then
    result := self._toStr(lLang.Items[THumanDateDiffLang.Month], lLang.Items[THumanDateDiffLang.Months], MonthsBetween(pDateFrom, pDateTo), pDateFrom<pDateTo)
  else   if(WeeksBetween(pDateFrom, pDateTo)>0) then
    result := self._toStr(lLang.Items[THumanDateDiffLang.Week], lLang.Items[THumanDateDiffLang.Weeks], WeeksBetween(pDateFrom, pDateTo), pDateFrom<pDateTo)
  else   if(DaysBetween(pDateFrom, pDateTo)>0) then
    result := self._toStr(lLang.Items[THumanDateDiffLang.Day], lLang.Items[THumanDateDiffLang.Days], DaysBetween(pDateFrom, pDateTo), pDateFrom<pDateTo)
  else   if(HoursBetween(pDateFrom, pDateTo)>0) then
    result := self._toStr(lLang.Items[THumanDateDiffLang.Hour], lLang.Items[THumanDateDiffLang.Hours], HoursBetween(pDateFrom, pDateTo), pDateFrom<pDateTo)
  else   if(MinutesBetween(pDateFrom, pDateTo)>0) then
    result := self._toStr(lLang.Items[THumanDateDiffLang.Minute], lLang.Items[THumanDateDiffLang.Minutes], MinutesBetween(pDateFrom, pDateTo), pDateFrom<pDateTo)
  else   if(SecondsBetween(pDateFrom, pDateTo)>10) then
    result := self._toStr(lLang.Items[THumanDateDiffLang.Seconds], lLang.Items[THumanDateDiffLang.Seconds], SecondsBetween(pDateFrom, pDateTo), pDateFrom<pDateTo)
  else   if(SecondsBetween(pDateFrom, pDateTo)>1) then
    result := self._toStr(lLang.Items[THumanDateDiffLang.Seconds2Sec], lLang.Items[THumanDateDiffLang.Seconds2Sec], SecondsBetween(pDateFrom, pDateTo), pDateFrom<pDateTo)
  else   if(SecondsBetween(pDateFrom, pDateTo)>0) then
    result := self._toStr(lLang.Items[THumanDateDiffLang.Seconds1Sec], lLang.Items[THumanDateDiffLang.Seconds1Sec], SecondsBetween(pDateFrom, pDateTo), pDateFrom<pDateTo)
  else
  begin
    if self.lPrintAB then
      result := lLang.Items[THumanDateDiffLang.Now_]
    else
      result := lLang.Items[THumanDateDiffLang.RelativeNow_]
  end;
end;

function THumanDateDiff.Lang(pLang: TLang): IHumanDateDiff;
begin
  result := self;
  self.lLang := pLang;

end;

class function THumanDateDiff.New: IHumanDateDiff;
var lOb:THumanDateDiff;
begin
  lOb:=THumanDateDiff.Create;
  lOb.lLang := DefaultLang;
  lOb.lprintAB := DefaultPrintAfterBefore;
  result := lOb;
end;

function THumanDateDiff.PrintAfterBefore(pPrintAB: Boolean): IHumanDateDiff;
begin
  result := self;
  self.lPrintAB := pPrintAB;
end;

function THumanDateDiff._toStr(pSingular, pPlural: String;
  pValor: Integer; pFuture:Boolean): String;
begin
  result := ifthen(pValor=1, pSingular, pPlural);
  if pSingular.Contains('%') or pPlural.Contains('%') then
    result := format(result, [pValor]);

  result := result+ifthen(self.lPrintAB, ifthen(pFuture, lLang.Items[THumanDateDiffLang.before], lLang.Items[THumanDateDiffLang.after]), '');
end;

initialization
  DefaultLang             := HumanDateDiff.Lang.BR.Lang;
  DefaultPrintAfterBefore := true;
end.
