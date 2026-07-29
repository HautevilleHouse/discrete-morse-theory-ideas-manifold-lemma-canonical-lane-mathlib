import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure DiscreteMorseFunctionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  cellComplex : Type v
  discreteFunction : cellComplex → ℤ
  criticalPoints : Set cellComplex
  gradientVectorField : cellComplex → cellComplex → ℤ
  morseInequalities : Prop
  discreteMorseFunctionDefined : Prop
  criticalPointsFinite : criticalPoints.Finite
  morseInequalitiesTerm : morseInequalities
  discreteMorseFunctionDefinedTerm : discreteMorseFunctionDefined

structure DiscreteMorseFunctionEvidence (M : DiscreteMorseFunctionPackage) where
  morseInequalitiesClosed : M.morseInequalities
  discreteMorseFunctionDefinedClosed : M.discreteMorseFunctionDefined

def DiscreteMorseFunctionClosed (M : DiscreteMorseFunctionPackage) : Prop :=
  M.morseInequalities ∧ M.discreteMorseFunctionDefined

theorem discrete_morse_function_closed_from_evidence (M : DiscreteMorseFunctionPackage)
    (E : DiscreteMorseFunctionEvidence M) : DiscreteMorseFunctionClosed M := by
  exact And.intro E.morseInequalitiesClosed E.discreteMorseFunctionDefinedClosed

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse