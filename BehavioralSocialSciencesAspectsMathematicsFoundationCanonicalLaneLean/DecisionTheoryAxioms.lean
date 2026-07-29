import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure PreferenceRelation (X : Type u) where
  relation : X → X → Prop
  completeness : ∀ x y, relation x y ∨ relation y x
  transitivity : ∀ x y z, relation x y → relation y z → relation x z

definition RationalPreference (X : Type u) (p : PreferenceRelation X) : Prop :=
  p.completeness ∧ p.transitivity

structure RationalPreferenceEvidence (X : Type u) (p : PreferenceRelation X) where
  completenessClosed : p.completeness
  transitivityClosed : p.transitivity

def RationalPreferenceClosed (X : Type u) (p : PreferenceRelation X) : Prop :=
  p.completeness ∧ p.transitivity

theorem rational_preference_closed_from_evidence (X : Type u) (p : PreferenceRelation X)
    (E : RationalPreferenceEvidence X p) : RationalPreferenceClosed X p := by
  exact And.intro E.completenessClosed E.transitivityClosed

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse