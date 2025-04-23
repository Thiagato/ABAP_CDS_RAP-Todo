@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View basica de tarefas'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_THS_TAREFA as select from ztths_tarefa
{
    key tarefa_id as TarefaId,
    key materia_id as MateriaId,
    descricao as Descricao,
    status as Status
}
