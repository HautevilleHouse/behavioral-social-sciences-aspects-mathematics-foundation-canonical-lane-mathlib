import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure BehavioralAdmittedObject where
  socialSystem : Type
  rationalityAssumption : Prop
  equilibriumExists : Prop
  conclusion : equilibriumExists

def BehavioralWitnessClosed (O : BehavioralAdmittedObject) : Prop :=
  O.equilibriumExists

structure AdmissibleClass where
  object : BehavioralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BehavioralWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse