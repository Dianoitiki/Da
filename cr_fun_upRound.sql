create or replace function upRound(value float,par int) returns int as
$$
  declare
    v int := 0;
  begin
    if(par<0) then raise exception 'parameter par can`t be less than zero' 
        using hint='only positive numbers'; end if;
    select cast(floor(value) as int) into v;
    return (v/(pow(10,par)::int)+1)*pow(10,par);
  end;
$$ language plpgsql;
