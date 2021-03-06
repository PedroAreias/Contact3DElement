!**************************************************************
!* AceGen    6.808 Linux (6 Sep 16)                           *
!*           Co. J. Korelc  2013           3 Nov 18 19:59:13  *
!**************************************************************
! User     : Full professional version
! Notebook : area3dpristine
! Evaluation time                 : 3 s     Mode  : Optimal
! Number of formulae              : 72      Method: Automatic
! Subroutine                      : area3dpristine size: 1528
! Total size of Mathematica  code : 1528 subexpressions
! Total size of Fortran code      : 4287 bytes

!******************* S U B R O U T I N E **********************
SUBROUTINE area3dpristine(v,x,xo,dvel,vel,g,gv,dg,dgv,n,dn)
USE SMSUtility
IMPLICIT NONE
DOUBLE PRECISION v(279),x(4,3),xo(4,3),dvel,vel(4,3),g(3),gv(3),dg(3,12),dgv(3,12),n(3),dn(3,12)
v(270)=-xo(2,3)+xo(4,3)
v(269)=-xo(1,3)+xo(4,3)
v(268)=-xo(2,2)+xo(4,2)
v(267)=-xo(1,2)+xo(4,2)
v(266)=-xo(2,1)+xo(4,1)
v(265)=-xo(1,1)+xo(4,1)
v(264)=xo(3,3)-xo(4,3)
v(263)=xo(3,2)-xo(4,2)
v(262)=xo(3,1)-xo(4,1)
v(257)=-(x(2,2)*x(3,3))
v(256)=x(2,3)*x(3,2)
v(255)=x(2,1)*x(3,3)
v(254)=-(x(2,3)*x(3,1))
v(253)=x(3,3)-x(4,3)
v(252)=-x(2,3)+x(4,3)
v(251)=-(x(2,1)*x(3,2))
v(250)=x(2,2)*x(3,1)
v(249)=-x(3,2)+x(4,2)
v(248)=x(2,2)-x(4,2)
v(247)=x(3,1)-x(4,1)
v(261)=2d0*v(247)
v(246)=-x(2,1)+x(4,1)
v(260)=2d0*v(246)
v(245)=x(2,3)-x(3,3)
v(244)=-x(2,2)+x(3,2)
v(243)=x(2,1)-x(3,1)
v(258)=2d0*v(243)
v(187)=v(250)+v(251)+v(244)*x(4,1)+v(243)*x(4,2)
v(272)=2d0*v(187)
v(188)=v(254)+v(255)+v(245)*x(4,1)-v(243)*x(4,3)
v(273)=2d0*v(188)
v(186)=v(256)+v(257)-v(245)*x(4,2)-v(244)*x(4,3)
v(259)=(-2d0)*v(186)
v(223)=-(v(188)*v(258))+v(244)*v(259)
v(221)=v(187)*v(258)+v(245)*v(259)
v(218)=v(248)*v(259)-v(188)*v(260)
v(216)=v(252)*v(259)+v(187)*v(260)
v(213)=v(249)*v(259)-v(188)*v(261)
v(211)=v(253)*v(259)+v(187)*v(261)
v(155)=(v(262)*v(262))+(v(263)*v(263))+(v(264)*v(264))
v(169)=-(v(262)*v(265))-v(263)*v(267)-v(264)*v(269)
v(168)=(v(266)*v(266))+(v(268)*v(268))+(v(270)*v(270))
v(167)=v(265)*v(266)+v(267)*v(268)+v(269)*v(270)
v(165)=-(v(262)*v(266))-v(263)*v(268)-v(264)*v(270)
v(170)=1d0/(-(v(165)*v(165))+v(155)*v(168))
v(166)=(v(155)*v(167)-v(165)*v(169))*v(170)
v(171)=(-(v(165)*v(167))+v(168)*v(169))*v(170)
v(173)=1d0-v(166)-v(171)
v(185)=(v(186)*v(186))+(v(187)*v(187))+(v(188)*v(188))
v(190)=1d0/sqrt(v(185))
v(210)=-v(190)/(2d0*v(185))
v(274)=v(187)*v(210)
v(271)=v(188)*v(210)
v(232)=v(223)*v(271)
v(229)=v(218)*v(271)
v(226)=v(213)*v(271)
v(192)=v(186)*v(210)
v(231)=v(192)*v(223)
v(228)=v(192)*v(218)
v(225)=v(192)*v(213)
v(220)=v(192)*v(221)
v(215)=v(192)*v(216)
v(209)=v(192)*v(211)
g(1)=x(1,1)-v(166)*x(2,1)-v(171)*x(3,1)-v(173)*x(4,1)
g(2)=x(1,2)-v(166)*x(2,2)-v(171)*x(3,2)-v(173)*x(4,2)
g(3)=x(1,3)-v(166)*x(2,3)-v(171)*x(3,3)-v(173)*x(4,3)
gv(1)=vel(1,1)-v(166)*vel(2,1)-v(171)*vel(3,1)-v(173)*vel(4,1)
gv(2)=vel(1,2)-v(166)*vel(2,2)-v(171)*vel(3,2)-v(173)*vel(4,2)
gv(3)=vel(1,3)-v(166)*vel(2,3)-v(171)*vel(3,3)-v(173)*vel(4,3)
dg(1,1)=1d0
dg(1,2)=0d0
dg(1,3)=0d0
dg(1,4)=-v(166)
dg(1,5)=0d0
dg(1,6)=0d0
dg(1,7)=-v(171)
dg(1,8)=0d0
dg(1,9)=0d0
dg(1,10)=-v(173)
dg(1,11)=0d0
dg(1,12)=0d0
dg(2,1)=0d0
dg(2,2)=1d0
dg(2,3)=0d0
dg(2,4)=0d0
dg(2,5)=-v(166)
dg(2,6)=0d0
dg(2,7)=0d0
dg(2,8)=-v(171)
dg(2,9)=0d0
dg(2,10)=0d0
dg(2,11)=-v(173)
dg(2,12)=0d0
dg(3,1)=0d0
dg(3,2)=0d0
dg(3,3)=1d0
dg(3,4)=0d0
dg(3,5)=0d0
dg(3,6)=-v(166)
dg(3,7)=0d0
dg(3,8)=0d0
dg(3,9)=-v(171)
dg(3,10)=0d0
dg(3,11)=0d0
dg(3,12)=-v(173)
v(237)=-(dvel*v(166))
v(238)=-(dvel*v(171))
v(239)=-(dvel*v(173))
dgv(1,1)=dvel
dgv(1,2)=0d0
dgv(1,3)=0d0
dgv(1,4)=v(237)
dgv(1,5)=0d0
dgv(1,6)=0d0
dgv(1,7)=v(238)
dgv(1,8)=0d0
dgv(1,9)=0d0
dgv(1,10)=v(239)
dgv(1,11)=0d0
dgv(1,12)=0d0
dgv(2,1)=0d0
dgv(2,2)=dvel
dgv(2,3)=0d0
dgv(2,4)=0d0
dgv(2,5)=v(237)
dgv(2,6)=0d0
dgv(2,7)=0d0
dgv(2,8)=v(238)
dgv(2,9)=0d0
dgv(2,10)=0d0
dgv(2,11)=v(239)
dgv(2,12)=0d0
dgv(3,1)=0d0
dgv(3,2)=0d0
dgv(3,3)=dvel
dgv(3,4)=0d0
dgv(3,5)=0d0
dgv(3,6)=v(237)
dgv(3,7)=0d0
dgv(3,8)=0d0
dgv(3,9)=v(238)
dgv(3,10)=0d0
dgv(3,11)=0d0
dgv(3,12)=v(239)
n(1)=v(186)*v(190)
n(2)=v(188)*v(190)
n(3)=v(187)*v(190)
dn(1,1)=0d0
dn(1,2)=0d0
dn(1,3)=0d0
dn(1,4)=v(192)*(v(249)*v(272)+v(253)*v(273))
dn(1,5)=v(209)-v(190)*v(253)
dn(1,6)=v(225)-v(190)*v(249)
dn(1,7)=v(192)*(v(248)*v(272)+v(252)*v(273))
dn(1,8)=v(215)-v(190)*v(252)
dn(1,9)=v(228)-v(190)*v(248)
dn(1,10)=v(192)*(v(244)*v(272)+v(245)*v(273))
dn(1,11)=v(220)-v(190)*v(245)
dn(1,12)=v(231)-v(190)*v(244)
dn(2,1)=0d0
dn(2,2)=0d0
dn(2,3)=0d0
dn(2,4)=v(209)
dn(2,5)=v(211)*v(271)
dn(2,6)=v(226)-v(190)*v(247)
dn(2,7)=v(215)
dn(2,8)=v(216)*v(271)
dn(2,9)=v(229)-v(190)*v(246)
dn(2,10)=v(220)
dn(2,11)=v(221)*v(271)
dn(2,12)=v(232)-v(190)*v(243)
dn(3,1)=0d0
dn(3,2)=0d0
dn(3,3)=0d0
dn(3,4)=v(225)
dn(3,5)=v(226)
dn(3,6)=v(213)*v(274)
dn(3,7)=v(228)
dn(3,8)=v(229)
dn(3,9)=v(218)*v(274)
dn(3,10)=v(231)
dn(3,11)=v(232)
dn(3,12)=v(223)*v(274)
END
