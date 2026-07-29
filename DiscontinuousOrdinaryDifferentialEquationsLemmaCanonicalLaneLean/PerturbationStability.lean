import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean.FilippovExistence

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure PerturbationStabilityPackage {F : FilippovRegularizationPackage} (E : FilippovExistencePackage F) where
  perturbationBound : ℝ
  perturbedSolutionExists : Prop
  closenessEstimate : Prop
  continuousDependence : Prop

def PerturbationStabilityClosed {F : FilippovRegularizationPackage} {E : FilippovExistencePackage F} (P : PerturbationStabilityPackage E) : Prop :=
  P.perturbedSolutionExists ∧ P.closenessEstimate ∧ P.continuousDependence

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse