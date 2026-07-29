import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure DiscreteMorseFunctionPackage (M : Type) [TopologicalSpace M] [Manifold M] where
  criticalPoints : Set M
  indexFunction : M → ℕ
  gradientLikeVectorField : M → TM M
  morseInequalitiesHeld : Prop
  handleBodyDecomposition : Prop

structure DiscreteMorseFunctionEvidence {M : Type} [TopologicalSpace M] [Manifold M]
    (F : DiscreteMorseFunctionPackage M) where
  morseInequalitiesHeldClosed : F.morseInequalitiesHeld
  handleBodyDecompositionClosed : F.handleBodyDecomposition

def DiscreteMorseFunctionClosed {M : Type} [TopologicalSpace M] [Manifold M]
    (F : DiscreteMorseFunctionPackage M) : Prop :=
  F.morseInequalitiesHeld ∧ F.handleBodyDecomposition

theorem discrete_morse_function_closed_from_evidence
    {M : Type} [TopologicalSpace M] [Manifold M]
    (F : DiscreteMorseFunctionPackage M) (E : DiscreteMorseFunctionEvidence F) :
    DiscreteMorseFunctionClosed F := by
  exact And.intro E.morseInequalitiesHeldClosed E.handleBodyDecompositionClosed

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse
