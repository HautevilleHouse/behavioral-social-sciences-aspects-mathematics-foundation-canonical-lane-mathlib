import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure Prospect (outcome : Type u) where
  probability : outcome → ℝ
  value : outcome → ℝ
  sumProbabilities : ∑ o, probability o = 1

structure ProspectTheory (P : Type u → Type v) where
  referencePoint : ℝ
  lossAversionCoeff : ℝ
  diminishingSensitivity : ℝ

structure CumulativeProspectEvaluation (P : Prospect) (T : ProspectTheory) : ℝ where
  eval : ℝ
  formulaSatisfied : eval = ... -- explicit formula

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse