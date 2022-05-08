package org.spongycastle.asn1.cryptopro;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters.class */
public class GOST3410ParamSetParameters extends ASN1Object {

    /* renamed from: a */
    ASN1Integer f883a;
    int keySize;

    /* renamed from: p */
    ASN1Integer f884p;

    /* renamed from: q */
    ASN1Integer f885q;

    public GOST3410ParamSetParameters(int i, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.keySize = i;
        this.f884p = new ASN1Integer(bigInteger);
        this.f885q = new ASN1Integer(bigInteger2);
        this.f883a = new ASN1Integer(bigInteger3);
    }

    public GOST3410ParamSetParameters(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.keySize = ((ASN1Integer) objects.nextElement()).getValue().intValue();
        this.f884p = (ASN1Integer) objects.nextElement();
        this.f885q = (ASN1Integer) objects.nextElement();
        this.f883a = (ASN1Integer) objects.nextElement();
    }

    public static GOST3410ParamSetParameters getInstance(Object obj) {
        if (obj == null || (obj instanceof GOST3410ParamSetParameters)) {
            return (GOST3410ParamSetParameters) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new GOST3410ParamSetParameters((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("Invalid GOST3410Parameter: " + obj.getClass().getName());
    }

    public static GOST3410ParamSetParameters getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public BigInteger getA() {
        return this.f883a.getPositiveValue();
    }

    public int getKeySize() {
        return this.keySize;
    }

    public int getLKeySize() {
        return this.keySize;
    }

    public BigInteger getP() {
        return this.f884p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f885q.getPositiveValue();
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.keySize));
        aSN1EncodableVector.add(this.f884p);
        aSN1EncodableVector.add(this.f885q);
        aSN1EncodableVector.add(this.f883a);
        return new DERSequence(aSN1EncodableVector);
    }
}
