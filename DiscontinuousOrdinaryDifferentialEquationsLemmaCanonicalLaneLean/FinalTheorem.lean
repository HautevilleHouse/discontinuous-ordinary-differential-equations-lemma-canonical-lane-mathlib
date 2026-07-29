import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean.LyapunovStability

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

def ConstrainedDiscontinuousODELemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discontinuous_ode_lemma_endgame (A : AdmissibleClass) :
    ConstrainedDiscontinuousODELemmaClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse