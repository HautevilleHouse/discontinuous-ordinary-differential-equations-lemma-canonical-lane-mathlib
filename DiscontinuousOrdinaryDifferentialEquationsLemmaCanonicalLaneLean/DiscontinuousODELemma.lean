import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuousODELemmaPackage where
  vectorField : Type u
  discontinuitySet : Set vectorField
  regularization : vectorField -> vectorField
  solutionExists : Prop
  solutionUnique : Prop
  solutionContinuousDependence : Prop

def DiscontinuousODELemmaClosed (P : DiscontinuousODELemmaPackage) : Prop :=
  P.solutionExists ∧ P.solutionUnique ∧ P.solutionContinuousDependence

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse