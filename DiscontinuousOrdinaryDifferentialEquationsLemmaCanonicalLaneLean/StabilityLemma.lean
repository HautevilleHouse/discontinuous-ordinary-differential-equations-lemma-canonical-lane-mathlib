import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure LyapunovFunction {X : PrimitiveStateSpace} {T : PrimitiveTimeDomain}
    (V : DiscontinuousVectorField X T) where
  function : X.carrier → ℝ
  positiveDefinite : ∀ x ≠ 0, function x > 0 ∧ function 0 = 0
  decreasingAlongTrajectories : ∀ (t : T.Time) (x : X.carrier),
    ∃ v ∈ FilippovRegularization.convexifiedField t x, HasDerivAt (function ∘ trajectory) (∇function x • v) t
  positiveDefiniteTerm : positiveDefinite
  decreasingAlongTrajectoriesTerm : decreasingAlongTrajectories

theorem stability_via_lyapunov {X : PrimitiveStateSpace} {T : PrimitiveTimeDomain}
    (V : DiscontinuousVectorField X T) (L : LyapunovFunction V) :
    ∀ ε > 0, ∃ δ > 0, ∀ (F : FilippovRegularization V) (S : FilippovSolution F),
      ‖S.trajectory (T.start)‖ < δ → ∀ t, ‖S.trajectory t‖ < ε :=
  by
    intro ε hε
    refine ⟨?, ?⟩
    -- proof using Lyapunov function
    sorry

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse