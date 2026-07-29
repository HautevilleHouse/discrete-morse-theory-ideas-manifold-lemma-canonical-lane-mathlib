import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure ManifoldLemmaPackage (M : Type) [TopologicalSpace M] [Manifold M] where
  discreteMorseFunction : DiscreteMorseFunctionPackage M
  morseComplex : MorseComplexPackage M
  mainLemmaStatement : Prop
  proofClosed : Prop

structure ManifoldLemmaEvidence {M : Type} [TopologicalSpace M] [Manifold M]
    (L : ManifoldLemmaPackage M) where
  mainLemmaStatementClosed : L.mainLemmaStatement
  proofClosedClosed : L.proofClosed

def ManifoldLemmaClosed {M : Type} [TopologicalSpace M] [Manifold M]
    (L : ManifoldLemmaPackage M) : Prop :=
  L.mainLemmaStatement ∧ L.proofClosed

theorem manifold_lemma_closed_from_evidence
    {M : Type} [TopologicalSpace M] [Manifold M]
    (L : ManifoldLemmaPackage M) (E : ManifoldLemmaEvidence L) :
    ManifoldLemmaClosed L := by
  exact And.intro E.mainLemmaStatementClosed E.proofClosedClosed

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse
