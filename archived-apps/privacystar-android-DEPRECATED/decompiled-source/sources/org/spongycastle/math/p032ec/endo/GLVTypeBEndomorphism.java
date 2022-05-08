package org.spongycastle.math.p032ec.endo;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECConstants;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECPointMap;
import org.spongycastle.math.p032ec.ScaleXPointMap;
/* renamed from: org.spongycastle.math.ec.endo.GLVTypeBEndomorphism */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/endo/GLVTypeBEndomorphism.class */
public class GLVTypeBEndomorphism implements GLVEndomorphism {
    protected final ECCurve curve;
    protected final GLVTypeBParameters parameters;
    protected final ECPointMap pointMap;

    public GLVTypeBEndomorphism(ECCurve eCCurve, GLVTypeBParameters gLVTypeBParameters) {
        this.curve = eCCurve;
        this.parameters = gLVTypeBParameters;
        this.pointMap = new ScaleXPointMap(eCCurve.fromBigInteger(gLVTypeBParameters.getBeta()));
    }

    protected BigInteger calculateB(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        boolean z = bigInteger2.signum() < 0;
        BigInteger multiply = bigInteger.multiply(bigInteger2.abs());
        boolean testBit = multiply.testBit(i - 1);
        BigInteger shiftRight = multiply.shiftRight(i);
        BigInteger bigInteger3 = shiftRight;
        if (testBit) {
            bigInteger3 = shiftRight.add(ECConstants.ONE);
        }
        BigInteger bigInteger4 = bigInteger3;
        if (z) {
            bigInteger4 = bigInteger3.negate();
        }
        return bigInteger4;
    }

    @Override // org.spongycastle.math.p032ec.endo.GLVEndomorphism
    public BigInteger[] decomposeScalar(BigInteger bigInteger) {
        int bits = this.parameters.getBits();
        BigInteger calculateB = calculateB(bigInteger, this.parameters.getG1(), bits);
        BigInteger calculateB2 = calculateB(bigInteger, this.parameters.getG2(), bits);
        GLVTypeBParameters gLVTypeBParameters = this.parameters;
        return new BigInteger[]{bigInteger.subtract(calculateB.multiply(gLVTypeBParameters.getV1A()).add(calculateB2.multiply(gLVTypeBParameters.getV2A()))), calculateB.multiply(gLVTypeBParameters.getV1B()).add(calculateB2.multiply(gLVTypeBParameters.getV2B())).negate()};
    }

    @Override // org.spongycastle.math.p032ec.endo.ECEndomorphism
    public ECPointMap getPointMap() {
        return this.pointMap;
    }

    @Override // org.spongycastle.math.p032ec.endo.ECEndomorphism
    public boolean hasEfficientPointMap() {
        return true;
    }
}
