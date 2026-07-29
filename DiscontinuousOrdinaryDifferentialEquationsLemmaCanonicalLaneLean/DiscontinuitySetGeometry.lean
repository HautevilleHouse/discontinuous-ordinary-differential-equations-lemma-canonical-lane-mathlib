import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean.DiscontinuousODEClassification

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuitySetGeometryPackage (M : DiscontinuousODEModel) where
  hausdorffDimension : Nat
  rectifiable : Bool
  smoothStratification : Prop
  tameCondition : Prop

structure DiscontinuitySetGeometryEvidence {M : DiscontinuousODEModel}
    (G : DiscontinuitySetGeometryPackage M) where
  hausdorffDimensionClosed : G.hausdorffDimension = 1
  rectifiableClosed : G.rectifiable = true
  smoothStratificationClosed : G.smoothStratification
  tameConditionClosed : G.tameCondition

def DiscontinuitySetGeometryClosed {M : DiscontinuousODEModel}
    (G : DiscontinuitySetGeometryPackage M) : Prop :=
  G.hausdorffDimension = 1 ∧ G.rectifiable = true ∧ G.smoothStratification ∧ G.tameCondition

theorem discontinuity_set_geometry_closed_from_evidence
    {M : DiscontinuousODEModel} (G : DiscontinuitySetGeometryPackage M)
    (E : DiscontinuitySetGeometryEvidence G) : DiscontinuitySetGeometryClosed G := by
  exact And.intro E.hausdorffDimensionClosed
    (And.intro E.rectifiableClosed
      (And.intro E.smoothStratificationClosed E.tameConditionClosed))

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse