@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View composta de tarefas'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
//ela vai ficar com o root ja que é ela que vai fazer o crud
    define root view entity ZI_THS_TAREFA as select from ZR_THS_TAREFA 
    association to ZI_THS_MATERIAS as _Materia on $projection.MateriaId = _Materia.MateriaId
{ 
    key TarefaId,
    MateriaId,
    Descricao,
    Status,
    _Materia,
    _Materia.Nome
}
