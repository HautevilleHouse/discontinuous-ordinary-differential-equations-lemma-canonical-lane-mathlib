import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean.DiscontinuousODEClassification

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure UniquenessCriteriaPackage (M : DiscontinuousODEModel) where
  oneSidedLipschitzCondition : Prop
  noSlidingMode : Prop
  uniquenessResult : Prop

structure UniquenessCriteriaEvidence {M : DiscontinuousODEModel}
    (U : UniquenessCriteriaPackage M) where
  oneSidedLipschitzConditionClosed : U.oneSidedLipschitzCondition
  noSlidingModeClosed : U.noSlidingMode
  uniquenessResultClosed : U.uniquenessResult

def UniquenessCriteriaClosed {M : DiscontinuousODEModel}
    (U : UniquenessCriteriaPackage M) : Prop :=
  U.oneSidedLipschitzCondition ∧ U.noSlidingMode ∧ U.uniquenessResult

theorem uniqueness_criteria_closed_from_evidence
    {M : DiscontinuousODEModel} (U : UniquenessCriteriaPackage M)
    (E : UniquenessCriteriaEvidence U) : UniquenessCriteriaClosed U := by
  exact And.intro E.oneSidedLipschitzConditionClosed
    (And.intro E.noSlidingModeClosed E.uniquenessResultClosed)

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse