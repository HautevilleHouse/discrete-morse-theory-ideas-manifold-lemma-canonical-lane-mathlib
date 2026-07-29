import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure MorseHomology (M : Type) [TopologicalSpace M] where
  chainComplex : DiscreteMorseComplex M
  homologyGroups : Type
  stabilityProperty : Prop
  manifoldEvidence : Prop

structure MorseHomologyEvidence (H : MorseHomology M) where
  chainComplexClosed : DiscreteMorseComplexClosed H.chainComplex
  homologyGroupsClosed : H.homologyGroups ≠ Empty
  stabilityPropertyClosed : H.stabilityProperty
  manifoldEvidenceClosed : H.manifoldEvidence

def MorseHomologyClosed (H : MorseHomology M) : Prop :=
  DiscreteMorseComplexClosed H.chainComplex ∧ H.homologyGroups ≠ Empty ∧ H.stabilityProperty ∧ H.manifoldEvidence

theorem morse_homology_closed_from_evidence (H : MorseHomology M) (E : MorseHomologyEvidence H) : MorseHomologyClosed H := by
  exact And.intro E.chainComplexClosed (And.intro E.homologyGroupsClosed (And.intro E.stabilityPropertyClosed E.manifoldEvidenceClosed))

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse