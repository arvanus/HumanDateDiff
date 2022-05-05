program HumanDateDiffSample;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DateUtils,
  HumanDateDiff in '..\src\HumanDateDiff.pas',
  HumanDateDiff.Lang.BR in '..\src\HumanDateDiff.Lang.BR.pas',
  HumanDateDiff.Lang in '..\src\HumanDateDiff.Lang.pas',
  HumanDateDiff.Lang.EN in '..\src\HumanDateDiff.Lang.EN.pas';

var lHDD:IHumanDateDiff;
procedure print;
begin
{  writeln(lHDD.diff(IncMonth(today, -25), today));
  writeln(lHDD.diff(IncMonth(today, -13), today));
  writeln(lHDD.diff(IncMonth(now, -2), now));
  writeln(lHDD.diff(IncWeek(now, -5), now));
  writeln(lHDD.diff(IncWeek(now, -2), now));
  writeln(lHDD.diff(IncWeek(now, -1), now));
  writeln(lHDD.diff(IncDay(now, -2), now));
  writeln(lHDD.diff(IncDay(now, -1), now));
  writeln(lHDD.diff(IncHour(now, -2), now));
  writeln(lHDD.diff(IncHour(now, -1), now));
}  writeln(lHDD.diff(IncMinute(now, -2), now));
  writeln(lHDD.diff(IncMinute(now, -1), now));
  writeln(lHDD.diff(IncSecond(now, -5), now));
  writeln(lHDD.diff(IncSecond(now, -1), now));
  writeln(lHDD.diff(now, now));
  writeln(lHDD.diff(IncSecond(now, 1), now));
  writeln(lHDD.diff(IncSecond(now, 5), now));
  writeln(lHDD.diff(IncMinute(now, 1), now));
  writeln(lHDD.diff(IncMinute(now, 2), now));
{  writeln(lHDD.diff(IncHour(now, 1), now));
  writeln(lHDD.diff(IncHour(now, 2), now));
  writeln(lHDD.diff(IncDay(now, 1), now));
  writeln(lHDD.diff(IncDay(now, 2), now));
  writeln(lHDD.diff(IncWeek(now, 1), now));
  writeln(lHDD.diff(IncWeek(now, 2), now));
  writeln(lHDD.diff(IncWeek(now, 5), now));
  writeln(lHDD.diff(IncMonth(now, 2), now));
  writeln(lHDD.diff(IncMonth(today, 13), today));
  writeln(lHDD.diff(IncMonth(today, 25), today));
}
end;
begin
  try
    lHDD := THumanDateDiff.New.Lang(HumanDateDiff.Lang.BR.Lang).PrintAfterBefore(true);
//    writeln('Tempo Absoluto:');
    writeln('BR');
    print;
    writeln('EN');
    lHDD := lHDD.Lang(HumanDateDiff.Lang.EN.Lang);
    print;
    lHDD := lHDD.Lang(HumanDateDiff.Lang.BR.Lang).PrintAfterBefore(false);
//    writeln('Tempo Relativo:');
    writeln('BR');
    print;
    writeln('EN');
    lHDD := lHDD.Lang(HumanDateDiff.Lang.EN.Lang);
    print;
    readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
