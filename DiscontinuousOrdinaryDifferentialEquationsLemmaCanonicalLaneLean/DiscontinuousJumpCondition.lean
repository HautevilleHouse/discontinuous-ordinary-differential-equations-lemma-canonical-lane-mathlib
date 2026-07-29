import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuousJumpConditionPackage where
  jumpCondition : Prop
  leftLimitExists : Prop
  rightLimitExists : Prop
  jumpDiscontinuityMeasured : Prop
  piecewiseContinuous : Prop

structure DiscontinuousJumpConditionEvidence (D : DiscontinuousJumpConditionPackage) where
  jumpConditionClosed : D.jumpCondition
  leftLimitExistsClosed : D.leftLimitExists
  rightLimitExistsClosed : D.rightLimitExists
  jumpDiscontinuityMeasuredClosed : D.jumpDiscontinuityMeasured
  piecewiseContinuousClosed : D.piecewiseContinuous

def DiscontinuousJumpConditionClosed (D : DiscontinuousJumpConditionPackage) : Prop :=
  D.jumpCondition ∧ D.leftLimitExists ∧ D.rightLimitExists ∧ D.jumpDiscontinuityMeasured ∧ D.piecewiseContinuous

theorem discontinuous_jump_condition_closed_from_evidence (D : DiscontinuousJumpConditionPackage) (E : DiscontinuousJumpConditionEvidence D) : DiscontinuousJumpConditionClosed D := by
  exact And.intro E.jumpConditionClosed
    (And.intro E.leftLimitExistsClosed
      (And.intro E.rightLimitExistsClosed
        (And.intro E.jumpDiscontinuityMeasuredClosed E.piecewiseContinuousClosed)))

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
