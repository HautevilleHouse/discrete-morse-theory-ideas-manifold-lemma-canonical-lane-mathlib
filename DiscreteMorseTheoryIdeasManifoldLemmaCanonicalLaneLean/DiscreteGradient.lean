import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure DiscreteGradientPackage where
  cellComplex : Type u
  cells : Set cellComplex
  dimensionData : cellComplex → ℕ
  gradientVectorField : cellComplex → cellComplex
  gradientMatchesMorse : Prop
  discreteGradientDefined : Prop
  noClosedVPaths : Prop

structure DiscreteGradientEvidence (D : DiscreteGradientPackage) where
  gradientMatchesMorseClosed : D.gradientMatchesMorse
  discreteGradientDefinedClosed : D.discreteGradientDefined
  noClosedVPathsClosed : D.noClosedVPaths

def DiscreteGradientClosed (D : DiscreteGradientPackage) : Prop :=
  D.gradientMatchesMorse ∧ D.discreteGradientDefined ∧ D.noClosedVPaths

theorem discrete_gradient_closed_from_evidence (D : DiscreteGradientPackage) (E : DiscreteGradientEvidence D) :
    DiscreteGradientClosed D := by
  exact And.intro E.gradientMatchesMorseClosed (And.intro E.discreteGradientDefinedClosed E.noClosedVPathsClosed)

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse