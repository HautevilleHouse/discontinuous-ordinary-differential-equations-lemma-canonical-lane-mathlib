import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean.DiscontinuousODEClassification

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DiscontinuousODEAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscontinuousODEWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse