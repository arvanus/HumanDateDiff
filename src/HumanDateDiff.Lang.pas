unit HumanDateDiff.Lang;

interface
uses System.Generics.Collections;
type
  THumanDateDiffLang = (
    Year, Years
    ,Month, Months
    ,Week, Weeks
    ,Day, Days
    ,Hour, Hours
    ,Minute, Minutes
    ,Now_
    ,RelativeNow_
    ,Seconds1Sec
    ,Seconds2Sec
    ,Seconds
    {,rightNow
    ,almostNow
    ,RelativeNow
    ,relativeRightNow
    ,relativeAlmostNow
    },before, after
  );
  TLang = TDictionary<THumanDateDiffLang, String>;


implementation

end.
