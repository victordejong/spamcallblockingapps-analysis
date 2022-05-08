package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.util.encoders.Hex;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP160R2Curve */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP160R2Curve.class */
public class SecP160R2Curve extends ECCurve.AbstractFp {
    private static final int SecP160R2_DEFAULT_COORDS = 2;

    /* renamed from: q */
    public static final BigInteger f1579q = new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"));
    protected SecP160R2Point infinity = new SecP160R2Point(this, null, null);

    public SecP160R2Curve() {
        super(f1579q);
        this.f1536a = fromBigInteger(new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC70")));
        this.f1537b = fromBigInteger(new BigInteger(1, Hex.decode("B4E134D3FB59EB8BAB57274904664D5AF50388BA")));
        this.order = new BigInteger(1, Hex.decode("0100000000000000000000351EE786A818F3A1A16B"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecP160R2Curve();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP160R2Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecP160R2Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP160R2FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public int getFieldSize() {
        return f1579q.bitLength();
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f1579q;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public boolean supportsCoordinateSystem(int i) {
        return i == 2;
    }
}
