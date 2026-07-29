import HautevilleHouse.BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean.SocialChoiceStructure

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure BehavioralModel where
  choiceStructure : SocialChoiceStructure
  behavioralAssumptions : Prop
  predictedEquilibrium : Prop
  empiricalValidation : Prop

structure BehavioralModelEvidence (M : BehavioralModel) where
  choiceStructureClosed : SocialChoiceStructureClosed M.choiceStructure
  behavioralAssumptionsClosed : M.behavioralAssumptions
  predictedEquilibriumClosed : M.predictedEquilibrium
  empiricalValidationClosed : M.empiricalValidation

def BehavioralModelClosed (M : BehavioralModel) : Prop :=
  SocialChoiceStructureClosed M.choiceStructure ∧
  M.behavioralAssumptions ∧
  M.predictedEquilibrium ∧
  M.empiricalValidation

theorem behavioral_model_closed_from_evidence (M : BehavioralModel) (E : BehavioralModelEvidence M) :
    BehavioralModelClosed M := by
  exact And.intro E.choiceStructureClosed
    (And.intro E.behavioralAssumptionsClosed
      (And.intro E.predictedEquilibriumClosed E.empiricalValidationClosed))

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse