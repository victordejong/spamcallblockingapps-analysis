package org.spongycastle.asn1.cmc;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cmc/BodyPartID.class */
public class BodyPartID extends ASN1Object {
    public static final long bodyIdMax = 4294967295L;

    /* renamed from: id */
    private final long f872id;

    public BodyPartID(long j) {
        if (j < 0 || j > bodyIdMax) {
            throw new IllegalArgumentException("id out of range");
        }
        this.f872id = j;
    }

    private BodyPartID(ASN1Integer aSN1Integer) {
        this(convert(aSN1Integer.getValue()));
    }

    private static long convert(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 32) {
            return bigInteger.longValue();
        }
        throw new IllegalArgumentException("id out of range");
    }

    public static BodyPartID getInstance(Object obj) {
        if (obj instanceof BodyPartID) {
            return (BodyPartID) obj;
        }
        if (obj != null) {
            return new BodyPartID(ASN1Integer.getInstance(obj));
        }
        return null;
    }

    public long getID() {
        return this.f872id;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new ASN1Integer(this.f872id);
    }
}
