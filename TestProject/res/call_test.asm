ADD AL,02
CALL 80
ADD AL,02

HALT


ORG 80
ADD BL, 04
CALL 90
ADD BL, 04
CALL 90
RET

ORG 90
ADD DL,03
RET

END
