import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure ProspectTheoryPackage where
  referenceDependence : Prop
  lossAversion : Prop
  diminishingSensitivity : Prop
  probabilityWeighting : Prop

structure ProspectTheoryEvidence (P : ProspectTheoryPackage) where
  referenceDependenceClosed : P.referenceDependence
  lossAversionClosed : P.lossAversion
  diminishingSensitivityClosed : P.diminishingSensitivity
  probabilityWeightingClosed : P.probabilityWeighting

def ProspectTheoryClosed (P : ProspectTheoryPackage) : Prop :=
  P.referenceDependence ∧ P.lossAversion ∧ P.diminishingSensitivity ∧ P.probabilityWeighting

theorem prospect_theory_closed_from_evidence (P : ProspectTheoryPackage)
    (E : ProspectTheoryEvidence P) : ProspectTheoryClosed P := by
  exact And.intro E.referenceDependenceClosed
    (And.intro E.lossAversionClosed
      (And.intro E.diminishingSensitivityClosed E.probabilityWeightingClosed))

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse