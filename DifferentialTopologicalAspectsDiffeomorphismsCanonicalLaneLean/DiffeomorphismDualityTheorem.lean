import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Manifold.Basic

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure DiffeomorphismDualityTheoremPackage where
  sourceManifold : Type u
  dualManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  dualTopology : TopologicalSpace dualManifold
  dualityPairing : Prop
  dualityIsomorphism : Prop
  dualityStatement : Prop

structure DiffeomorphismDualityTheoremEvidence
    (D : DiffeomorphismDualityTheoremPackage) where
  dualityPairingClosed : D.dualityPairing
  dualityIsomorphismClosed : D.dualityIsomorphism
  dualityStatementClosed : D.dualityStatement

def DiffeomorphismDualityTheoremClosed
    (D : DiffeomorphismDualityTheoremPackage) : Prop :=
  D.dualityPairing ∧ D.dualityIsomorphism ∧ D.dualityStatement

theorem diffeomorphism_duality_theorem_closed_from_evidence
    (D : DiffeomorphismDualityTheoremPackage)
    (E : DiffeomorphismDualityTheoremEvidence D) :
    DiffeomorphismDualityTheoremClosed D := by
  exact And.intro E.dualityPairingClosed
    (And.intro E.dualityIsomorphismClosed E.dualityStatementClosed)

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
