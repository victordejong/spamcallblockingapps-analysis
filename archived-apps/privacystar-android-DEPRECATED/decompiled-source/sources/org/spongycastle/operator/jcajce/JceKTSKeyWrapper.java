package org.spongycastle.operator.jcajce;

import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import javax.crypto.Cipher;
import org.spongycastle.asn1.cms.GenericHybridParameters;
import org.spongycastle.asn1.cms.RsaKemParameters;
import org.spongycastle.asn1.iso.ISOIECObjectIdentifiers;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.p022x9.X9ObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.util.DEROtherInfo;
import org.spongycastle.jcajce.spec.KTSParameterSpec;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.operator.AsymmetricKeyWrapper;
import org.spongycastle.operator.GenericKey;
import org.spongycastle.operator.OperatorException;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/jcajce/JceKTSKeyWrapper.class */
public class JceKTSKeyWrapper extends AsymmetricKeyWrapper {
    private OperatorHelper helper;
    private final int keySizeInBits;
    private final byte[] partyUInfo;
    private final byte[] partyVInfo;
    private PublicKey publicKey;
    private SecureRandom random;
    private final String symmetricWrappingAlg;

    public JceKTSKeyWrapper(PublicKey publicKey, String str, int i, byte[] bArr, byte[] bArr2) {
        super(new AlgorithmIdentifier(PKCSObjectIdentifiers.id_rsa_KEM, new GenericHybridParameters(new AlgorithmIdentifier(ISOIECObjectIdentifiers.id_kem_rsa, new RsaKemParameters(new AlgorithmIdentifier(X9ObjectIdentifiers.id_kdf_kdf3, new AlgorithmIdentifier(NISTObjectIdentifiers.id_sha256)), (i + 7) / 8)), JceSymmetricKeyWrapper.determineKeyEncAlg(str, i))));
        this.helper = new OperatorHelper(new DefaultJcaJceHelper());
        this.publicKey = publicKey;
        this.symmetricWrappingAlg = str;
        this.keySizeInBits = i;
        this.partyUInfo = Arrays.clone(bArr);
        this.partyVInfo = Arrays.clone(bArr2);
    }

    public JceKTSKeyWrapper(X509Certificate x509Certificate, String str, int i, byte[] bArr, byte[] bArr2) {
        this(x509Certificate.getPublicKey(), str, i, bArr, bArr2);
    }

    @Override // org.spongycastle.operator.KeyWrapper
    public byte[] generateWrappedKey(GenericKey genericKey) throws OperatorException {
        Cipher createAsymmetricWrapper = this.helper.createAsymmetricWrapper(getAlgorithmIdentifier().getAlgorithm(), new HashMap());
        try {
            createAsymmetricWrapper.init(3, this.publicKey, new KTSParameterSpec.Builder(this.symmetricWrappingAlg, this.keySizeInBits, new DEROtherInfo.Builder(JceSymmetricKeyWrapper.determineKeyEncAlg(this.symmetricWrappingAlg, this.keySizeInBits), this.partyUInfo, this.partyVInfo).build().getEncoded()).build(), this.random);
            return createAsymmetricWrapper.wrap(OperatorUtils.getJceKey(genericKey));
        } catch (Exception e) {
            throw new OperatorException("Unable to wrap contents key: " + e.getMessage(), e);
        }
    }

    public JceKTSKeyWrapper setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JceKTSKeyWrapper setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }

    public JceKTSKeyWrapper setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }
}
