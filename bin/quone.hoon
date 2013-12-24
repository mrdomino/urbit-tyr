!:
::  /=tyr=/bin/quone/hoon
::
::  This is not a Hoon quine, but its output is a Hoon quine.
|=  *
|=  ~
^-  bowl
:_  ~  :_  ~
=<  quin
|%
++  quin  [%la %leaf "{q}\22{(qu q)}\22  --"]
++  qu
  |=  p=tape  ^-  tape
  ?~  p ~
  ?+  i.p [i.p $(p t.p)]
    %'{'  (weld "\\7b" $(p t.p))
    %'"'  (weld "\\22" $(p t.p))
    %'\\' (weld "\\5c" $(p t.p))
  ==
++  q  "|=  *  |=  ~  ^-  bowl  :_  ~  :_  ~  =<  quin  |%  ++  quin  [%la %leaf \22\7bq\7d\5c22\7b(qu q)\7d\5c22  --\22]  ++  qu  |=  p=tape  ^-  tape  ?~  p ~  ?+  i.p  [i.p $(p t.p)]  %'\{' (weld \"\\\\7b\" $(p t.p))  %'\"' (weld \"\\\\22\" $(p t.p))  %'\\\\' (weld \"\\\\5c\" $(p t.p))  ==  ++  q  "
--
