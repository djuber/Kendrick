tests
testKEModelWith3Compartments

| model |
model := KEModel new.
model atCompartment:#S putNumberOfIndividuals: 1-1e-6.
model atCompartment:#I putNumberOfIndividuals: 1e-6.
model atCompartment:#R putNumberOfIndividuals: 0.
self assert: 3 equals: model numberOfCompartments