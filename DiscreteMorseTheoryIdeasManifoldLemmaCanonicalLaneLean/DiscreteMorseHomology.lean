import canonicalLaneMathlib.AdmissibleClass
import DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.DiscreteMorseFunction

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure DiscreteMorseHomologyPackage {M : DiscreteMorseFunctionPackage} where
  morseComplex : Type u
  boundaryOperator : morseComplex → morseComplex
  homologyGroups : ℕ → Type v
  morseHomologyIsCellularHomology : Prop
  homologyGroupsComputed : (n : ℕ) → homologyGroups n
  morseHomologyIsCellularHomologyTerm : morseHomologyIsCellularHomology

structure DiscreteMorseHomologyEvidence {M : DiscreteMorseFunctionPackage}
    (H : DiscreteMorseHomologyPackage M) where
  morseHomologyIsCellularHomologyClosed : H.morseHomologyIsCellularHomology

def DiscreteMorseHomologyClosed {M : DiscreteMorseFunctionPackage}
    (H : DiscreteMorseHomologyPackage M) : Prop :=
  H.morseHomologyIsCellularHomology

theorem discrete_morse_homology_closed_from_evidence
    {M : DiscreteMorseFunctionPackage} (H : DiscreteMorseHomologyPackage M)
    (E : DiscreteMorseHomologyEvidence H) : DiscreteMorseHomologyClosed H := by
  exact E.morseHomologyIsCellularHomologyClosed

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse