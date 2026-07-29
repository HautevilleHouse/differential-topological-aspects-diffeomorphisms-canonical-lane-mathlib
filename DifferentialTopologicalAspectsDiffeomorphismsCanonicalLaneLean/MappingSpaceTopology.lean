import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Manifold.Basic
import Mathlib.Topology.CompactOpen

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

structure MappingSpaceTopologyPackage (M : Type u) (N : Type v)
    [TopologicalSpace M] [TopologicalSpace N] where
  mappingSpaceType : Type w
  compactOpenTopology : TopologicalSpace mappingSpaceType
  diffeomorphismSubspace : Set mappingSpaceType
  subspaceTopology : TopologicalSpace diffeomorphismSubspace
  topologyProperties : Prop

structure MappingSpaceTopologyEvidence
    {M : Type u} {N : Type v} [TopologicalSpace M] [TopologicalSpace N]
    (P : MappingSpaceTopologyPackage M N) where
  topologyPropertiesClosed : P.topologyProperties

def MappingSpaceTopologyClosed
    {M : Type u} {N : Type v} [TopologicalSpace M] [TopologicalSpace N]
    (P : MappingSpaceTopologyPackage M N) : Prop :=
  P.topologyProperties

theorem mapping_space_topology_closed_from_evidence
    {M : Type u} {N : Type v} [TopologicalSpace M] [TopologicalSpace N]
    (P : MappingSpaceTopologyPackage M N)
    (E : MappingSpaceTopologyEvidence P) :
    MappingSpaceTopologyClosed P := by
  exact E.topologyPropertiesClosed

end DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
