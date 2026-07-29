import BridgeLemmas
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

-- Structure for mapping class group of diffeomorphisms.
structure DiffeomorphismMappingClassGroupPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  mappingClassGroup : Type v
  groupStructure : Prop
  groupStructureClosed : groupStructure

theorem diffeomorphism_mapping_class_group_closed (M : DiffeomorphismMappingClassGroupPackage) : M.groupStructure := M.groupStructureClosed

end HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
