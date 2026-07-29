import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure ManifoldWithBoundary where
  carrier : Type u
  topology : TopologicalSpace carrier
  boundary : Set carrier
  interior : Set carrier
  collarNeighborhood : Prop

structure CollarEvidence (M : ManifoldWithBoundary) where
  collarNeighborhoodClosed : M.collarNeighborhood

def ManifoldCollarClosed (M : ManifoldWithBoundary) : Prop :=
  M.collarNeighborhood

theorem manifold_collar_closed_from_evidence (M : ManifoldWithBoundary) (E : CollarEvidence M) : ManifoldCollarClosed M := by
  exact E.collarNeighborhoodClosed

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse