CLASS z_ths_carga_materia DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS z_ths_carga_materia IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    TYPES: tt_materias TYPE TABLE OF ztths_materias WITH DEFAULT KEY,
           tt_tarefa  TYPE TABLE OF ztths_tarefa WITH DEFAULT KEY.

    DATA: lt_materias TYPE tt_materias,
          lt_tarefa   TYPE tt_tarefa.

    DATA(lo_uuid) = cl_uuid_factory=>create_system_uuid( ).

    " Preenchendo a tabela de materiais
    lt_materias = VALUE tt_materias(
      ( materia_id = 1 nome = 'iPhone 14 Pro' )
      ( materia_id = 2 nome = 'iPhone 13 Pro' )
      ( materia_id = 3 nome = 'iPhone 12 Pro' )
      ( materia_id = 4 nome = 'Monitor 34' )
      ( materia_id = 5 nome = 'Monitor 48' )
      ( materia_id = 6 nome = 'Galaxy Note' )
    ).

    " Preenchendo a tabela de tarefas com referência aos materiais
    lt_tarefa = VALUE tt_tarefa(
      ( tarefa_id = lo_uuid->create_uuid_x16( ) materia_id = 1 descricao = 'Verificar estoque iPhone 14' status = 'IP' )
      ( tarefa_id = lo_uuid->create_uuid_x16( ) materia_id = 1 descricao = 'Testar iPhone 14 Pro' status = 'CO' )
      ( tarefa_id = lo_uuid->create_uuid_x16( ) materia_id = 2 descricao = 'Vender iPhone 13 Pro' status = 'IP' )
      ( tarefa_id = lo_uuid->create_uuid_x16( ) materia_id = 3 descricao = 'Reparar iPhone 12 Pro' status = 'PL' )
      ( tarefa_id = lo_uuid->create_uuid_x16( ) materia_id = 4 descricao = 'Instalar Monitor 34' status = 'CO' )
      ( tarefa_id = lo_uuid->create_uuid_x16( ) materia_id = 5 descricao = 'Configurar Monitor 48' status = 'IP' )
      ( tarefa_id = lo_uuid->create_uuid_x16( ) materia_id = 6 descricao = 'Promover Galaxy Note' status = 'PL' )
    ).

    " Limpando as tabelas
    DELETE FROM ztths_materias.
    DELETE FROM ztths_tarefa.

    " Inserindo os dados nas tabelas
    MODIFY ztths_materias FROM TABLE @lt_materias.
    MODIFY ztths_tarefa FROM TABLE @lt_tarefa.

    " Confirmando a inserção
    COMMIT WORK.

    out->write( 'Dados inseridos com sucesso nas tabelas ztths_materias e ztths_tarefa.' ).

  ENDMETHOD.

ENDCLASS.
