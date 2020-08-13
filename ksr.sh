#!/bin/bash
eval KGR_DIR="~/.kgr"
TENANT_DIR="${KGR_DIR}/tenant"
CURRENT_TENANT_FILE="${KGR_DIR}/.tenant"
function error_on_kangaroo_file_does_not_exist() {
   if [[ ! -f "${TENANT_DIR}/$1.kangaroo" ]]
  then
    echo "ERROR: Tenant file  ${TENANT_DIR}/$1.kangaroo does not exists"
    exit 2
  fi
}
function error_on_tenant_dir_does_not_exist() {
   if [[ ! -d "${TENANT_DIR}" ]]
  then
    echo "ERROR: Kangaroo not initialized"
    echo "Run > kgr init"
    exit 1
  fi
}
function error_on_tenant_context_does_not_exist() {
   if [[ ! -f "${CURRENT_TENANT_FILE}" ]]
  then
    echo "ERROR: No Tenant exists in context"
    echo "Run > kgr set-tenant <TENANT> "
    exit 1
  fi
}
