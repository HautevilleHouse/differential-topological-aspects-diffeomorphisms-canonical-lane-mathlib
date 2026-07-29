import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure HandleDecompositionPackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  handleBodies : List (HandleBody)
  attachmentMaps : List (DiffMap)
  cellComplex : Prop
  diffeomorphismConstructed : Prop
  surgeryData : Prop

structure HandleBody where
  index : ℕ
  dimension : ℕ

default instance : Inhabited HandleBody where main := {
  index := 0
  dimension := 0
}

structure DiffMap where
  source : Type u
  target : Type u

default instance : Inhabited DiffMap where main := {
  source := Unit
  target := Unit
}

structure HandleDecompositionEvidence (P : HandleDecompositionPackage) where
  cellComplexClosed : P.cellComplex
  diffeomorphismConstructedClosed : P.diffeomorphismConstructed
  surgeryDataClosed : P.surgeryData

def HandleDecompositionClosed (P : HandleDecompositionPackage) : Prop :=
  P.cellComplex ∧ P.diffeomorphismConstructed ∧ P.surgeryData

theorem handle_decomposition_closed_from_evidence (P : HandleDecompositionPackage) (E : HandleDecompositionEvidence P) :
    HandleDecompositionClosed P := by
  exact And.intro E.cellComplexClosed (And.intro E.diffeomorphismConstructedClosed E.surgeryDataClosed)

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
