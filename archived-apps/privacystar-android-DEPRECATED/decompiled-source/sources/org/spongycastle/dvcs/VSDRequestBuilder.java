package org.spongycastle.dvcs;

import java.io.IOException;
import java.util.Date;
import org.spongycastle.asn1.dvcs.DVCSRequestInformationBuilder;
import org.spongycastle.asn1.dvcs.DVCSTime;
import org.spongycastle.asn1.dvcs.Data;
import org.spongycastle.asn1.dvcs.ServiceType;
import org.spongycastle.cms.CMSSignedData;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/dvcs/VSDRequestBuilder.class */
public class VSDRequestBuilder extends DVCSRequestBuilder {
    public VSDRequestBuilder() {
        super(new DVCSRequestInformationBuilder(ServiceType.VSD));
    }

    public DVCSRequest build(CMSSignedData cMSSignedData) throws DVCSException {
        try {
            return createDVCRequest(new Data(cMSSignedData.getEncoded()));
        } catch (IOException e) {
            throw new DVCSException("Failed to encode CMS signed data", e);
        }
    }

    public void setRequestTime(Date date) {
        this.requestInformationBuilder.setRequestTime(new DVCSTime(date));
    }
}
