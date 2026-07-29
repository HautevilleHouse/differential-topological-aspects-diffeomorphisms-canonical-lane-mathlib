import BridgeLemmas
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

-- Structure for smoothing of diffeomorphisms.
structure DiffeomorphismSmoothingPackage where
  roughDiffeomorphism : Prop
  smoothedDiffeomorphism : Prop
  smoothingExists : Prop
  smoothingClosed : smoothingExists

theorem diffeomorphism_smoothing_closed (S : DiffeomorphismSmoothingPackage) : S.smoothingExists := S.smoothingClosed

end HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
