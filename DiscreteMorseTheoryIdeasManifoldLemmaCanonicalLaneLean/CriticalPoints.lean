import HautevilleHouse.DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.MorseComplexBridge

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

structure CriticalPointsPackage (M : MorseComplexObject) where
  criticalSetDefined : Prop
  indexAssignment : Prop
  criticalSetDiscrete : Prop
  descendingManifoldsWellDefined : Prop

structure CriticalPointsEvidence {M : MorseComplexObject}
    (C : CriticalPointsPackage M) where
  criticalSetClosed : C.criticalSetDefined
  indexAssignedClosed : C.indexAssignment
  criticalSetDiscreteClosed : C.criticalSetDiscrete
  descendingManifoldsClosed : C.descendingManifoldsWellDefined

def CriticalPointsClosed {M : MorseComplexObject}
    (C : CriticalPointsPackage M) : Prop :=
  C.criticalSetDefined ∧ C.indexAssignment ∧
  C.criticalSetDiscrete ∧ C.descendingManifoldsWellDefined

theorem critical_points_closed_from_evidence {M : MorseComplexObject}
    (C : CriticalPointsPackage M) (E : CriticalPointsEvidence C) :
    CriticalPointsClosed C :=
  And.intro E.criticalSetClosed (And.intro E.indexAssignedClosed
    (And.intro E.criticalSetDiscreteClosed E.descendingManifoldsClosed))

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse