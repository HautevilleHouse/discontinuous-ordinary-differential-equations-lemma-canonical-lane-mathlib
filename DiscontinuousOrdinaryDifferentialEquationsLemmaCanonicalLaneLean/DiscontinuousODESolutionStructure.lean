import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuousODESolutionStructure where
  timeDomain : Type u
  stateSpace : Type v
  vectorField : stateSpace → stateSpace
  discontinuitySet : Set stateSpace
  caratheodorySolution : timeDomain → stateSpace
  absoluteContinuity : Prop
  differentialEquationAlmostEverywhere : Prop
  initialCondition : Prop

def DiscontinuousODESolutionClosed (S : DiscontinuousODESolutionStructure) : Prop :=
  S.absoluteContinuity ∧ S.differentialEquationAlmostEverywhere ∧ S.initialCondition

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse