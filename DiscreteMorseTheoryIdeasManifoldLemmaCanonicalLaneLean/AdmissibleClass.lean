import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure DiscreteMorseAdmittedObject where
  manifoldDimension : ℕ
  cellComplexPresent : Prop
  discreteMorseFunctionDefined : Prop
  manifoldLemmaConclusion : Prop
  conclusion : manifoldLemmaConclusion

structure AdmissibleClass where
  object : DiscreteMorseAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.manifoldLemmaConclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse