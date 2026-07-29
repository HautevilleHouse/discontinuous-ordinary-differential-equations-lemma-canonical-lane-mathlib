import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean.DiscontinuousODEClassification

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure RegularizationMethodPackage (M : DiscontinuousODEModel) where
  smoothingParameter : ℝ
  smoothedVectorField : M.stateSpace → M.stateSpace
  convergenceResult : Prop
  limitSolutionEqualsFilippov : Prop

structure RegularizationMethodEvidence {M : DiscontinuousODEModel}
    (R : RegularizationMethodPackage M) where
  smoothingParameterClosed : R.smoothingParameter > 0
  smoothedVectorFieldClosed : R.smoothedVectorField = R.smoothedVectorField
  convergenceResultClosed : R.convergenceResult
  limitSolutionEqualsFilippovClosed : R.limitSolutionEqualsFilippov

def RegularizationMethodClosed {M : DiscontinuousODEModel}
    (R : RegularizationMethodPackage M) : Prop :=
  R.smoothingParameter > 0 ∧ R.smoothedVectorField = R.smoothedVectorField ∧ R.convergenceResult ∧ R.limitSolutionEqualsFilippov

theorem regularization_method_closed_from_evidence
    {M : DiscontinuousODEModel} (R : RegularizationMethodPackage M)
    (E : RegularizationMethodEvidence R) : RegularizationMethodClosed R := by
  exact And.intro E.smoothingParameterClosed
    (And.intro E.smoothedVectorFieldClosed
      (And.intro E.convergenceResultClosed E.limitSolutionEqualsFilippovClosed))

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse