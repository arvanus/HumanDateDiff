unit HumanDateDiff.Lang.BR;

interface

uses HumanDateDiff.Lang;
var Lang : TLang;
implementation

initialization
  Lang := TLang.create();
  Lang.Add(THumanDateDiffLang.Year, '%d ano');
  Lang.Add(THumanDateDiffLang.Years, '%d anos');
  Lang.Add(THumanDateDiffLang.Month, '%d mes');
  Lang.Add(THumanDateDiffLang.Months, '%d meses');
  Lang.Add(THumanDateDiffLang.Week, '%d semana');
  Lang.Add(THumanDateDiffLang.Weeks, '%d semanas');
  Lang.Add(THumanDateDiffLang.Day, '%d dia');
  Lang.Add(THumanDateDiffLang.Days, '%d dias');
  Lang.Add(THumanDateDiffLang.Hour, '%d hora');
  Lang.Add(THumanDateDiffLang.Hours, '%d horas');
  Lang.Add(THumanDateDiffLang.Minute, '%d minuto');
  Lang.Add(THumanDateDiffLang.Minutes, '%d minutos');
  Lang.Add(THumanDateDiffLang.Now_, 'agora');
  Lang.Add(THumanDateDiffLang.RelativeNow_, 'zero segundos');
  Lang.Add(THumanDateDiffLang.Seconds1Sec, 'um segundo');
  Lang.Add(THumanDateDiffLang.Seconds2Sec, 'alguns segundos');
  Lang.Add(THumanDateDiffLang.Seconds, '%d segundos');
//  Lang.Add(THumanDateDiffLang.RelativeNow, 'nem um segundo');
//  Lang.Add(THumanDateDiffLang.rightNow, 'agora mesmo');
//  Lang.Add(THumanDateDiffLang.almostNow, 'quase agora');
//  Lang.Add(THumanDateDiffLang.relativeRightNow, 'um segundo');
//  Lang.Add(THumanDateDiffLang.relativeAlmostNow, 'alguns segundos');
  Lang.Add(THumanDateDiffLang.before, ' antes');
  Lang.Add(THumanDateDiffLang.after, ' depois');
end.
end.
