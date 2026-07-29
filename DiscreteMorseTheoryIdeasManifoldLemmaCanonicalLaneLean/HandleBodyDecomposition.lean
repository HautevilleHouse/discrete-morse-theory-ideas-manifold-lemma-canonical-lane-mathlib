import HautevilleHouse.DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.DiscreteGradientFlow

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure HandleBodyDecompositionPackage {M : MorseComplexObject}
    (G : DiscreteGradientFlowPackage M) (C : CriticalPointsPackage M) where
  handleBodiesDefined : Prop
  handleSlidingRules : Prop
  decompositionCompatibleWithFlow : Prop
  manifoldReconstructedFromHandles : Prop

structure HandleBodyDecompositionEvidence {M : MorseComplexObject}
    {G : DiscreteGradientFlowPackage M} {C : CriticalPointsPackage M}
    (H : HandleBodyDecompositionPackage G C) where
  handleBodiesClosed : H.handleBodiesDefined
  slidingRulesClosed : H.handleSlidingRules
  flowCompatibleClosed : H.decompositionCompatibleWithFlow
  reconstructionClosed : H.manifoldReconstructedFromHandles

def HandleBodyDecompositionClosed {M : MorseComplexObject}
    {G : DiscreteGradientFlowPackage M} {C : CriticalPointsPackage M}
    (H : HandleBodyDecompositionPackage G C) : Prop :=
  H.handleBodiesDefined ∧ H.handleSlidingRules ∧
  H.decompositionCompatibleWithFlow ∧ H.manifoldReconstructedFromHandles

theorem handle_body_decomposition_closed_from_evidence
    {M : MorseComplexObject} {G : DiscreteGradientFlowPackage M}
    {C : CriticalPointsPackage M} (H : HandleBodyDecompositionPackage G C)
    (E : HandleBodyDecompositionEvidence H) : HandleBodyDecompositionClosed H :=
  And.intro E.handleBodiesClosed (And.intro E.slidingRulesClosed
    (And.intro E.flowCompatibleClosed E.reconstructionClosed))

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse