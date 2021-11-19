const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { BusinessPartner, BusinessPartnerAddress } = this.entities;
    const service = await cds.connect.to('OP_API_BUSINESS_PARTNER_SRV');
    
	this.on('READ', BusinessPartnerAddress, request => {
		return service.tx(request).run(request.query);
	});
	this.on('READ', BusinessPartner, request => {
		return service.tx(request).run(request.query);
	});
});