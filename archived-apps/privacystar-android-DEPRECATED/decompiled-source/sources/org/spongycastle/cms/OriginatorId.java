package org.spongycastle.cms;

import java.math.BigInteger;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Selector;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/OriginatorId.class */
class OriginatorId implements Selector {
    private X500Name issuer;
    private BigInteger serialNumber;
    private byte[] subjectKeyId;

    public OriginatorId(X500Name x500Name, BigInteger bigInteger) {
        setIssuerAndSerial(x500Name, bigInteger);
    }

    public OriginatorId(X500Name x500Name, BigInteger bigInteger, byte[] bArr) {
        setIssuerAndSerial(x500Name, bigInteger);
        setSubjectKeyID(bArr);
    }

    public OriginatorId(byte[] bArr) {
        setSubjectKeyID(bArr);
    }

    private boolean equalsObj(Object obj, Object obj2) {
        return obj != null ? obj.equals(obj2) : obj2 == null;
    }

    private void setIssuerAndSerial(X500Name x500Name, BigInteger bigInteger) {
        this.issuer = x500Name;
        this.serialNumber = bigInteger;
    }

    private void setSubjectKeyID(byte[] bArr) {
        this.subjectKeyId = bArr;
    }

    @Override // org.spongycastle.util.Selector
    public Object clone() {
        return new OriginatorId(this.issuer, this.serialNumber, this.subjectKeyId);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof OriginatorId)) {
            return false;
        }
        OriginatorId originatorId = (OriginatorId) obj;
        boolean z = false;
        if (Arrays.areEqual(this.subjectKeyId, originatorId.subjectKeyId)) {
            z = false;
            if (equalsObj(this.serialNumber, originatorId.serialNumber)) {
                z = false;
                if (equalsObj(this.issuer, originatorId.issuer)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public X500Name getIssuer() {
        return this.issuer;
    }

    public int hashCode() {
        int hashCode = Arrays.hashCode(this.subjectKeyId);
        int i = hashCode;
        if (this.serialNumber != null) {
            i = hashCode ^ this.serialNumber.hashCode();
        }
        int i2 = i;
        if (this.issuer != null) {
            i2 = i ^ this.issuer.hashCode();
        }
        return i2;
    }

    @Override // org.spongycastle.util.Selector
    public boolean match(Object obj) {
        return false;
    }
}
