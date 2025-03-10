do $$
	declare
		hora1 int;
		hora2 int;
		min1 int;
		min2 int;
		seg1 int;
		seg2 int;
		horaf int;
		minf int;
		segf int;
	begin
		hora1 := 12; min1 := 30; seg1 := 30;
		hora2 := 12; min2 := 30; seg2 := 30;
		horaf := hora1 + hora2;
		minf := min1 + min2;
		segf := seg1 + seg2;
		
		case
			when segf >= 60 then
				minf = minf + (segf / 60);
				segf = segf % 60;
			else
		end case;
		case
			when minf >= 60 then
				horaf = horaf + (minf / 60);
				minf = minf % 60;
			else
		end case;
		
	raise notice '%:%:%', horaf, minf, segf;
end $$;