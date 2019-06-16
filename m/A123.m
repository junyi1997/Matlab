  'EX7_a'
  n=9*poly([-2 -3]);
  d=poly([-1 -4 -5 -6]);
  G=tf(n,d);
  T=feedback(G,1)