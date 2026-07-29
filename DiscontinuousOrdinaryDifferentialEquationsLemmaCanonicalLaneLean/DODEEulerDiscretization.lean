import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure EulerDiscretization where
  timeStep : ℝ
  stepSize : ℝ
  forwardEulerMethod : Prop
  convergenceCondition : Prop
  numericalStability : Prop

structure EulerDiscretizationEvidence (E : EulerDiscretization) where
  forwardEulerMethodClosed : E.forwardEulerMethod
  convergenceConditionClosed : E.convergenceCondition
  numericalStabilityClosed : E.numericalStability

def EulerDiscretizationClosed (E : EulerDiscretization) : Prop :=
  E.forwardEulerMethod ∧ E.convergenceCondition ∧ E.numericalStability

theorem euler_discretization_closed_from_evidence (E : EulerDiscretization) (Ev : EulerDiscretizationEvidence E) :
    EulerDiscretizationClosed E := by
  exact And.intro Ev.forwardEulerMethodClosed (And.intro Ev.convergenceConditionClosed Ev.numericalStabilityClosed)

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse