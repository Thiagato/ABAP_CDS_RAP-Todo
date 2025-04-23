CLASS lhc_Tarefa DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Tarefa RESULT result.



ENDCLASS.

CLASS lhc_Tarefa IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.


ENDCLASS.
