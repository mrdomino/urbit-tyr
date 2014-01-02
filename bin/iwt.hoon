!:
::  /=main=/bin/tach/hoon
::
=>  %=    .
        +
      =>  +
      |%
      ++  iwta      ::  integer wavelet transform, average
        |=  a=(list ,@s)
        ^-  (list ,@s)
        ?~  a  ~
        ?~  t.a
          a
        [(fra:si (sum:si i.a i.t.a) --2) $(a t.t.a)]
      ++  iwtd      ::  integer wavelet transform, difference
        |=  a=(list ,@s)
        ^-  (list ,@s)
        ?~  a  ~
        ?~  t.a
          ~
        [(dif:si i.a i.t.a) $(a t.t.a)]
      ++  iiwt      ::  inverse integer wavelet transform
        |=  [a=(list ,@s) d=(list ,@s)]
        ^-  (list ,@s)
        ?~  a
          ?~  d
            ~
          !!
        ?~  d
          ?~  t.a
            a
          !!
        =+  hd=(fra:si i.d --2)
        =+  md=(sum:si (rem:si i.d --2) hd)
        ?:  =(0 (syn:si i.d))
          [(sum:si i.a md) (dif:si i.a hd) $(a t.a, d t.d)]
        [(sum:si i.a hd) (dif:si i.a md) $(a t.a, d t.d)]
      --
    ==
|=  *
|=  [foo=(list ,@s) ~]
^-  bowl
:_  ~  :_  ~
:-  %$
!>
=+  a=(iwta foo)
=+  aa=(iwta a)
=+  ad=(iwtd a)
=+  ap=(iiwt [aa ad])
=+  d=(iwtd foo)
=+  da=(iwta d)
=+  dd=(iwtd d)
=+  dp=(iiwt [da dd])
=+  c=(iiwt [ap dp])
(homo c)
