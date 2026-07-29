import canonicalLaneMathlib.AdmissibleClass
import DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.DiscreteMorseFunction

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure DiscreteMorseCohomologyPackage {M : DiscreteMorseFunctionPackage} where
  cochainComplex : Type u
  differential : cochainComplex → cochainComplex
  cohomologyGroups : ℕ → Type v
  morseSmaleCondition : Prop
  cohomologyIsMorseHomology : Prop
  cohomologyGroupsComputed : (n : ℕ) → cohomologyGroups n
  morseSmaleConditionTerm : morseSmaleCondition
  cohomologyIsMorseHomologyTerm : cohomologyIsMorseHomology

structure DiscreteMorseCohomologyEvidence {M : DiscreteMorseFunctionPackage}
    (C : DiscreteMorseCohomologyPackage M) where
  morseSmaleConditionClosed : C.morseSmaleCondition
  cohomologyIsMorseHomologyClosed : C.cohomologyIsMorseHomology

def DiscreteMorseCohomologyClosed {M : DiscreteMorseFunctionPackage}
    (C : DiscreteMorseCohomologyPackage M) : Prop :=
  C.morseSmaleCondition ∧ C.cohomologyIsMorseHomology

theorem discrete_morse_cohomology_closed_from_evidence
    {M : DiscreteMorseFunctionPackage} (C : DiscreteMorseCohomologyPackage M)
    (E : DiscreteMorseCohomologyEvidence C) : DiscreteMorseCohomologyClosed C := by
  exact And.intro E.morseSmaleConditionClosed E.cohomologyIsMorseHomologyClosed

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse