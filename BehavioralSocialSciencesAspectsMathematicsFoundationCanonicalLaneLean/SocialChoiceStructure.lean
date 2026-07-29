import HautevilleHouse.BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure SocialChoiceStructure where
  agents : Type
  alternatives : Type
  preferences : agents → alternatives → alternatives → Prop
  socialWelfareFunction : (agents → alternatives → alternatives → Prop) → (alternatives → alternatives → Prop)
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop

def SocialChoiceStructureClosed (S : SocialChoiceStructure) : Prop :=
  S.paretoEfficiency ∧ S.independenceOfIrrelevantAlternatives ∧ S.nonDictatorship

structure SocialChoiceStructureEvidence (S : SocialChoiceStructure) where
  paretoEfficiencyClosed : S.paretoEfficiency
  independenceOfIrrelevantAlternativesClosed : S.independenceOfIrrelevantAlternatives
  nonDictatorshipClosed : S.nonDictatorship

theorem social_choice_structure_closed_from_evidence (S : SocialChoiceStructure) (E : SocialChoiceStructureEvidence S) :
    SocialChoiceStructureClosed S := by
  exact And.intro E.paretoEfficiencyClosed (And.intro E.independenceOfIrrelevantAlternativesClosed E.nonDictatorshipClosed)

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse