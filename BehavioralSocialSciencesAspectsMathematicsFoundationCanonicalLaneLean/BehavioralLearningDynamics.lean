import BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean.BehavioralUtilityRepresentation

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure LearningProcess (State : Type u) (Action : Type v) where
  initialState : State
  transition : State → Action → State
  reward : State → Action → ℝ
  convergenceCriterion : (State → Prop) → Prop

structure ReinforcementLearning (L : LearningProcess State Action) where
  policy : State → Action
  valueFunction : State → ℝ
  optimalityCondition : Prop
  convergenceProof : L.convergenceCriterion (λ s => True)

def LearningClosed (L : LearningProcess State Action) : Prop :=
  L.convergenceCriterion (λ s => True)

theorem reinforcement_learning_closed (L : LearningProcess State Action) (R : ReinforcementLearning L) : LearningClosed L :=
  R.convergenceProof

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse