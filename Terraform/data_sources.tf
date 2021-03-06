data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.tenancy_ocid
}
data oci_identity_regions regions {
}

data oci_identity_tenancy tenancy {
  tenancy_id = var.tenancy_ocid
}

data oci_core_images oraclelinux {
  compartment_id = var.compartment_ocid

  operating_system         = "Oracle Linux"
  operating_system_version = "7.9"

  # exclude GPU specific images
  filter {
    name   = "display_name"
    values = ["^Oracle-Linux-7.9-([\\.0-9]+)-([\\.0-9-]+)$"]
    regex  = true
  }
}
