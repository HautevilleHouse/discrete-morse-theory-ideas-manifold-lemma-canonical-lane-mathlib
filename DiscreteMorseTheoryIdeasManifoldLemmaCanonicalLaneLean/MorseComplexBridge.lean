import HautevilleHouse.DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure MorseComplexObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  discreteMorseFunctionExists : Prop
  morseComplexDefined : Prop
  homologyIsoManifold : Prop

def MorseComplexClosed (M : MorseComplexObject) : Prop :=
  M.discreteMorseFunctionExists ∧ M.morseComplexDefined ∧ M.homologyIsoManifold

structure MorseComplexEvidence (M : MorseComplexObject) where
  functionExistsClosed : M.discreteMorseFunctionExists
  complexDefinedClosed : M.morseComplexDefined
  homologyIsoClosed : M.homologyIsoManifold

theorem morse_complex_closed_from_evidence (M : MorseComplexObject)
    (E : MorseComplexEvidence M) : MorseComplexClosed M :=
  And.intro E.functionExistsClosed (And.intro E.complexDefinedClosed E.homologyIsoClosed)

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse