import HautevilleHouse.DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.HandleBodyDecomposition

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure HomologyEquivalencePackage {M : MorseComplexObject}
    {G : DiscreteGradientFlowPackage M} {C : CriticalPointsPackage M}
    {H : HandleBodyDecompositionPackage G C} where
  morseHomologyDefined : Prop
  cellularHomologyDefined : Prop
  quasiIsomorphismConstructed : Prop
  homologyIsomorphism : Prop

structure HomologyEquivalenceEvidence {M : MorseComplexObject}
    {G : DiscreteGradientFlowPackage M} {C : CriticalPointsPackage M}
    {H : HandleBodyDecompositionPackage G C}
    (Q : HomologyEquivalencePackage H) where
  morseHomologyClosed : Q.morseHomologyDefined
  cellularHomologyClosed : Q.cellularHomologyDefined
  quasiIsoConstructedClosed : Q.quasiIsomorphismConstructed
  homologyIsoClosed : Q.homologyIsomorphism

def HomologyEquivalenceClosed {M : MorseComplexObject}
    {G : DiscreteGradientFlowPackage M} {C : CriticalPointsPackage M}
    {H : HandleBodyDecompositionPackage G C}
    (Q : HomologyEquivalencePackage H) : Prop :=
  Q.morseHomologyDefined ∧ Q.cellularHomologyDefined ∧
  Q.quasiIsomorphismConstructed ∧ Q.homologyIsomorphism

theorem homology_equivalence_closed_from_evidence
    {M : MorseComplexObject} {G : DiscreteGradientFlowPackage M}
    {C : CriticalPointsPackage M} {H : HandleBodyDecompositionPackage G C}
    (Q : HomologyEquivalencePackage H) (E : HomologyEquivalenceEvidence Q) :
    HomologyEquivalenceClosed Q :=
  And.intro E.morseHomologyClosed (And.intro E.cellularHomologyClosed
    (And.intro E.quasiIsoConstructedClosed E.homologyIsoClosed))

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse