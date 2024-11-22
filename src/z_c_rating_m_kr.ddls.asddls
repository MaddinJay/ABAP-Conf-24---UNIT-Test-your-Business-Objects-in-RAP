    @UI: {
 headerInfo: { typeName: 'Rating',
               typeNamePlural: 'Ratings',
               title: { type: #STANDARD, value: 'Product' } } }

@Search.searchable: true
@Metadata.allowExtensions: true
define view entity Z_C_Rating_M_KR
  as projection on Z_I_RATING_KR
{
  key RatingUuid,
      Product,
      Name,
      Email,
      Rating,
      Review,
      Status,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      /* Associations */
//      _Product : redirected to parent Z_C_Product_M_KR
      _Product : redirected to parent Z_C_Product_M_KR
}
