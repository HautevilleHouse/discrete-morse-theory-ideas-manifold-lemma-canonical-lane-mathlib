import HautevilleHouse.DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.CriticalPoints

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure DiscreteGradientFlowPackage (M : MorseComplexObject) where
  vectorFieldDefined : Prop
  simulatedGradientFlow : Prop
  flowPreservesTopology : Prop
  flowConvergesToCritical : Prop

structure DiscreteGradientFlowEvidence {M : MorseComplexObject}
    (G : DiscreteGradientFlowPackage M) where
  vectorFieldClosed : G.vectorFieldDefined
  flowSimulatedClosed : G.simulatedGradientFlow
  topologyPreservedClosed : G.flowPreservesTopology
  convergenceClosed : G.flowConvergesToCritical

def DiscreteGradientFlowClosed {M : MorseComplexObject}
    (G : DiscreteGradientFlowPackage M) : Prop :=
  G.vectorFieldDefined ∧ G.simulatedGradientFlow ∧
  G.flowPreservesTopology ∧ G.flowConvergesToCritical

theorem discrete_gradient_flow_closed_from_evidence {M : MorseComplexObject}
    (G : DiscreteGradientFlowPackage M) (E : DiscreteGradientFlowEvidence G) :
    DiscreteGradientFlowClosed G :=
  And.intro E.vectorFieldClosed (And.intro E.flowSimulatedClosed
    (And.intro E.topologyPreservedClosed E.convergenceClosed))

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse