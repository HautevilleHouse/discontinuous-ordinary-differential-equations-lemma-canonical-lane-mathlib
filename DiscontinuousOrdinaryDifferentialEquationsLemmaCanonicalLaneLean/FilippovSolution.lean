import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure FilippovSolutionPackage where
  differentialInclusion : Prop
  solutionCurve : Type u
  absolutelyContinuous : Prop
  satisfiesInclusionAE : Prop
  existenceGuaranteed : Prop

structure FilippovSolutionEvidence (F : FilippovSolutionPackage) where
  differentialInclusionClosed : F.differentialInclusion
  absolutelyContinuousClosed : F.absolutelyContinuous
  satisfiesInclusionAEClosed : F.satisfiesInclusionAE
  existenceGuaranteedClosed : F.existenceGuaranteed

def FilippovSolutionClosed (F : FilippovSolutionPackage) : Prop :=
  F.differentialInclusion ∧ F.absolutelyContinuous ∧ F.satisfiesInclusionAE ∧ F.existenceGuaranteed

theorem filippov_solution_closed_from_evidence (F : FilippovSolutionPackage) (E : FilippovSolutionEvidence F) : FilippovSolutionClosed F := by
  exact And.intro E.differentialInclusionClosed
    (And.intro E.absolutelyContinuousClosed
      (And.intro E.satisfiesInclusionAEClosed E.existenceGuaranteedClosed))

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
