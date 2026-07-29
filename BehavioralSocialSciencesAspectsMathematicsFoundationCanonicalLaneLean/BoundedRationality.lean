import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure BoundedRationalityPackage where
  decisionProcess : Type u
  satisficingThreshold : Prop
  heuristicRules : Prop
  deviationFromOptimality : Prop

structure BoundedRationalityEvidence (B : BoundedRationalityPackage) where
  satisficingThresholdClosed : B.satisficingThreshold
  heuristicRulesClosed : B.heuristicRules
  deviationFromOptimalityClosed : B.deviationFromOptimality

def BoundedRationalityClosed (B : BoundedRationalityPackage) : Prop :=
  B.satisficingThreshold ∧ B.heuristicRules ∧ B.deviationFromOptimality

theorem bounded_rationality_closed_from_evidence (B : BoundedRationalityPackage)
    (E : BoundedRationalityEvidence B) : BoundedRationalityClosed B := by
  exact And.intro E.satisficingThresholdClosed
    (And.intro E.heuristicRulesClosed E.deviationFromOptimalityClosed)

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse