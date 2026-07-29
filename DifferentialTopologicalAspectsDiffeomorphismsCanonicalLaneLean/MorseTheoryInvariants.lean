import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure MorseFunctionPackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  morseFunction : M → ℝ
  criticalPoints : Set M
  nondegenerate : Prop
  indexData : Prop
  levelSetTopology : Prop

structure MorseFunctionEvidence (P : MorseFunctionPackage) where
  nondegenerateClosed : P.nondegenerate
  indexDataClosed : P.indexData
  levelSetTopologyClosed : P.levelSetTopology

def MorseFunctionClosed (P : MorseFunctionPackage) : Prop :=
  P.nondegenerate ∧ P.indexData ∧ P.levelSetTopology

theorem morse_function_closed_from_evidence (P : MorseFunctionPackage) (E : MorseFunctionEvidence P) :
    MorseFunctionClosed P := by
  exact And.intro E.nondegenerateClosed (And.intro E.indexDataClosed E.levelSetTopologyClosed)

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
