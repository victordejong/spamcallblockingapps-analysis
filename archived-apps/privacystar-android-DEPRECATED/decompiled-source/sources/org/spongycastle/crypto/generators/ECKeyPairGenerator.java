package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.math.p032ec.ECConstants;
import org.spongycastle.math.p032ec.ECMultiplier;
import org.spongycastle.math.p032ec.FixedPointCombMultiplier;
import org.spongycastle.math.p032ec.WNafUtil;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/ECKeyPairGenerator.class */
public class ECKeyPairGenerator implements AsymmetricCipherKeyPairGenerator, ECConstants {
    ECDomainParameters params;
    SecureRandom random;

    protected ECMultiplier createBasePointMultiplier() {
        return new FixedPointCombMultiplier();
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        BigInteger n = this.params.getN();
        int bitLength = n.bitLength();
        while (true) {
            BigInteger bigInteger = new BigInteger(bitLength, this.random);
            if (bigInteger.compareTo(TWO) >= 0 && bigInteger.compareTo(n) < 0 && WNafUtil.getNafWeight(bigInteger) >= (bitLength >>> 2)) {
                return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new ECPublicKeyParameters(createBasePointMultiplier().multiply(this.params.getG(), bigInteger), this.params), (AsymmetricKeyParameter) new ECPrivateKeyParameters(bigInteger, this.params));
            }
        }
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        ECKeyGenerationParameters eCKeyGenerationParameters = (ECKeyGenerationParameters) keyGenerationParameters;
        this.random = eCKeyGenerationParameters.getRandom();
        this.params = eCKeyGenerationParameters.getDomainParameters();
        if (this.random == null) {
            this.random = new SecureRandom();
        }
    }
}
