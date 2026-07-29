import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure DecisionTheoryPackage where
  preferences : Type u
  alternativeSet : Type v
  choicR : alternativeSet → alternativeSet → Prop
  rationalityAxioms : Prop

structure DecisionTheoryEvidence (D : DecisionTheoryPackage) where
  rationalityAxiomsClosed : D.rationalityAxioms

def DecisionTheoryClosed (D : DecisionTheoryPackage) : Prop :=
  D.rationalityAxioms

theorem decision_theory_closed_from_evidence (D : DecisionTheoryPackage)
    (E : DecisionTheoryEvidence D) : DecisionTheoryClosed D := by
  exact E.rationalityAxiomsClosed

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse