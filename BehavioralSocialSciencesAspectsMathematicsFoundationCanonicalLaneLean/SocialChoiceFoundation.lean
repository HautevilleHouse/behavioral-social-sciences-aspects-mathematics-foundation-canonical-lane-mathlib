import HautevilleHouse.BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean.BehavioralAdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure SocialChoiceFoundationPackage where
  Voters : Type
  Alternatives : Type
  SocialWelfareFunction : Type
  paretoCondition : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop
  arrowTheoremConclusion : Prop
  evidence : paretoCondition ∧ independenceOfIrrelevantAlternatives ∧ nonDictatorship → arrowTheoremConclusion

structure SocialChoiceEvidence (S : SocialChoiceFoundationPackage) where
  arrowTheoremClosed : S.arrowTheoremConclusion

def SocialChoiceClosed (S : SocialChoiceFoundationPackage) : Prop :=
  S.arrowTheoremConclusion

theorem social_choice_closed_from_evidence (S : SocialChoiceFoundationPackage) (E : SocialChoiceEvidence S) : SocialChoiceClosed S :=
  E.arrowTheoremClosed

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse