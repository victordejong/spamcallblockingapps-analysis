package org.spongycastle.cert.ocsp;

import java.util.Date;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ocsp.ResponseData;
import org.spongycastle.asn1.ocsp.SingleResponse;
import org.spongycastle.asn1.x509.Extensions;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/ocsp/RespData.class */
public class RespData {
    private ResponseData data;

    public RespData(ResponseData responseData) {
        this.data = responseData;
    }

    public Date getProducedAt() {
        return OCSPUtils.extractDate(this.data.getProducedAt());
    }

    public RespID getResponderId() {
        return new RespID(this.data.getResponderID());
    }

    public Extensions getResponseExtensions() {
        return this.data.getResponseExtensions();
    }

    public SingleResp[] getResponses() {
        ASN1Sequence responses = this.data.getResponses();
        SingleResp[] singleRespArr = new SingleResp[responses.size()];
        for (int i = 0; i != singleRespArr.length; i++) {
            singleRespArr[i] = new SingleResp(SingleResponse.getInstance(responses.getObjectAt(i)));
        }
        return singleRespArr;
    }

    public int getVersion() {
        return this.data.getVersion().getValue().intValue() + 1;
    }
}
