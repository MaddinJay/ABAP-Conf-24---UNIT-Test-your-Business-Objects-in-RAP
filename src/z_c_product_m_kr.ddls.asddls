@UI: {
 headerInfo: { typeName: 'Product',
               typeNamePlural: 'Products',
               title: { type: #STANDARD, value: 'ProductId' }} }

@Search.searchable: true

@Metadata.allowExtensions: true
define root view entity Z_C_Product_M_KR
  as projection on Z_I_PRODUCT_KR
{
  key ProductId,
    @Search.defaultSearchElement: true
      ProductDesc,
      
      @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VE_AVERAGE_RATING_KR'
      virtual AverageRating: abap.dec( 2, 1 ),
      
      /* Associations */
//      _Rating : redirected to composition child Z_C_Rating_M_KR
      _Rating : redirected to composition child Z_C_Rating_M_KR
} 
