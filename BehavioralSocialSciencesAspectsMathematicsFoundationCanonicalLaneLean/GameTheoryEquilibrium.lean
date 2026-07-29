import HautevilleHouse.BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean.BehavioralAdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure GameTheoryEquilibriumPackage where
  Players : Type
  Strategies : Type
  PayoffFunctions : Type
  nashEquilibriumExistence : Prop
  rationalityAssumption : Prop
  equilibriumConclusion : Prop
  evidence : rationalityAssumption → (nashEquilibriumExistence ↔ equilibriumConclusion)

structure GameTheoryEquilibriumEvidence (G : GameTheoryEquilibriumPackage) where
  equilibriumConclusionClosed : G.equilibriumConclusion

def GameTheoryEquilibriumClosed (G : GameTheoryEquilibriumPackage) : Prop :=
  G.equilibriumConclusion

theorem game_theory_equilibrium_closed_from_evidence (G : GameTheoryEquilibriumPackage) (E : GameTheoryEquilibriumEvidence G) : GameTheoryEquilibriumClosed G :=
  E.equilibriumConclusionClosed

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse