import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure DiscreteMorseComplexPackage where
  gradient : DiscreteGradientPackage
  handleDecomposition : HandleDecompositionPackage
  chainComplex : Prop
  differentialDefined : Prop
  homologyComputed : Prop
  geometryMatch : Prop

structure DiscreteMorseComplexEvidence (M : DiscreteMorseComplexPackage) where
  chainComplexClosed : M.chainComplex
  differentialDefinedClosed : M.differentialDefined
  homologyComputedClosed : M.homologyComputed
  geometryMatchClosed : M.geometryMatch

def DiscreteMorseComplexClosed (M : DiscreteMorseComplexPackage) : Prop :=
  M.chainComplex ∧ M.differentialDefined ∧ M.homologyComputed ∧ M.geometryMatch

theorem discrete_morse_complex_closed_from_evidence (M : DiscreteMorseComplexPackage) (E : DiscreteMorseComplexEvidence M) :
    DiscreteMorseComplexClosed M := by
  exact And.intro E.chainComplexClosed (And.intro E.differentialDefinedClosed (And.intro E.homologyComputedClosed E.geometryMatchClosed))

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse