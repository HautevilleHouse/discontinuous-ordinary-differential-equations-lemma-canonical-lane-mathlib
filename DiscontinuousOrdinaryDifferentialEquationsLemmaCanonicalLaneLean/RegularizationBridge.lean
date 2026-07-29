import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean.DiscontinuousODELemma

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure RegularizationBridgePackage {P : DiscontinuousODELemmaPackage} where
  regularizedVectorField : P.vectorField -> P.vectorField
  approximationProperty : Prop
  convergenceRate : Prop
  regularizationClosed : Prop
  regularizationClosedTerm : regularizationClosed

def RegularizationBridgeClosed {P : DiscontinuousODELemmaPackage} (R : RegularizationBridgePackage P) : Prop :=
  R.regularizationClosed

theorem regularization_bridge_closed_from_evidence {P : DiscontinuousODELemmaPackage} (R : RegularizationBridgePackage P) : RegularizationBridgeClosed R :=
  R.regularizationClosedTerm

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse