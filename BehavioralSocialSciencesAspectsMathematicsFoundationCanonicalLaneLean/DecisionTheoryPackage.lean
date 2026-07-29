import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure DecisionTheoryPackage where
  preferences : Type u
  alternatives : Type v
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  utilityRepresentation : Prop

structure DecisionTheoryEvidence (D : DecisionTheoryPackage) where
  completenessClosed : D.completeness
  transitivityClosed : D.transitivity
  continuityClosed : D.continuity
  utilityRepresentationClosed : D.utilityRepresentation

def DecisionTheoryClosed (D : DecisionTheoryPackage) : Prop :=
  D.completeness ∧ D.transitivity ∧ D.continuity ∧ D.utilityRepresentation

theorem decision_theory_closed_from_evidence (D : DecisionTheoryPackage) (E : DecisionTheoryEvidence D) :
    DecisionTheoryClosed D := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed E.utilityRepresentationClosed))

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse