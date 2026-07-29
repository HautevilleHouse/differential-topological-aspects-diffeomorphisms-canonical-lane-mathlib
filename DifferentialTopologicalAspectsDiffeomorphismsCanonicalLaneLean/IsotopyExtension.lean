import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure IsotopyExtensionPackage where
  ambientManifold : Type u
  topology : TopologicalSpace ambientManifold
  isotopy : Type v
  extensionExists : Prop
  extensionUnique : Prop
  isotopySmooth : Prop

structure IsotopyExtensionEvidence (P : IsotopyExtensionPackage) where
  extensionExistsClosed : P.extensionExists
  extensionUniqueClosed : P.extensionUnique
  isotopySmoothClosed : P.isotopySmooth

def IsotopyExtensionClosed (P : IsotopyExtensionPackage) : Prop :=
  P.extensionExists ∧ P.extensionUnique ∧ P.isotopySmooth

theorem isotopy_extension_closed_from_evidence (P : IsotopyExtensionPackage) (E : IsotopyExtensionEvidence P) :
    IsotopyExtensionClosed P := by
  exact And.intro E.extensionExistsClosed (And.intro E.extensionUniqueClosed E.isotopySmoothClosed)

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse