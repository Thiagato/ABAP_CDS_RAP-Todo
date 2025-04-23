@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS value help de materias'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_THS_MATERIA_VH
  as select from ztths_materias
{
  @ObjectModel.text.element: [ 'Nome' ]
  @EndUserText.label: 'ID da Matéria'
  key materia_id as MateriaId,

  @Semantics.text: true
  @EndUserText.label: 'Nome da Matéria'
  nome as Nome
}
