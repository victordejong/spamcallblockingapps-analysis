package org.spongycastle.dvcs;

import org.spongycastle.asn1.dvcs.Data;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/dvcs/CPDRequestData.class */
public class CPDRequestData extends DVCSRequestData {
    /* JADX INFO: Access modifiers changed from: package-private */
    public CPDRequestData(Data data) throws DVCSConstructionException {
        super(data);
        initMessage();
    }

    private void initMessage() throws DVCSConstructionException {
        if (this.data.getMessage() == null) {
            throw new DVCSConstructionException("DVCSRequest.data.message should be specified for CPD service");
        }
    }

    public byte[] getMessage() {
        return this.data.getMessage().getOctets();
    }
}
