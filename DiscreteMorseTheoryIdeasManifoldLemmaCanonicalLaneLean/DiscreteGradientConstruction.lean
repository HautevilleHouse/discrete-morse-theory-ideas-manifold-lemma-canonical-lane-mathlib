import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure DiscreteGradientConstruction (M : Type) [TopologicalSpace M] where
  manifold : M
  gradientFunction : M → ℤ
  criticalPoints : Set M
  nondegeneracyCondition : Prop
  manifoldSmooth : Prop

structure DiscreteGradientEvidence (G : DiscreteGradientConstruction M) where
  gradientDefined : G.gradientFunction ≠ λ _ => 0
  criticalPointsDefined : G.criticalPoints.Nonempty
  nondegeneracyClosed : G.nondegeneracyCondition
  manifoldSmoothClosed : G.manifoldSmooth

def DiscreteGradientClosed (G : DiscreteGradientConstruction M) : Prop :=
  G.gradientFunction ≠ λ _ => 0 ∧ G.criticalPoints.Nonempty ∧ G.nondegeneracyCondition ∧ G.manifoldSmooth

theorem discrete_gradient_closed_from_evidence (G : DiscreteGradientConstruction M) (E : DiscreteGradientEvidence G) : DiscreteGradientClosed G := by
  exact And.intro (And.intro E.gradientDefined E.criticalPointsDefined) (And.intro E.nondegeneracyClosed E.manifoldSmoothClosed)

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse