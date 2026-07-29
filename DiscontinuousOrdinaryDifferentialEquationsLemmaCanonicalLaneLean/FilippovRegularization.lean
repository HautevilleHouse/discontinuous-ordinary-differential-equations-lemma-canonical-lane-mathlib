import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure FilippovRegularizationPackage where
  originalVectorField : Type u → Type u
  setValuedMap : Type u → Set (Type u)
  upperSemicontinuity : Prop
  convexCompactValues : Prop
  differentialInclusion : Prop

def FilippovRegularizationClosed (F : FilippovRegularizationPackage) : Prop :=
  F.upperSemicontinuity ∧ F.convexCompactValues ∧ F.differentialInclusion

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse