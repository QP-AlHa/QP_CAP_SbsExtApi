using OP_API_BUSINESS_PARTNER_SRV as BUPA_API from './external/OP_API_BUSINESS_PARTNER_SRV';
namespace service.bpProvider;
 
 
service BPService  {

  entity BusinessPartnerAddress as projection on BUPA_API.A_BusinessPartnerAddress{
     key BusinessPartner as businessPartnerId,
      AddressID as addressId,
      Country as country,
      CityName as cityName ,
      StreetName as streetName,
      PostalCode as postalCode
  };

  entity BusinessPartner as projection on BUPA_API.A_BusinessPartner{
     key BusinessPartner as businessPartnerId,
      BusinessPartnerFullName as businessPartnerName,
      to_BusinessPartnerAddress as to_BusinessPartnerAddress
  };

}