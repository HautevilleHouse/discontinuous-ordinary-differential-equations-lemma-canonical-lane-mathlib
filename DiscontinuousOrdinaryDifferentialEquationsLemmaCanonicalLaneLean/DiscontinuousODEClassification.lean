import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuousODEModel where
  stateSpace : Type u
  timeDomain : Type v
  vectorField : stateSpace → stateSpace
  discontinuitySet : Set stateSpace
  regularRegion : stateSpace → Prop
  solutionForward : Type w

structure DiscontinuousODEAdmittedObject where
  model : DiscontinuousODEModel
  existenceAndUniqueness : Prop
  regularRegionInvariant : Prop
  solutionDefinedAlmostEverywhere : Prop
  conclusion : solutionDefinedAlmostEverywhere

def DiscontinuousODEWitnessClosed (O : DiscontinuousODEAdmittedObject) : Prop :=
  O.solutionDefinedAlmostEverywhere

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse