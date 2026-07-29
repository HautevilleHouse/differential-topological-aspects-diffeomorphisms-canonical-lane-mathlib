import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Manifold.Basic
import Mathlib.Topology.Manifold.DiffeomorphismGroup

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure InvarianceUnderDiffeomorphismPackage (M : Type u) [TopologicalSpace M] where
  topologicalInvariant : Prop
  diffeomorphismInvariant : Prop
  invarianceProof : topologicalInvariant → diffeomorphismInvariant
  invarianceConclusion : Prop

structure InvarianceUnderDiffeomorphismEvidence
    {M : Type u} [TopologicalSpace M]
    (I : InvarianceUnderDiffeomorphismPackage M) where
  invarianceConclusionClosed : I.invarianceConclusion

def InvarianceUnderDiffeomorphismClosed
    {M : Type u} [TopologicalSpace M]
    (I : InvarianceUnderDiffeomorphismPackage M) : Prop :=
  I.invarianceConclusion

theorem invariance_under_diffeomorphism_closed_from_evidence
    {M : Type u} [TopologicalSpace M]
    (I : InvarianceUnderDiffeomorphismPackage M)
    (E : InvarianceUnderDiffeomorphismEvidence I) :
    InvarianceUnderDiffeomorphismClosed I := by
  exact E.invarianceConclusionClosed

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
