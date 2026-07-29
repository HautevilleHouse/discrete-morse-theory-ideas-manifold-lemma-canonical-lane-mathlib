import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure HandleDecompositionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  morseFunction : MorseFunctionPackage
  gradient : DiscreteGradientPackage
  handleDecomposition : Prop
  handlesAttached : Prop
  handleTypes : Prop

structure HandleDecompositionEvidence (H : HandleDecompositionPackage) where
  handleDecompositionClosed : H.handleDecomposition
  handlesAttachedClosed : H.handlesAttached
  handleTypesClosed : H.handleTypes

def HandleDecompositionClosed (H : HandleDecompositionPackage) : Prop :=
  H.handleDecomposition ∧ H.handlesAttached ∧ H.handleTypes

theorem handle_decomposition_closed_from_evidence (H : HandleDecompositionPackage) (E : HandleDecompositionEvidence H) :
    HandleDecompositionClosed H := by
  exact And.intro E.handleDecompositionClosed (And.intro E.handlesAttachedClosed E.handleTypesClosed)

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse