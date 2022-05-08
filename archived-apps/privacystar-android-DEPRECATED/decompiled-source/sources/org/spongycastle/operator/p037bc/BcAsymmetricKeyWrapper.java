package org.spongycastle.operator.p037bc;

import java.security.SecureRandom;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.operator.AsymmetricKeyWrapper;
import org.spongycastle.operator.GenericKey;
import org.spongycastle.operator.OperatorException;
/* renamed from: org.spongycastle.operator.bc.BcAsymmetricKeyWrapper */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/bc/BcAsymmetricKeyWrapper.class */
public abstract class BcAsymmetricKeyWrapper extends AsymmetricKeyWrapper {
    private AsymmetricKeyParameter publicKey;
    private SecureRandom random;

    public BcAsymmetricKeyWrapper(AlgorithmIdentifier algorithmIdentifier, AsymmetricKeyParameter asymmetricKeyParameter) {
        super(algorithmIdentifier);
        this.publicKey = asymmetricKeyParameter;
    }

    protected abstract AsymmetricBlockCipher createAsymmetricWrapper(ASN1ObjectIdentifier aSN1ObjectIdentifier);

    @Override // org.spongycastle.operator.KeyWrapper
    public byte[] generateWrappedKey(GenericKey genericKey) throws OperatorException {
        AsymmetricBlockCipher createAsymmetricWrapper = createAsymmetricWrapper(getAlgorithmIdentifier().getAlgorithm());
        AsymmetricKeyParameter asymmetricKeyParameter = this.publicKey;
        CipherParameters cipherParameters = asymmetricKeyParameter;
        if (this.random != null) {
            cipherParameters = new ParametersWithRandom(asymmetricKeyParameter, this.random);
        }
        try {
            byte[] keyBytes = OperatorUtils.getKeyBytes(genericKey);
            createAsymmetricWrapper.init(true, cipherParameters);
            return createAsymmetricWrapper.processBlock(keyBytes, 0, keyBytes.length);
        } catch (InvalidCipherTextException e) {
            throw new OperatorException("unable to encrypt contents key", e);
        }
    }

    public BcAsymmetricKeyWrapper setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }
}
