import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure FilippovSolution where
  carathéodorySolution : Prop
  convexValuedRightHandSide : Prop
  upperSemicontinuity : Prop
  existenceOfSolution : Prop

structure FilippovSolutionEvidence (F : FilippovSolution) where
  carathéodorySolutionClosed : F.carathéodorySolution
  convexValuedRightHandSideClosed : F.convexValuedRightHandSide
  upperSemicontinuityClosed : F.upperSemicontinuity
  existenceOfSolutionClosed : F.existenceOfSolution

def FilippovSolutionClosed (F : FilippovSolution) : Prop :=
  F.carathéodorySolution ∧ F.convexValuedRightHandSide ∧ F.upperSemicontinuity ∧ F.existenceOfSolution

theorem filippov_solution_closed_from_evidence (F : FilippovSolution) (E : FilippovSolutionEvidence F) :
    FilippovSolutionClosed F := by
  exact And.intro E.carathéodorySolutionClosed (And.intro E.convexValuedRightHandSideClosed (And.intro E.upperSemicontinuityClosed E.existenceOfSolutionClosed))

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse