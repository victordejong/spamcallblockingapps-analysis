package org.spongycastle.jcajce.provider.symmetric.util;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator.class */
public class BaseKeyGenerator extends KeyGeneratorSpi {
    protected String algName;
    protected int defaultKeySize;
    protected CipherKeyGenerator engine;
    protected int keySize;
    protected boolean uninitialised = true;

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseKeyGenerator(String str, int i, CipherKeyGenerator cipherKeyGenerator) {
        this.algName = str;
        this.defaultKeySize = i;
        this.keySize = i;
        this.engine = cipherKeyGenerator;
    }

    @Override // javax.crypto.KeyGeneratorSpi
    protected SecretKey engineGenerateKey() {
        if (this.uninitialised) {
            this.engine.init(new KeyGenerationParameters(new SecureRandom(), this.defaultKeySize));
            this.uninitialised = false;
        }
        return new SecretKeySpec(this.engine.generateKey(), this.algName);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.crypto.KeyGeneratorSpi
    public void engineInit(int i, SecureRandom secureRandom) {
        SecureRandom secureRandom2 = secureRandom;
        if (secureRandom == null) {
            try {
                secureRandom2 = new SecureRandom();
            } catch (IllegalArgumentException e) {
                throw new InvalidParameterException(e.getMessage());
            }
        }
        this.engine.init(new KeyGenerationParameters(secureRandom2, i));
        this.uninitialised = false;
    }

    @Override // javax.crypto.KeyGeneratorSpi
    protected void engineInit(SecureRandom secureRandom) {
        if (secureRandom != null) {
            this.engine.init(new KeyGenerationParameters(secureRandom, this.defaultKeySize));
            this.uninitialised = false;
        }
    }

    @Override // javax.crypto.KeyGeneratorSpi
    protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("Not Implemented");
    }
}
