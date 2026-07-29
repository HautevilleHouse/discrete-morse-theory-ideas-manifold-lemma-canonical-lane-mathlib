import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure SmoothHandle where
  index : ℕ
  attachingSphere : Type u
  embeddingData : Type u
  smoothingData : Type u
  smoothAttaching : Prop

structure SmoothHandleAttaching (M : ManifoldWithBoundary) where
  handles : List SmoothHandle
  resultManifold : ManifoldWithBoundary
  attachmentValid : Prop
  smoothCompatible : Prop

structure SmoothHandleAttachingEvidence {M : ManifoldWithBoundary} (A : SmoothHandleAttaching M) where
  attachmentValidClosed : A.attachmentValid
  smoothCompatibleClosed : A.smoothCompatible

def SmoothHandleAttachingClosed {M : ManifoldWithBoundary} (A : SmoothHandleAttaching M) : Prop :=
  A.attachmentValid ∧ A.smoothCompatible

theorem smooth_handle_attaching_closed_from_evidence {M : ManifoldWithBoundary} (A : SmoothHandleAttaching M) (E : SmoothHandleAttachingEvidence A) : SmoothHandleAttachingClosed A := by
  exact And.intro E.attachmentValidClosed E.smoothCompatibleClosed

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse