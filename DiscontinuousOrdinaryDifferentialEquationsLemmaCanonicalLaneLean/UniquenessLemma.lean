import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean

structure UniquenessLemmaPackage where
  uniquenessCondition : Prop
  comparisonPrinciple : Prop
  oneSidedLipschitz : Prop
  uniquenessHolds : Prop
  counterexampleCondition : Prop

structure UniquenessLemmaEvidence (U : UniquenessLemmaPackage) where
  uniquenessConditionClosed : U.uniquenessCondition
  comparisonPrincipleClosed : U.comparisonPrinciple
  oneSidedLipschitzClosed : U.oneSidedLipschitz
  uniquenessHoldsClosed : U.uniquenessHolds
  counterexampleConditionClosed : U.counterexampleCondition

def UniquenessLemmaClosed (U : UniquenessLemmaPackage) : Prop :=
  U.uniquenessCondition ∧ U.comparisonPrinciple ∧ U.oneSidedLipschitz ∧ U.uniquenessHolds ∧ U.counterexampleCondition

theorem uniqueness_lemma_closed_from_evidence (U : UniquenessLemmaPackage) (E : UniquenessLemmaEvidence U) : UniquenessLemmaClosed U := by
  exact And.intro E.uniquenessConditionClosed
    (And.intro E.comparisonPrincipleClosed
      (And.intro E.oneSidedLipschitzClosed
        (And.intro E.uniquenessHoldsClosed E.counterexampleConditionClosed)))

end DiscontinuousOrdinaryDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
