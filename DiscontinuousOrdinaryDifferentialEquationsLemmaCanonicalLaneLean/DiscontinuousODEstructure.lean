import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure PrimitiveTimeDomain where
  Time : Type
  start : Time
  le : Time → Time → Prop
  intervalTopology : Prop
  hasInitialTime : Prop
  locallyFiniteDiscontinuitySet : Prop
  intervalTopologyTerm : intervalTopology
  hasInitialTimeTerm : hasInitialTime
  locallyFiniteDiscontinuitySetTerm : locallyFiniteDiscontinuitySet

structure PrimitiveStateSpace where
  carrier : Type
  norm : carrier → ℝ
  complete : Prop
  separable : Prop
  normTerm : norm
  completeTerm : complete
  separableTerm : separable

structure DiscontinuousVectorField (X : PrimitiveStateSpace) (T : PrimitiveTimeDomain) where
  field : T.Time → X.carrier → X.carrier
  measurableInTime : Prop
  caratheodoryCondition : Prop
  discontinuitySet : Set (T.Time × X.carrier)
  discontinuitySetClosed : IsClosed discontinuitySet
  measurableInTimeTerm : measurableInTime
  caratheodoryConditionTerm : caratheodoryCondition

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse