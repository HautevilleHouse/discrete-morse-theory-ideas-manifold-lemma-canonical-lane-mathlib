import HautevilleHouse.DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.HomologyEquivalence

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

def ConstrainedMorseClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_morse_endgame (A : AdmissibleClass) :
    ConstrainedMorseClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse