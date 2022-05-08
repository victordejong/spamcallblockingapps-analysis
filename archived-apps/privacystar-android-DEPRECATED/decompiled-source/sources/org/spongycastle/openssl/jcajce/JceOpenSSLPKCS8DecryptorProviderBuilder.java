package org.spongycastle.openssl.jcajce;

import java.io.IOException;
import java.io.InputStream;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.SecretKey;
import org.spongycastle.asn1.pkcs.EncryptionScheme;
import org.spongycastle.asn1.pkcs.KeyDerivationFunc;
import org.spongycastle.asn1.pkcs.PBEParameter;
import org.spongycastle.asn1.pkcs.PBES2Parameters;
import org.spongycastle.asn1.pkcs.PBKDF2Params;
import org.spongycastle.asn1.pkcs.PKCS12PBEParams;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.CharToByteConverter;
import org.spongycastle.jcajce.PBKDF1KeyWithParameters;
import org.spongycastle.jcajce.PKCS12KeyWithParameters;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.JcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.openssl.PEMException;
import org.spongycastle.operator.InputDecryptor;
import org.spongycastle.operator.InputDecryptorProvider;
import org.spongycastle.operator.OperatorCreationException;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder.class */
public class JceOpenSSLPKCS8DecryptorProviderBuilder {
    private JcaJceHelper helper;

    public JceOpenSSLPKCS8DecryptorProviderBuilder() {
        this.helper = new DefaultJcaJceHelper();
        this.helper = new DefaultJcaJceHelper();
    }

    public InputDecryptorProvider build(final char[] cArr) throws OperatorCreationException {
        return new InputDecryptorProvider() { // from class: org.spongycastle.openssl.jcajce.JceOpenSSLPKCS8DecryptorProviderBuilder.1
            @Override // org.spongycastle.operator.InputDecryptorProvider
            public InputDecryptor get(final AlgorithmIdentifier algorithmIdentifier) throws OperatorCreationException {
                final Cipher cipher;
                try {
                    if (PEMUtilities.isPKCS5Scheme2(algorithmIdentifier.getAlgorithm())) {
                        PBES2Parameters instance = PBES2Parameters.getInstance(algorithmIdentifier.getParameters());
                        KeyDerivationFunc keyDerivationFunc = instance.getKeyDerivationFunc();
                        EncryptionScheme encryptionScheme = instance.getEncryptionScheme();
                        PBKDF2Params pBKDF2Params = (PBKDF2Params) keyDerivationFunc.getParameters();
                        int intValue = pBKDF2Params.getIterationCount().intValue();
                        byte[] salt = pBKDF2Params.getSalt();
                        String id = encryptionScheme.getAlgorithm().getId();
                        SecretKey generateSecretKeyForPKCS5Scheme2 = PEMUtilities.generateSecretKeyForPKCS5Scheme2(JceOpenSSLPKCS8DecryptorProviderBuilder.this.helper, id, cArr, salt, intValue);
                        cipher = JceOpenSSLPKCS8DecryptorProviderBuilder.this.helper.createCipher(id);
                        AlgorithmParameters createAlgorithmParameters = JceOpenSSLPKCS8DecryptorProviderBuilder.this.helper.createAlgorithmParameters(id);
                        createAlgorithmParameters.init(encryptionScheme.getParameters().toASN1Primitive().getEncoded());
                        cipher.init(2, generateSecretKeyForPKCS5Scheme2, createAlgorithmParameters);
                    } else if (PEMUtilities.isPKCS12(algorithmIdentifier.getAlgorithm())) {
                        PKCS12PBEParams instance2 = PKCS12PBEParams.getInstance(algorithmIdentifier.getParameters());
                        cipher = JceOpenSSLPKCS8DecryptorProviderBuilder.this.helper.createCipher(algorithmIdentifier.getAlgorithm().getId());
                        cipher.init(2, new PKCS12KeyWithParameters(cArr, instance2.getIV(), instance2.getIterations().intValue()));
                    } else if (PEMUtilities.isPKCS5Scheme1(algorithmIdentifier.getAlgorithm())) {
                        PBEParameter instance3 = PBEParameter.getInstance(algorithmIdentifier.getParameters());
                        cipher = JceOpenSSLPKCS8DecryptorProviderBuilder.this.helper.createCipher(algorithmIdentifier.getAlgorithm().getId());
                        cipher.init(2, new PBKDF1KeyWithParameters(cArr, new CharToByteConverter() { // from class: org.spongycastle.openssl.jcajce.JceOpenSSLPKCS8DecryptorProviderBuilder.1.1
                            @Override // org.spongycastle.crypto.CharToByteConverter
                            public byte[] convert(char[] cArr2) {
                                return Strings.toByteArray(cArr2);
                            }

                            @Override // org.spongycastle.crypto.CharToByteConverter
                            public String getType() {
                                return "ASCII";
                            }
                        }, instance3.getSalt(), instance3.getIterationCount().intValue()));
                    } else {
                        throw new PEMException("Unknown algorithm: " + algorithmIdentifier.getAlgorithm());
                    }
                    return new InputDecryptor() { // from class: org.spongycastle.openssl.jcajce.JceOpenSSLPKCS8DecryptorProviderBuilder.1.2
                        @Override // org.spongycastle.operator.InputDecryptor
                        public AlgorithmIdentifier getAlgorithmIdentifier() {
                            return algorithmIdentifier;
                        }

                        @Override // org.spongycastle.operator.InputDecryptor
                        public InputStream getInputStream(InputStream inputStream) {
                            return new CipherInputStream(inputStream, cipher);
                        }
                    };
                } catch (IOException e) {
                    throw new OperatorCreationException(algorithmIdentifier.getAlgorithm() + " not available: " + e.getMessage(), e);
                } catch (GeneralSecurityException e2) {
                    throw new OperatorCreationException(algorithmIdentifier.getAlgorithm() + " not available: " + e2.getMessage(), e2);
                }
            }
        };
    }

    public JceOpenSSLPKCS8DecryptorProviderBuilder setProvider(String str) {
        this.helper = new NamedJcaJceHelper(str);
        return this;
    }

    public JceOpenSSLPKCS8DecryptorProviderBuilder setProvider(Provider provider) {
        this.helper = new ProviderJcaJceHelper(provider);
        return this;
    }
}
