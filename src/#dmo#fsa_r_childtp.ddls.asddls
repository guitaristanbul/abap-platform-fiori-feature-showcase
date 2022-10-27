@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Child TP'

define view entity /DMO/FSA_R_ChildTP
  as select from /DMO/FSA_I_Child
  composition [0..*] of /DMO/FSA_R_GrandchildTP as _Grandchild
  association to parent /DMO/FSA_R_RootTP       as _Root on $projection.ParentID = _Root.ID
{
  key ID,
      ParentID,
      StringProperty,
      FieldWithPercent,
      BooleanProperty,
      CriticalityCode,
      StreamFile,
      StreamFilename,
      StreamMimeType,
      /* Associations */
      _Criticality,
      _Grandchild,
      _Root
}
