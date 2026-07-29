import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure DiffeomorphismGroupSignature (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  sourceManifold : M
  targetManifold : M
  diffMap : M → M
  invertible : Prop
  smoothBothWays : Prop
  sourceCompact : Prop

structure DiffeomorphismGroupEvidence (S : DiffeomorphismGroupSignature) where
  invertibleClosed : S.invertible
  smoothBothWaysClosed : S.smoothBothWays
  sourceCompactClosed : S.sourceCompact

def DiffeomorphismGroupClosed (S : DiffeomorphismGroupSignature) : Prop :=
  S.invertible ∧ S.smoothBothWays ∧ S.sourceCompact

theorem diffeomorphism_group_closed_from_evidence (S : DiffeomorphismGroupSignature) (E : DiffeomorphismGroupEvidence S) :
    DiffeomorphismGroupClosed S := by
  exact And.intro E.invertibleClosed (And.intro E.smoothBothWaysClosed E.sourceCompactClosed)

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
