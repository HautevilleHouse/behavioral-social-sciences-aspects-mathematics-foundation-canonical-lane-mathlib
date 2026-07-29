import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure SocialChoicePackage where
  voters : Type u
  alternatives : Type v
  preferenceProfiles : voters → alternatives → alternatives → Prop
  socialWelfareFunction : Prop
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  arrowTheorem : Prop

structure SocialChoiceEvidence (S : SocialChoicePackage) where
  socialWelfareFunctionClosed : S.socialWelfareFunction
  paretoEfficiencyClosed : S.paretoEfficiency
  independenceOfIrrelevantAlternativesClosed : S.independenceOfIrrelevantAlternatives
  arrowTheoremClosed : S.arrowTheorem

def SocialChoiceClosed (S : SocialChoicePackage) : Prop :=
  S.socialWelfareFunction ∧ S.paretoEfficiency ∧ S.independenceOfIrrelevantAlternatives ∧ S.arrowTheorem

theorem social_choice_closed_from_evidence (S : SocialChoicePackage) (E : SocialChoiceEvidence S) :
    SocialChoiceClosed S := by
  exact And.intro E.socialWelfareFunctionClosed
    (And.intro E.paretoEfficiencyClosed
      (And.intro E.independenceOfIrrelevantAlternativesClosed E.arrowTheoremClosed))

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse