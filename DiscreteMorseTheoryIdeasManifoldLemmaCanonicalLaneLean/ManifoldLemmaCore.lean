import canonicalLaneMathlib.AdmissibleClass
import DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.DiscreteMorseFunction
import DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.DiscreteMorseCohomology
import DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.DiscreteMorseHomology

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure ManifoldLemmaCorePackage {M : DiscreteMorseFunctionPackage}
    (C : DiscreteMorseCohomologyPackage M) (H : DiscreteMorseHomologyPackage M) where
  morseInequalitiesHold : DiscreteMorseFunctionClosed M
  cohomologyMatchesCellular : DiscreteMorseCohomologyClosed C
  homologyMatchesCellular : DiscreteMorseHomologyClosed H
  manifoldLemmaStatement : Prop
  manifoldLemmaStatementTerm : manifoldLemmaStatement

structure ManifoldLemmaCoreEvidence {M : DiscreteMorseFunctionPackage}
    {C : DiscreteMorseCohomologyPackage M} {H : DiscreteMorseHomologyPackage M}
    (P : ManifoldLemmaCorePackage C H) where
  manifoldLemmaStatementClosed : P.manifoldLemmaStatement

def ManifoldLemmaCoreClosed {M : DiscreteMorseFunctionPackage}
    {C : DiscreteMorseCohomologyPackage M} {H : DiscreteMorseHomologyPackage M}
    (P : ManifoldLemmaCorePackage C H) : Prop :=
  P.manifoldLemmaStatement

theorem manifold_lemma_core_closed_from_evidence
    {M : DiscreteMorseFunctionPackage}
    {C : DiscreteMorseCohomologyPackage M} {H : DiscreteMorseHomologyPackage M}
    (P : ManifoldLemmaCorePackage C H)
    (E : ManifoldLemmaCoreEvidence P) : ManifoldLemmaCoreClosed P := by
  exact E.manifoldLemmaStatementClosed

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse