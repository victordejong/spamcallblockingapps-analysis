package org.spongycastle.crypto.p026ec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.math.p032ec.ECMultiplier;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.math.p032ec.FixedPointCombMultiplier;
/* renamed from: org.spongycastle.crypto.ec.ECNewRandomnessTransform */
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/ec/ECNewRandomnessTransform.class */
public class ECNewRandomnessTransform implements ECPairFactorTransform {
    private ECPublicKeyParameters key;
    private BigInteger lastK;
    private SecureRandom random;

    protected ECMultiplier createBasePointMultiplier() {
        return new FixedPointCombMultiplier();
    }

    @Override // org.spongycastle.crypto.p026ec.ECPairFactorTransform
    public BigInteger getTransformValue() {
        return this.lastK;
    }

    @Override // org.spongycastle.crypto.p026ec.ECPairTransform
    public void init(CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            if (!(parametersWithRandom.getParameters() instanceof ECPublicKeyParameters)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for new randomness transform.");
            }
            this.key = (ECPublicKeyParameters) parametersWithRandom.getParameters();
            this.random = parametersWithRandom.getRandom();
        } else if (!(cipherParameters instanceof ECPublicKeyParameters)) {
            throw new IllegalArgumentException("ECPublicKeyParameters are required for new randomness transform.");
        } else {
            this.key = (ECPublicKeyParameters) cipherParameters;
            this.random = new SecureRandom();
        }
    }

    @Override // org.spongycastle.crypto.p026ec.ECPairTransform
    public ECPair transform(ECPair eCPair) {
        if (this.key == null) {
            throw new IllegalStateException("ECNewRandomnessTransform not initialised");
        }
        ECDomainParameters parameters = this.key.getParameters();
        BigInteger n = parameters.getN();
        ECMultiplier createBasePointMultiplier = createBasePointMultiplier();
        BigInteger generateK = ECUtil.generateK(n, this.random);
        ECPoint[] eCPointArr = {createBasePointMultiplier.multiply(parameters.getG(), generateK).add(eCPair.getX()), this.key.getQ().multiply(generateK).add(eCPair.getY())};
        parameters.getCurve().normalizeAll(eCPointArr);
        this.lastK = generateK;
        return new ECPair(eCPointArr[0], eCPointArr[1]);
    }
}
