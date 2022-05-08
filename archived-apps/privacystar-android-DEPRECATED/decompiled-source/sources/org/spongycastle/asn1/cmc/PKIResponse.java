package org.spongycastle.asn1.cmc;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cmc/PKIResponse.class */
public class PKIResponse extends ASN1Object {
    private final ASN1Sequence cmsSequence;
    private final ASN1Sequence controlSequence;
    private final ASN1Sequence otherMsgSequence;

    private PKIResponse(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.controlSequence = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(0));
        this.cmsSequence = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(1));
        this.otherMsgSequence = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(2));
    }

    public static PKIResponse getInstance(Object obj) {
        if (obj instanceof PKIResponse) {
            return (PKIResponse) obj;
        }
        if (obj != null) {
            return new PKIResponse(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static PKIResponse getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public ASN1Sequence getCmsSequence() {
        return this.cmsSequence;
    }

    public ASN1Sequence getControlSequence() {
        return this.controlSequence;
    }

    public ASN1Sequence getOtherMsgSequence() {
        return this.otherMsgSequence;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.controlSequence);
        aSN1EncodableVector.add(this.cmsSequence);
        aSN1EncodableVector.add(this.otherMsgSequence);
        return new DERSequence(aSN1EncodableVector);
    }
}
