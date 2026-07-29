import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure SlidingModeDynamicsPackage where
  slidingSurface : Type u → Set (Type u)
  equivalentControl : Type u → Type u
  invarianceCondition : Prop
  stabilityProperty : Prop
  uniqueSlidingSolution : Prop

def SlidingModeDynamicsClosed (S : SlidingModeDynamicsPackage) : Prop :=
  S.invarianceCondition ∧ S.stabilityProperty ∧ S.uniqueSlidingSolution

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse