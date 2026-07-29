import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure MorseComplexPackage (M : Type) [TopologicalSpace M] [Manifold M] where
  chainGroups : ℕ → Type
  boundaryOperators : (n : ℕ) → (chainGroups (n+1) → chainGroups n)
  homologyGroups : ℕ → Type
  morseHomologyIsomorphism : Prop
  differentialVanishes : Prop

structure MorseComplexEvidence {M : Type} [TopologicalSpace M] [Manifold M]
    (C : MorseComplexPackage M) where
  morseHomologyIsomorphismClosed : C.morseHomologyIsomorphism
  differentialVanishesClosed : C.differentialVanishes

def MorseComplexClosed {M : Type} [TopologicalSpace M] [Manifold M]
    (C : MorseComplexPackage M) : Prop :=
  C.morseHomologyIsomorphism ∧ C.differentialVanishes

theorem morse_complex_closed_from_evidence
    {M : Type} [TopologicalSpace M] [Manifold M]
    (C : MorseComplexPackage M) (E : MorseComplexEvidence C) :
    MorseComplexClosed C := by
  exact And.intro E.morseHomologyIsomorphismClosed E.differentialVanishesClosed

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse
