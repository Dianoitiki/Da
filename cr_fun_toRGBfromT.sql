Create or replace function toRGBfromT(T int, deg varchar(5)) returns table (R int,G int, B int)
as
$$
  declare uT int;
  declare dT int;
  declare k numeric(10,2);
  declare r1 float;
  declare r float; declare g float; declare b float;
  begin
    if(T < 1000 or T > 40000 or T is null) then return next; return; end if;
    if(T<>40000) then
      select downRound(T,2) into dT;
      select upRound(T,2) into uT;
    else
      uT:=T;
      dT:=T;
    end if;
    select (T-temperature)/100.0 from bbr where temperature=dT and cmf=deg into k;
    return query select (b1._r+abs(b2._r-b1._r)*k)::int,(b1._g+abs(b2._g-b1._g)*k)::int,(b1._b+abs(b2._b-b1._b)*k)::int from bbr b1,bbr b2
      where b1.temperature=dT and b1.cmf=deg and b2.temperature=uT and b2.cmf=deg;
  end;
$$ language plpgsql;
