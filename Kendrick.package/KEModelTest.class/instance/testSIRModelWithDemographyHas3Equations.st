tests
testSIRModelWithDemographyHas3Equations

| model solverRK dydx j listOfEquations nbIterations result |
model := KEModel new.
model atCompartment:#S putNumberOfIndividuals: 99999.
model atCompartment:#I putNumberOfIndividuals: 1.
model atCompartment:#R putNumberOfIndividuals: 0.
model atParameter:#beta put: 0.0052.
model atParameter: #gamma put: 365/7.
model atParameter: #mu put: 1/80.
model atParameter: #N put: 100000.

model addEquation: (PPODEParser parse:'S:t= mu*N-beta*S*I-mu*S').
model addEquation: (PPODEParser parse: 'I:t=beta*S*I-gamma*I-mu*I').
model addEquation: (PPODEParser parse: 'R:t=gamma*I-mu*R').

self assert: 3 equals: model numberOfEquations


