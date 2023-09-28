########################
# compute custom images
########################

locals {
  default_freeform_tags = {
    terraformed = "Please do not edit manually"
    module      = "oracle-terraform-oci-compute-image"
  }
  merged_freeform_tags = merge(var.freeform_tags, local.default_freeform_tags)
  compartment_id       = try(data.oci_identity_compartments.compartment[0].compartments[0].id, var.compartment_id)
}

resource "oci_core_image" "main" {
  #Required
  compartment_id = local.compartment_id

  #Optional
  display_name  = var.display_name
  launch_mode   = var.launch_mode
  freeform_tags = local.merged_freeform_tags
  defined_tags  = var.defined_tags

  image_source_details {
    source_type    = var.source_type
    bucket_name    = var.bucket_name
    namespace_name = var.namespace_name
    object_name    = var.object_name # exported image name

    #Optional
    operating_system         = var.operating_system
    operating_system_version = var.operating_system_version
    source_image_type        = var.source_image_type
  }
  timeouts {
    create = "2h"
    update = "2h"
    delete = "2h"
  }
}