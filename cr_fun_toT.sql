Create or replace function toT(BV float) returns float
as
$$
  begin
    if(BV=null) then return null; end if;
    return 4600.0*(1.0/(0.92*BV+1.7)+1.0/(0.92*BV+0.62));
  end;
$$ language plpgsql;
