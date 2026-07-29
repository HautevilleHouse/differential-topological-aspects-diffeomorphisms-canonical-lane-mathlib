import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Manifold.Basic
import Mathlib.Topology.Manifold.DiffeomorphismGroup

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure DiffeomorphismClassificationPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  diffClassExists : Prop
  diffeomorphicInvariant : Prop
  classificationStatement : Prop

structure DiffeomorphismClassificationEvidence (D : DiffeomorphismClassificationPackage) where
  diffClassExistsClosed : D.diffClassExists
  diffeomorphicInvariantClosed : D.diffeomorphicInvariant
  classificationStatementClosed : D.classificationStatement

def DiffeomorphismClassificationClosed (D : DiffeomorphismClassificationPackage) : Prop :=
  D.diffClassExists ∧ D.diffeomorphicInvariant ∧ D.classificationStatement

theorem diffeomorphism_classification_closed_from_evidence
    (D : DiffeomorphismClassificationPackage)
    (E : DiffeomorphismClassificationEvidence D) :
    DiffeomorphismClassificationClosed D := by
  exact And.intro E.diffClassExistsClosed
    (And.intro E.diffeomorphicInvariantClosed E.classificationStatementClosed)

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
