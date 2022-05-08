package org.spongycastle.openpgp.operator.p035bc;

import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.bcpg.ECDHPublicBCPGKey;
import org.spongycastle.bcpg.MPInteger;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.EphemeralKeyPair;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.KeyEncoder;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.generators.ECKeyPairGenerator;
import org.spongycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.operator.PGPPad;
import org.spongycastle.openpgp.operator.PublicKeyKeyEncryptionMethodGenerator;
import org.spongycastle.openpgp.operator.RFC6637Utils;
/* renamed from: org.spongycastle.openpgp.operator.bc.BcPublicKeyKeyEncryptionMethodGenerator */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator.class */
public class BcPublicKeyKeyEncryptionMethodGenerator extends PublicKeyKeyEncryptionMethodGenerator {
    private BcPGPKeyConverter keyConverter = new BcPGPKeyConverter();
    private SecureRandom random;

    public BcPublicKeyKeyEncryptionMethodGenerator(PGPPublicKey pGPPublicKey) {
        super(pGPPublicKey);
    }

    @Override // org.spongycastle.openpgp.operator.PublicKeyKeyEncryptionMethodGenerator
    protected byte[] encryptSessionInfo(PGPPublicKey pGPPublicKey, byte[] bArr) throws PGPException {
        try {
            if (pGPPublicKey.getAlgorithm() != 18) {
                AsymmetricBlockCipher createPublicKeyCipher = BcImplProvider.createPublicKeyCipher(pGPPublicKey.getAlgorithm());
                AsymmetricKeyParameter publicKey = this.keyConverter.getPublicKey(pGPPublicKey);
                if (this.random == null) {
                    this.random = new SecureRandom();
                }
                createPublicKeyCipher.init(true, new ParametersWithRandom(publicKey, this.random));
                return createPublicKeyCipher.processBlock(bArr, 0, bArr.length);
            }
            ECDHPublicBCPGKey eCDHPublicBCPGKey = (ECDHPublicBCPGKey) pGPPublicKey.getPublicKeyPacket().getKey();
            X9ECParameters x9Parameters = BcUtil.getX9Parameters(eCDHPublicBCPGKey.getCurveOID());
            ECDomainParameters eCDomainParameters = new ECDomainParameters(x9Parameters.getCurve(), x9Parameters.getG(), x9Parameters.getN());
            ECKeyPairGenerator eCKeyPairGenerator = new ECKeyPairGenerator();
            eCKeyPairGenerator.init(new ECKeyGenerationParameters(eCDomainParameters, this.random));
            EphemeralKeyPair generate = new EphemeralKeyPairGenerator(eCKeyPairGenerator, new KeyEncoder() { // from class: org.spongycastle.openpgp.operator.bc.BcPublicKeyKeyEncryptionMethodGenerator.1
                @Override // org.spongycastle.crypto.KeyEncoder
                public byte[] getEncoded(AsymmetricKeyParameter asymmetricKeyParameter) {
                    return ((ECPublicKeyParameters) asymmetricKeyParameter).getQ().getEncoded(false);
                }
            }).generate();
            KeyParameter keyParameter = new KeyParameter(new RFC6637KDFCalculator(new BcPGPDigestCalculatorProvider().get(eCDHPublicBCPGKey.getHashAlgorithm()), eCDHPublicBCPGKey.getSymmetricKeyAlgorithm()).createKey(BcUtil.decodePoint(eCDHPublicBCPGKey.getEncodedPoint(), x9Parameters.getCurve()).multiply(((ECPrivateKeyParameters) generate.getKeyPair().getPrivate()).getD()).normalize(), RFC6637Utils.createUserKeyingMaterial(pGPPublicKey.getPublicKeyPacket(), new BcKeyFingerprintCalculator())));
            Wrapper createWrapper = BcImplProvider.createWrapper(eCDHPublicBCPGKey.getSymmetricKeyAlgorithm());
            createWrapper.init(true, new ParametersWithRandom(keyParameter, this.random));
            byte[] padSessionData = PGPPad.padSessionData(bArr);
            byte[] wrap = createWrapper.wrap(padSessionData, 0, padSessionData.length);
            byte[] encoded = new MPInteger(new BigInteger(1, generate.getEncodedPublicKey())).getEncoded();
            byte[] bArr2 = new byte[encoded.length + 1 + wrap.length];
            System.arraycopy(encoded, 0, bArr2, 0, encoded.length);
            bArr2[encoded.length] = (byte) wrap.length;
            System.arraycopy(wrap, 0, bArr2, encoded.length + 1, wrap.length);
            return bArr2;
        } catch (IOException e) {
            throw new PGPException("exception encrypting session info: " + e.getMessage(), e);
        } catch (InvalidCipherTextException e2) {
            throw new PGPException("exception encrypting session info: " + e2.getMessage(), e2);
        }
    }

    public BcPublicKeyKeyEncryptionMethodGenerator setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }
}
