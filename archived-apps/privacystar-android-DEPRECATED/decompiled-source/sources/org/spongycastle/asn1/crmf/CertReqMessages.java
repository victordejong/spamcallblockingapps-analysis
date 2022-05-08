package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/crmf/CertReqMessages.class */
public class CertReqMessages extends ASN1Object {
    private ASN1Sequence content;

    private CertReqMessages(ASN1Sequence aSN1Sequence) {
        this.content = aSN1Sequence;
    }

    public CertReqMessages(CertReqMsg certReqMsg) {
        this.content = new DERSequence(certReqMsg);
    }

    public CertReqMessages(CertReqMsg[] certReqMsgArr) {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        for (CertReqMsg certReqMsg : certReqMsgArr) {
            aSN1EncodableVector.add(certReqMsg);
        }
        this.content = new DERSequence(aSN1EncodableVector);
    }

    public static CertReqMessages getInstance(Object obj) {
        if (obj instanceof CertReqMessages) {
            return (CertReqMessages) obj;
        }
        if (obj != null) {
            return new CertReqMessages(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.content;
    }

    public CertReqMsg[] toCertReqMsgArray() {
        CertReqMsg[] certReqMsgArr = new CertReqMsg[this.content.size()];
        for (int i = 0; i != certReqMsgArr.length; i++) {
            certReqMsgArr[i] = CertReqMsg.getInstance(this.content.getObjectAt(i));
        }
        return certReqMsgArr;
    }
}
