import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean.FilippovSolution

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuitySetClassificationPackage where
  discontinuityType : Type u
  jumpCondition : Prop
  slidingMode : Prop
  classificationClosed : Prop
  classificationClosedTerm : classificationClosed

def DiscontinuitySetClassificationClosed (D : DiscontinuitySetClassificationPackage) : Prop :=
  D.classificationClosed

theorem discontinuity_set_classification_closed_from_evidence (D : DiscontinuitySetClassificationPackage) : DiscontinuitySetClassificationClosed D :=
  D.classificationClosedTerm

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse