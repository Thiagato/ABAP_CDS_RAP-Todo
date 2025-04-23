@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View de consumo de tarefas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_THS_TAREFA
  provider contract transactional_query as projection on ZI_THS_TAREFA
  association [1..1] to ZC_THS_MATERIA_VH as _Materia on $projection.MateriaId = _Materia.MateriaId
{
  key TarefaId,
  @ObjectModel.text.element: ['_Materia.Nome']
  MateriaId,
   Nome,
  Descricao,
  Status,
  _Materia

  
  
}
