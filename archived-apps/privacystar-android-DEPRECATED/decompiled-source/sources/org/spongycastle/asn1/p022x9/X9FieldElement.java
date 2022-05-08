package org.spongycastle.asn1.p022x9;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.math.p032ec.ECFieldElement;
/* renamed from: org.spongycastle.asn1.x9.X9FieldElement */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x9/X9FieldElement.class */
public class X9FieldElement extends ASN1Object {
    private static X9IntegerConverter converter = new X9IntegerConverter();

    /* renamed from: f */
    protected ECFieldElement f965f;

    public X9FieldElement(int i, int i2, int i3, int i4, ASN1OctetString aSN1OctetString) {
        this(new ECFieldElement.F2m(i, i2, i3, i4, new BigInteger(1, aSN1OctetString.getOctets())));
    }

    public X9FieldElement(BigInteger bigInteger, ASN1OctetString aSN1OctetString) {
        this(new ECFieldElement.C2402Fp(bigInteger, new BigInteger(1, aSN1OctetString.getOctets())));
    }

    public X9FieldElement(ECFieldElement eCFieldElement) {
        this.f965f = eCFieldElement;
    }

    public ECFieldElement getValue() {
        return this.f965f;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DEROctetString(converter.integerToBytes(this.f965f.toBigInteger(), converter.getByteLength(this.f965f)));
    }
}
