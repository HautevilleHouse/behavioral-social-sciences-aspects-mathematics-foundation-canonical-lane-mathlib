import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean

structure Network (V : Type u) where
  adjacency : V → V → Bool
  symmetric : ∀ i j, adjacency i j = adjacency j i
  irreflexive : ∀ i, ¬ adjacency i i

structure StableNetwork (V : Type u) (N : Network V) where
  noProfitableDeviation : ∀ i j, ¬ (N.adjacency i j) → 
    (-- condition that adding link benefits both
      (∀ k : V, not (N.adjacency i k) → (benefit i j) > benefit i j -- simplified)
      )

definition PairwiseStable (V : Type u) (N : Network V) : Prop :=
  Nonempty (StableNetwork V N)

end BehavioralSocialSciencesAspectsMathematicsFoundationCanonicalLaneLean
end HautevilleHouse