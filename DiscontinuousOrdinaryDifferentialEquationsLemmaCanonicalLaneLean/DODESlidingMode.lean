import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure SlidingMode where
  switchingSurface : Type u
  vectorFieldOnSurface : Prop
  equivalentControl : Prop
  stabilityCondition : Prop

structure SlidingModeEvidence (S : SlidingMode) where
  switchingSurfaceClosed : S.switchingSurface
  vectorFieldOnSurfaceClosed : S.vectorFieldOnSurface
  equivalentControlClosed : S.equivalentControl
  stabilityConditionClosed : S.stabilityCondition

def SlidingModeClosed (S : SlidingMode) : Prop :=
  S.switchingSurface ∧ S.vectorFieldOnSurface ∧ S.equivalentControl ∧ S.stabilityCondition

theorem sliding_mode_closed_from_evidence (S : SlidingMode) (E : SlidingModeEvidence S) :
    SlidingModeClosed S := by
  exact And.intro E.switchingSurfaceClosed (And.intro E.vectorFieldOnSurfaceClosed (And.intro E.equivalentControlClosed E.stabilityConditionClosed))

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse