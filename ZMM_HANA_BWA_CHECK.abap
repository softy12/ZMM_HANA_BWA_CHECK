REPORT ZMM_HANA_BWA_CHECK.

* via class's attr - this is preferable way
IF cl_rs_utilities=>n_is_hdb_system = rs_c_false.
  WRITE: / 'no hana'.
ELSE.
  WRITE: / 'hana in place'.
ENDIF.

* via class's method
IF cl_rs_utilities=>is_hdb_system( ) = rs_c_false.
  WRITE: / 'no HANA'.
ELSE.
  WRITE: / 'HANA in place'.
ENDIF.

* via class's method
IF cl_rsddtrex_core=>get_trex_rfc_dest( ) IS INITIAL.
  WRITE: / 'no BWA'.
ELSE.
  WRITE: / 'BWA in place'.
ENDIF.
