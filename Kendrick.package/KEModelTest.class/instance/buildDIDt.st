as yet unclassified
buildDIDt

| didt expbin1 expbin2 m1 m2 vars vari beta s m3 gamma gammaI |
didt := KEEquation new.
expbin1 := KEBinaryExpression new.
expbin2 := KEBinaryExpression new.

m1 := #*.
m2 := #*.
vars := (KEVariable new) symbol:#S.
vari := (KEVariable new) symbol:#I.
beta := (KEVariable new) symbol:#beta.

expbin2 op:m1; leftHandSide: vars; rightHandSide: vari.
expbin1 op:m2; leftHandSide: beta; rightHandSide: expbin2.

s := KEBinaryExpression new.
s leftHandSide: expbin1.
s op:#-.

m3 := #*.
gamma := (KEVariable new) symbol:'gamma'.

gammaI := KEBinaryExpression new.
gammaI op: m3; leftHandSide: gamma; rightHandSide:vari.

s rightHandSide: gammaI.

didt variable: vari; expression: s.
^ didt
