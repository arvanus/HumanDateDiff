unit HumanDateDiff.Lang.EN;

interface

uses HumanDateDiff.Lang;
var Lang : TLang;

implementation

initialization

  Lang := TLang.create();
  Lang.Add(THumanDateDiffLang.Year, '%d year');
  Lang.Add(THumanDateDiffLang.Years, '%d years');
  Lang.Add(THumanDateDiffLang.Month, '%d month');
  Lang.Add(THumanDateDiffLang.Months, '%d months');
  Lang.Add(THumanDateDiffLang.Week, '%d week');
  Lang.Add(THumanDateDiffLang.Weeks, '%d weeks');
  Lang.Add(THumanDateDiffLang.Day, '%d day');
  Lang.Add(THumanDateDiffLang.Days, '%d days');
  Lang.Add(THumanDateDiffLang.Hour, '%d hour');
  Lang.Add(THumanDateDiffLang.Hours, '%d hours');
  Lang.Add(THumanDateDiffLang.Minute, '%d minute');
  Lang.Add(THumanDateDiffLang.Minutes, '%d minutes');
  Lang.Add(THumanDateDiffLang.Now_, 'now');
  Lang.Add(THumanDateDiffLang.RelativeNow_, 'zero seconds');
  Lang.Add(THumanDateDiffLang.Seconds1Sec, 'one second');
  Lang.Add(THumanDateDiffLang.Seconds2Sec, 'a few seconds');
  Lang.Add(THumanDateDiffLang.Seconds, '%d seconds');
//  Lang.Add(THumanDateDiffLang.RelativeNow, 'a second');
//  Lang.Add(THumanDateDiffLang.rightNow, 'right now');
//  Lang.Add(THumanDateDiffLang.almostNow, 'almost now');
//  Lang.Add(THumanDateDiffLang.relativeRightNow, 'one second');
//  Lang.Add(THumanDateDiffLang.relativeAlmostNow, 'just some seconds');
  Lang.Add(THumanDateDiffLang.before, ' before');
  Lang.Add(THumanDateDiffLang.after, ' after');

end.
end.
