select level, lpad('*',2*21 - 2*level,' *')
From
dual
connect by level <= 20;
