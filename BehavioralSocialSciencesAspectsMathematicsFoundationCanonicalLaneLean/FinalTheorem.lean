import BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean.BehavioralEconomicsBridge

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

def ConstrainedBehavioralClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_behavioral_endgame (A : AdmissibleClass) : ConstrainedBehavioralClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse