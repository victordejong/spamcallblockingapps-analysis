package org.spongycastle.asn1.dvcs;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.DigestInfo;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/dvcs/Data.class */
public class Data extends ASN1Object implements ASN1Choice {
    private ASN1Sequence certs;
    private ASN1OctetString message;
    private DigestInfo messageImprint;

    public Data(ASN1OctetString aSN1OctetString) {
        this.message = aSN1OctetString;
    }

    private Data(ASN1Sequence aSN1Sequence) {
        this.certs = aSN1Sequence;
    }

    public Data(TargetEtcChain targetEtcChain) {
        this.certs = new DERSequence(targetEtcChain);
    }

    public Data(DigestInfo digestInfo) {
        this.messageImprint = digestInfo;
    }

    public Data(byte[] bArr) {
        this.message = new DEROctetString(bArr);
    }

    public Data(TargetEtcChain[] targetEtcChainArr) {
        this.certs = new DERSequence(targetEtcChainArr);
    }

    public static Data getInstance(Object obj) {
        if (obj instanceof Data) {
            return (Data) obj;
        }
        if (obj instanceof ASN1OctetString) {
            return new Data((ASN1OctetString) obj);
        }
        if (obj instanceof ASN1Sequence) {
            return new Data(DigestInfo.getInstance(obj));
        }
        if (obj instanceof ASN1TaggedObject) {
            return new Data(ASN1Sequence.getInstance((ASN1TaggedObject) obj, false));
        }
        throw new IllegalArgumentException("Unknown object submitted to getInstance: " + obj.getClass().getName());
    }

    public static Data getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(aSN1TaggedObject.getObject());
    }

    public TargetEtcChain[] getCerts() {
        if (this.certs == null) {
            return null;
        }
        TargetEtcChain[] targetEtcChainArr = new TargetEtcChain[this.certs.size()];
        for (int i = 0; i != targetEtcChainArr.length; i++) {
            targetEtcChainArr[i] = TargetEtcChain.getInstance(this.certs.getObjectAt(i));
        }
        return targetEtcChainArr;
    }

    public ASN1OctetString getMessage() {
        return this.message;
    }

    public DigestInfo getMessageImprint() {
        return this.messageImprint;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.message != null ? this.message.toASN1Primitive() : this.messageImprint != null ? this.messageImprint.toASN1Primitive() : new DERTaggedObject(false, 0, this.certs);
    }

    public String toString() {
        if (this.message != null) {
            return "Data {\n" + this.message + "}\n";
        } else if (this.messageImprint != null) {
            return "Data {\n" + this.messageImprint + "}\n";
        } else {
            return "Data {\n" + this.certs + "}\n";
        }
    }
}
