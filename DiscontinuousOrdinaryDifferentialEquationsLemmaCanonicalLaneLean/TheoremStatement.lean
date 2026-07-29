import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuousODESystem where
  carrier : Type
  topology : TopologicalSpace carrier
  vectorField : carrier → carrier
  discontinuitySet : Set carrier
  uniqueness : Prop
  existence : Prop
  conclusion : uniqueness ∧ existence

def DiscontinuousODEClosed (D : DiscontinuousODESystem) : Prop :=
  D.uniqueness ∧ D.existence

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse