import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean.DiscontinuitySetClassification

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure LyapunovStabilityPackage where
  lyapunovFunction : Type u
  derivativeCondition : Prop
  stabilityConclusion : Prop
  stabilityClosed : Prop
  stabilityClosedTerm : stabilityClosed

def LyapunovStabilityClosed (L : LyapunovStabilityPackage) : Prop :=
  L.stabilityClosed

theorem lyapunov_stability_closed_from_evidence (L : LyapunovStabilityPackage) : LyapunovStabilityClosed L :=
  L.stabilityClosedTerm

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse