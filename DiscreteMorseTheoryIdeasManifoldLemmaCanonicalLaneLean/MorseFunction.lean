import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure MorseFunctionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  morseFunction : manifold → ℝ
  criticalPoints : Set manifold
  nondegenerate : Prop
  morseFunctionSmooth : Prop
  criticalPointsIsolated : Prop

structure MorseFunctionEvidence (M : MorseFunctionPackage) where
  morseFunctionSmoothClosed : M.morseFunctionSmooth
  criticalPointsIsolatedClosed : M.criticalPointsIsolated
  nondegenerateClosed : M.nondegenerate

def MorseFunctionClosed (M : MorseFunctionPackage) : Prop :=
  M.morseFunctionSmooth ∧ M.criticalPointsIsolated ∧ M.nondegenerate

theorem morse_function_closed_from_evidence (M : MorseFunctionPackage) (E : MorseFunctionEvidence M) :
    MorseFunctionClosed M := by
  exact And.intro E.morseFunctionSmoothClosed (And.intro E.criticalPointsIsolatedClosed E.nondegenerateClosed)

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse