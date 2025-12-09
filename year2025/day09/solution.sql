select concat(tc.color_name, '-', lc.color_name)
from tinsel_colors tc
cross join light_colors lc
