import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure GameTheoryPackage where
  players : Type u
  strategies : players → Type v
  payoffFunctions : (p : players) → strategies p → ℝ
  nashEquilibrium : Prop
  existenceTheorem : Prop

structure GameTheoryEvidence (G : GameTheoryPackage) where
  nashEquilibriumClosed : G.nashEquilibrium
  existenceTheoremClosed : G.existenceTheorem

def GameTheoryClosed (G : GameTheoryPackage) : Prop :=
  G.nashEquilibrium ∧ G.existenceTheorem

theorem game_theory_closed_from_evidence (G : GameTheoryPackage) (E : GameTheoryEvidence G) :
    GameTheoryClosed G := by
  exact And.intro E.nashEquilibriumClosed E.existenceTheoremClosed

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse