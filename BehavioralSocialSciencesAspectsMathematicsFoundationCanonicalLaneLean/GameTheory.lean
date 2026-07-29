import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure GameTheoryPackage where
  players : Type u
  strategySets : players → Type v
  payoffFunctions : Type w
  equilibriumDefinition : Prop

structure GameTheoryEvidence (G : GameTheoryPackage) where
  equilibriumDefinitionClosed : G.equilibriumDefinition

def GameTheoryClosed (G : GameTheoryPackage) : Prop :=
  G.equilibriumDefinition

theorem game_theory_closed_from_evidence (G : GameTheoryPackage)
    (E : GameTheoryEvidence G) : GameTheoryClosed G := by
  exact E.equilibriumDefinitionClosed

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse