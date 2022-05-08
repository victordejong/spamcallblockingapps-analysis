package org.spongycastle.crypto.agreement;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.ParametersWithUKM;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.util.BigIntegers;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/agreement/ECVKOAgreement.class */
public class ECVKOAgreement {
    private final Digest digest;
    private ECPrivateKeyParameters key;
    private BigInteger ukm;

    public ECVKOAgreement(Digest digest) {
        this.digest = digest;
    }

    private byte[] fromPoint(ECPoint eCPoint) {
        BigInteger bigInteger = eCPoint.getAffineXCoord().toBigInteger();
        BigInteger bigInteger2 = eCPoint.getAffineYCoord().toBigInteger();
        int i = bigInteger.toByteArray().length > 33 ? 64 : 32;
        byte[] bArr = new byte[i * 2];
        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(i, bigInteger);
        byte[] asUnsignedByteArray2 = BigIntegers.asUnsignedByteArray(i, bigInteger2);
        for (int i2 = 0; i2 != i; i2++) {
            bArr[i2] = asUnsignedByteArray[(i - i2) - 1];
        }
        for (int i3 = 0; i3 != i; i3++) {
            bArr[i + i3] = asUnsignedByteArray2[(i - i3) - 1];
        }
        this.digest.update(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr2, 0);
        return bArr2;
    }

    private static BigInteger toInteger(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i != bArr2.length; i++) {
            bArr2[i] = bArr[(bArr.length - i) - 1];
        }
        return new BigInteger(1, bArr2);
    }

    public byte[] calculateAgreement(CipherParameters cipherParameters) {
        ECPublicKeyParameters eCPublicKeyParameters = (ECPublicKeyParameters) cipherParameters;
        ECDomainParameters parameters = eCPublicKeyParameters.getParameters();
        if (!parameters.equals(this.key.getParameters())) {
            throw new IllegalStateException("ECVKO public key has wrong domain parameters");
        }
        ECPoint normalize = eCPublicKeyParameters.getQ().multiply(parameters.getH().multiply(this.ukm).multiply(this.key.getD()).mod(parameters.getN())).normalize();
        if (!normalize.isInfinity()) {
            return fromPoint(normalize.normalize());
        }
        throw new IllegalStateException("Infinity is not a valid agreement value for ECVKO");
    }

    public int getFieldSize() {
        return (this.key.getParameters().getCurve().getFieldSize() + 7) / 8;
    }

    public void init(CipherParameters cipherParameters) {
        ParametersWithUKM parametersWithUKM = (ParametersWithUKM) cipherParameters;
        this.key = (ECPrivateKeyParameters) parametersWithUKM.getParameters();
        this.ukm = toInteger(parametersWithUKM.getUKM());
    }
}
