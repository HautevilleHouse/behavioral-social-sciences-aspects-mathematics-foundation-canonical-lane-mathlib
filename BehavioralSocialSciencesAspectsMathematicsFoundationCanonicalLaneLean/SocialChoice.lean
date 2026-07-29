import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure SocialChoicePackage where
  voters : Type u
  alternatives : Type v
  preferenceProfiles : Type w
  aggregationRule : Type w
  impossibleTheoremStatement : Prop

structure SocialChoiceEvidence (S : SocialChoicePackage) where
  impossibleTheoremStatementClosed : S.impossibleTheoremStatement

def SocialChoiceClosed (S : SocialChoicePackage) : Prop :=
  S.impossibleTheoremStatement

theorem social_choice_closed_from_evidence (S : SocialChoicePackage)
    (E : SocialChoiceEvidence S) : SocialChoiceClosed S := by
  exact E.impossibleTheoremStatementClosed

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse