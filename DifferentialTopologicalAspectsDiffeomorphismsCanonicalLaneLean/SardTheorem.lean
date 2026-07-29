import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure SardTheoremPackage where
  sourceManifold : Type u
  targetManifold : Type v
  smoothMap : Type w
  criticalSet : Prop
  measureZeroImage : Prop
  regularValuesDense : Prop

structure SardTheoremEvidence (P : SardTheoremPackage) where
  criticalSetClosed : P.criticalSet
  measureZeroImageClosed : P.measureZeroImage
  regularValuesDenseClosed : P.regularValuesDense

def SardTheoremClosed (P : SardTheoremPackage) : Prop :=
  P.criticalSet ∧ P.measureZeroImage ∧ P.regularValuesDense

theorem sard_theorem_closed_from_evidence (P : SardTheoremPackage) (E : SardTheoremEvidence P) :
    SardTheoremClosed P := by
  exact And.intro E.criticalSetClosed (And.intro E.measureZeroImageClosed E.regularValuesDenseClosed)

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse