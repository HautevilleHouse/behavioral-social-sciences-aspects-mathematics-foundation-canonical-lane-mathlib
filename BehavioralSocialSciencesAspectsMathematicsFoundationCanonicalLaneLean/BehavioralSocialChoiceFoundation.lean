import BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean.BehavioralBridgeGate

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure SocialWelfareFunction (Agent : Type u) (Alternatives : Type v) where
  preferences : Agent → Alternatives → Alternatives → Prop
  aggregationRule : (Agent → Alternatives → Alternatives → Prop) → Alternatives → Alternatives → Prop
  paretoEfficiency : Prop
  nonDictatorship : Prop
  unrestrictedDomain : Prop

structure SocialChoiceEvidence (S : SocialWelfareFunction Agent Alternatives) where
  paretoEfficiencyClosed : S.paretoEfficiency
  nonDictatorshipClosed : S.nonDictatorship
  unrestrictedDomainClosed : S.unrestrictedDomain

def SocialChoiceClosed (S : SocialWelfareFunction Agent Alternatives) : Prop :=
  S.paretoEfficiency ∧ S.nonDictatorship ∧ S.unrestrictedDomain

theorem social_choice_closed_from_evidence (S : SocialWelfareFunction Agent Alternatives) (E : SocialChoiceEvidence S) : SocialChoiceClosed S :=
  And.intro E.paretoEfficiencyClosed (And.intro E.nonDictatorshipClosed E.unrestrictedDomainClosed)

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse