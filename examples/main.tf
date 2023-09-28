// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

module "images" {
  source = "../"

  for_each = var.images

  tenancy_ocid             = var.tenancy_ocid
  compartment              = each.value["compartment"]
  display_name             = each.key
  bucket_name              = each.value["bucket_name"]
  namespace_name           = each.value["namespace_name"]
  object_name              = each.value["object_name"]
  operating_system         = lookup(each.value, "operating_system", null)
  operating_system_version = lookup(each.value, "operating_system_version", null)
  source_image_type        = lookup(each.value, "source_image_type", null)
  freeform_tags            = lookup(each.value, "freeform_tags", null)
  defined_tags             = lookup(each.value, "defined_tags", null)
}