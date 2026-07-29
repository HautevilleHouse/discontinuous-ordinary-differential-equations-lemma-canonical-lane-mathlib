import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscontinuousODEWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse