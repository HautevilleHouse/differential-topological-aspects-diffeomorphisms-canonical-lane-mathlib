import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure DualityUnderDiffeomorphismPackage {G : AdmissibleClass} where
  dualProperty : Prop
  diffeomorphismDuality : Prop
  dualityTransfer : Prop
  dualityPreservation : Prop

structure DualityUnderDiffeomorphismEvidence {G : AdmissibleClass}
  (Pkg : DualityUnderDiffeomorphismPackage G) where
  dualPropertyClosed : Pkg.dualProperty
  diffeomorphismDualityClosed : Pkg.diffeomorphismDuality
  dualityTransferClosed : Pkg.dualityTransfer
  dualityPreservationClosed : Pkg.dualityPreservation

def DualityUnderDiffeomorphismClosed {G : AdmissibleClass}
  (Pkg : DualityUnderDiffeomorphismPackage G) : Prop :=
  Pkg.dualProperty ∧ Pkg.diffeomorphismDuality ∧
  Pkg.dualityTransfer ∧ Pkg.dualityPreservation

theorem duality_under_diffeomorphism_closed_from_evidence {G : AdmissibleClass}
  (Pkg : DualityUnderDiffeomorphismPackage G)
  (E : DualityUnderDiffeomorphismEvidence Pkg) : DualityUnderDiffeomorphismClosed Pkg := by
  exact And.intro E.dualPropertyClosed
    (And.intro E.diffeomorphismDualityClosed
      (And.intro E.dualityTransferClosed E.dualityPreservationClosed))

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse