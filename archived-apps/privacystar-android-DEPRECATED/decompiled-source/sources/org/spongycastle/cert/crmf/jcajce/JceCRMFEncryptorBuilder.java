package org.spongycastle.cert.crmf.jcajce;

import java.io.OutputStream;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cert.crmf.CRMFException;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.operator.DefaultSecretKeySizeProvider;
import org.spongycastle.operator.GenericKey;
import org.spongycastle.operator.OutputEncryptor;
import org.spongycastle.operator.SecretKeySizeProvider;
import org.spongycastle.operator.jcajce.JceGenericKey;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder.class */
public class JceCRMFEncryptorBuilder {
    private static final SecretKeySizeProvider KEY_SIZE_PROVIDER = DefaultSecretKeySizeProvider.INSTANCE;
    private final ASN1ObjectIdentifier encryptionOID;
    private CRMFHelper helper;
    private final int keySize;
    private SecureRandom random;

    /* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor.class */
    private class CRMFOutputEncryptor implements OutputEncryptor {
        private AlgorithmIdentifier algorithmIdentifier;
        private Cipher cipher;
        private SecretKey encKey;

        CRMFOutputEncryptor(ASN1ObjectIdentifier aSN1ObjectIdentifier, int i, SecureRandom secureRandom) throws CRMFException {
            KeyGenerator createKeyGenerator = JceCRMFEncryptorBuilder.this.helper.createKeyGenerator(aSN1ObjectIdentifier);
            SecureRandom secureRandom2 = secureRandom == null ? new SecureRandom() : secureRandom;
            int keySize = i < 0 ? JceCRMFEncryptorBuilder.KEY_SIZE_PROVIDER.getKeySize(aSN1ObjectIdentifier) : i;
            if (keySize < 0) {
                createKeyGenerator.init(secureRandom2);
            } else {
                createKeyGenerator.init(keySize, secureRandom2);
            }
            this.cipher = JceCRMFEncryptorBuilder.this.helper.createCipher(aSN1ObjectIdentifier);
            this.encKey = createKeyGenerator.generateKey();
            AlgorithmParameters generateParameters = JceCRMFEncryptorBuilder.this.helper.generateParameters(aSN1ObjectIdentifier, this.encKey, secureRandom2);
            try {
                this.cipher.init(1, this.encKey, generateParameters, secureRandom2);
                this.algorithmIdentifier = JceCRMFEncryptorBuilder.this.helper.getAlgorithmIdentifier(aSN1ObjectIdentifier, generateParameters == null ? this.cipher.getParameters() : generateParameters);
            } catch (GeneralSecurityException e) {
                throw new CRMFException("unable to initialize cipher: " + e.getMessage(), e);
            }
        }

        @Override // org.spongycastle.operator.OutputEncryptor
        public AlgorithmIdentifier getAlgorithmIdentifier() {
            return this.algorithmIdentifier;
        }

        @Override // org.spongycastle.operator.OutputEncryptor
        public GenericKey getKey() {
            return new JceGenericKey(this.algorithmIdentifier, this.encKey);
        }

        @Override // org.spongycastle.operator.OutputEncryptor
        public OutputStream getOutputStream(OutputStream outputStream) {
            return new CipherOutputStream(outputStream, this.cipher);
        }
    }

    public JceCRMFEncryptorBuilder(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this(aSN1ObjectIdentifier, -1);
    }

    public JceCRMFEncryptorBuilder(ASN1ObjectIdentifier aSN1ObjectIdentifier, int i) {
        this.helper = new CRMFHelper(new DefaultJcaJceHelper());
        this.encryptionOID = aSN1ObjectIdentifier;
        this.keySize = i;
    }

    public OutputEncryptor build() throws CRMFException {
        return new CRMFOutputEncryptor(this.encryptionOID, this.keySize, this.random);
    }

    public JceCRMFEncryptorBuilder setProvider(String str) {
        this.helper = new CRMFHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JceCRMFEncryptorBuilder setProvider(Provider provider) {
        this.helper = new CRMFHelper(new ProviderJcaJceHelper(provider));
        return this;
    }

    public JceCRMFEncryptorBuilder setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }
}
