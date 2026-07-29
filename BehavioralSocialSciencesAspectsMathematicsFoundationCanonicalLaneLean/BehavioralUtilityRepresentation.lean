import BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean.BehavioralGameTheory

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure PreferenceRelation (Alternatives : Type u) where
  comparable : Alternatives → Alternatives → Prop
  transitive : Prop
  complete : Prop

structure UtilityFunction (Alternatives : Type u) where
  u : Alternatives → ℝ
  represents : PreferenceRelation Alternatives → Prop
  monotonicity : Prop
  continuity : Prop

structure UtilityRepresentationEvidence (U : UtilityFunction Alternatives) where
  representsClosed : U.represents (by
    exact { comparable := λ x y => U.u x ≥ U.u y,
           transitive := by
             intro x y z h1 h2; exact le_trans h1 h2,
           complete := by
             intro x y; exact le_total (U.u x) (U.u y) })
  monotonicityClosed : U.monotonicity
  continuityClosed : U.continuity

def UtilityRepresentationClosed (U : UtilityFunction Alternatives) : Prop :=
  U.represents (by
    exact { comparable := λ x y => U.u x ≥ U.u y,
           transitive := by
             intro x y z h1 h2; exact le_trans h1 h2,
           complete := by
             intro x y; exact le_total (U.u x) (U.u y) }) ∧
  U.monotonicity ∧ U.continuity

theorem utility_representation_closed_from_evidence (U : UtilityFunction Alternatives) (E : UtilityRepresentationEvidence U) : UtilityRepresentationClosed U :=
  And.intro E.representsClosed (And.intro E.monotonicityClosed E.continuityClosed)

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse