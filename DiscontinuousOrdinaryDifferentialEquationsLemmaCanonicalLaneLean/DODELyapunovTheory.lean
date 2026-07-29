import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure LyapunovTheory where
  lyapunovFunction : Prop
  stabilityRegion : Prop
  derivativeEstimate : Prop
  asymptoticStability : Prop

structure LyapunovTheoryEvidence (L : LyapunovTheory) where
  lyapunovFunctionClosed : L.lyapunovFunction
  stabilityRegionClosed : L.stabilityRegion
  derivativeEstimateClosed : L.derivativeEstimate
  asymptoticStabilityClosed : L.asymptoticStability

def LyapunovTheoryClosed (L : LyapunovTheory) : Prop :=
  L.lyapunovFunction ∧ L.stabilityRegion ∧ L.derivativeEstimate ∧ L.asymptoticStability

theorem lyapunov_theory_closed_from_evidence (L : LyapunovTheory) (E : LyapunovTheoryEvidence L) :
    LyapunovTheoryClosed L := by
  exact And.intro E.lyapunovFunctionClosed (And.intro E.stabilityRegionClosed (And.intro E.derivativeEstimateClosed E.asymptoticStabilityClosed))

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse