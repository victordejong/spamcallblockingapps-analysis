package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECConstants;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/ECDomainParameters.class */
public class ECDomainParameters implements ECConstants {

    /* renamed from: G */
    private ECPoint f1408G;
    private ECCurve curve;

    /* renamed from: h */
    private BigInteger f1409h;

    /* renamed from: n */
    private BigInteger f1410n;
    private byte[] seed;

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger) {
        this(eCCurve, eCPoint, bigInteger, ONE, null);
    }

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eCCurve, eCPoint, bigInteger, bigInteger2, null);
    }

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.curve = eCCurve;
        this.f1408G = eCPoint.normalize();
        this.f1410n = bigInteger;
        this.f1409h = bigInteger2;
        this.seed = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ECDomainParameters)) {
            return false;
        }
        ECDomainParameters eCDomainParameters = (ECDomainParameters) obj;
        if (!this.curve.equals(eCDomainParameters.curve) || !this.f1408G.equals(eCDomainParameters.f1408G) || !this.f1410n.equals(eCDomainParameters.f1410n) || !this.f1409h.equals(eCDomainParameters.f1409h)) {
            z = false;
        }
        return z;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public ECPoint getG() {
        return this.f1408G;
    }

    public BigInteger getH() {
        return this.f1409h;
    }

    public BigInteger getN() {
        return this.f1410n;
    }

    public byte[] getSeed() {
        return Arrays.clone(this.seed);
    }

    public int hashCode() {
        return (((((this.curve.hashCode() * 37) ^ this.f1408G.hashCode()) * 37) ^ this.f1410n.hashCode()) * 37) ^ this.f1409h.hashCode();
    }
}
