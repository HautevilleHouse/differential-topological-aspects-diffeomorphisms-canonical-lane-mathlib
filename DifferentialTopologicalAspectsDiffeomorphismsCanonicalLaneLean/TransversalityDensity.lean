import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure TransversalityPackage (M N : Type u) [TopologicalSpace M] [SmoothManifold M] [TopologicalSpace N] [SmoothManifold N] where
  smoothMap : M → N
  submanifold : Submanifold N
  transverseCondition : Prop
  densityClaim : Prop
  sardTheoremUsed : Prop

structure TransversalityEvidence (P : TransversalityPackage) where
  transverseConditionClosed : P.transverseCondition
  densityClaimClosed : P.densityClaim
  sardTheoremUsedClosed : P.sardTheoremUsed

def TransversalityClosed (P : TransversalityPackage) : Prop :=
  P.transverseCondition ∧ P.densityClaim ∧ P.sardTheoremUsed

theorem transversality_closed_from_evidence (P : TransversalityPackage) (E : TransversalityEvidence P) :
    TransversalityClosed P := by
  exact And.intro E.transverseConditionClosed (And.intro E.densityClaimClosed E.sardTheoremUsedClosed)

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
