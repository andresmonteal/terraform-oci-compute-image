// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

variable "tenancy_ocid" {
  description = "(Required) (Updatable) The OCID of the root compartment."
  type        = string
  default     = null
}

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = null
}

variable "compartment" {
  description = "compartment name where to create all resources"
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name for the image. It does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
}

variable "launch_mode" {
  description = " (Optional) Specifies the configuration mode for launching virtual machine (VM) instances. The configuration modes are: NATIVE, EMULATED, PARAVIRTUALIZED, CUSTOM"
  type        = string
  default     = ""
}

variable "source_type" {
  description = "(Required) The source type for the image. Use objectStorageTuple when specifying the namespace, bucket name, and object name. Use objectStorageUri when specifying the Object Storage URL."
  type        = string
  default     = "objectStorageTuple"
}

variable "bucket_name" {
  description = "(Required when source_type=objectStorageTuple) The Object Storage bucket for the image."
  type        = string
}

variable "namespace_name" {
  description = "(Required when source_type=objectStorageTuple) The Object Storage namespace for the image."
  type        = string
}

variable "object_name" {
  description = "(Required when source_type=objectStorageTuple) The Object Storage name for the image."
  type        = string
}

variable "operating_system" {
  description = "(Optional) The image's operating system. Example: Oracle Linux"
  type        = string
  default     = null
}

variable "operating_system_version" {
  description = " (Optional) The format of the image to be imported. Only monolithic images are supported. This attribute is not used for exported Oracle images with the Oracle Cloud Infrastructure image format. Allowed values are: QCOW2, VMDK"
  type        = string
  default     = null
}

variable "source_image_type" {
  description = "(Required when source_type=objectStorageUri) The Object Storage URL for the image."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only."
  type        = map(any)
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(any)
  default     = null
}