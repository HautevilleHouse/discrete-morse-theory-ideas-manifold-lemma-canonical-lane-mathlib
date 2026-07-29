import DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MorseWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscreteMorseTheoryIdeasManifoldLemmaCanonicalLaneLean
end HautevilleHouse