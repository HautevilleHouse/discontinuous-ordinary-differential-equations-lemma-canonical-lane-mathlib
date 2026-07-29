import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuitySet where
  point : Type u
  topology : TopologicalSpace point
  discontinuityLocus : Set point
  measureZero : Prop
  closedness : Prop
  discontinuityLocusDefined : discontinuityLocus = {x | False} ∨ discontinuityLocus = Set.univ

structure DiscontinuitySetEvidence (D : DiscontinuitySet) where
  measureZeroClosed : D.measureZero
  closednessClosed : D.closedness
  discontinuityLocusDefinedClosed : D.discontinuityLocusDefined

def DiscontinuitySetClosed (D : DiscontinuitySet) : Prop :=
  D.measureZero ∧ D.closedness ∧ D.discontinuityLocusDefined

theorem discontinuity_set_closed_from_evidence (D : DiscontinuitySet) (E : DiscontinuitySetEvidence D) :
    DiscontinuitySetClosed D := by
  exact And.intro E.measureZeroClosed (And.intro E.closednessClosed E.discontinuityLocusDefinedClosed)

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse