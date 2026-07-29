import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure MorseTheoryPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  morseFunction : Type v
  criticalPoints : Prop
  gradientFlow : Prop
  handleDecomposition : Prop
  morseInequalities : Prop

structure MorseTheoryEvidence (P : MorseTheoryPackage) where
  criticalPointsClosed : P.criticalPoints
  gradientFlowClosed : P.gradientFlow
  handleDecompositionClosed : P.handleDecomposition
  morseInequalitiesClosed : P.morseInequalities

def MorseTheoryClosed (P : MorseTheoryPackage) : Prop :=
  P.criticalPoints ∧ P.gradientFlow ∧ P.handleDecomposition ∧ P.morseInequalities

theorem morse_theory_closed_from_evidence (P : MorseTheoryPackage) (E : MorseTheoryEvidence P) :
    MorseTheoryClosed P := by
  exact And.intro E.criticalPointsClosed (And.intro E.gradientFlowClosed (And.intro E.handleDecompositionClosed E.morseInequalitiesClosed))

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse