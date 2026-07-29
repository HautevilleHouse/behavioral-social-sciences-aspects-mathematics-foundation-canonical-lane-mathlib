import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure BehavioralAdmittedObject where
  model : Type u
  rationalityAssumption : Prop
  equilibriumExistence : Prop
  welfareCriterion : Prop
  conclusion : equilibriumExistence → welfareCriterion

structure AdmissibleClass where
  object : BehavioralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BehavioralWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BehavioralWitnessClosed (O : BehavioralAdmittedObject) : Prop :=
  O.equilibriumExistence → O.welfareCriterion

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse