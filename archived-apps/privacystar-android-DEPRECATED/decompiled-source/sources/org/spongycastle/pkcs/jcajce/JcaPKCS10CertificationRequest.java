package org.spongycastle.pkcs.jcajce;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.Hashtable;
import org.spongycastle.asn1.p022x9.X9ObjectIdentifiers;
import org.spongycastle.asn1.pkcs.CertificationRequest;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.JcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.pkcs.PKCS10CertificationRequest;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkcs/jcajce/JcaPKCS10CertificationRequest.class */
public class JcaPKCS10CertificationRequest extends PKCS10CertificationRequest {
    private static Hashtable keyAlgorithms = new Hashtable();
    private JcaJceHelper helper = new DefaultJcaJceHelper();

    static {
        keyAlgorithms.put(PKCSObjectIdentifiers.rsaEncryption, "RSA");
        keyAlgorithms.put(X9ObjectIdentifiers.id_dsa, "DSA");
    }

    public JcaPKCS10CertificationRequest(CertificationRequest certificationRequest) {
        super(certificationRequest);
    }

    public JcaPKCS10CertificationRequest(PKCS10CertificationRequest pKCS10CertificationRequest) {
        super(pKCS10CertificationRequest.toASN1Structure());
    }

    public JcaPKCS10CertificationRequest(byte[] bArr) throws IOException {
        super(bArr);
    }

    public PublicKey getPublicKey() throws InvalidKeyException, NoSuchAlgorithmException {
        KeyFactory keyFactory;
        try {
            SubjectPublicKeyInfo subjectPublicKeyInfo = getSubjectPublicKeyInfo();
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(subjectPublicKeyInfo.getEncoded());
            try {
                keyFactory = this.helper.createKeyFactory(subjectPublicKeyInfo.getAlgorithm().getAlgorithm().getId());
            } catch (NoSuchAlgorithmException e) {
                if (keyAlgorithms.get(subjectPublicKeyInfo.getAlgorithm().getAlgorithm()) != null) {
                    keyFactory = this.helper.createKeyFactory((String) keyAlgorithms.get(subjectPublicKeyInfo.getAlgorithm().getAlgorithm()));
                } else {
                    throw e;
                }
            }
            return keyFactory.generatePublic(x509EncodedKeySpec);
        } catch (IOException e2) {
            throw new InvalidKeyException("error extracting key encoding");
        } catch (NoSuchProviderException e3) {
            throw new NoSuchAlgorithmException("cannot find provider: " + e3.getMessage());
        } catch (InvalidKeySpecException e4) {
            throw new InvalidKeyException("error decoding public key");
        }
    }

    public JcaPKCS10CertificationRequest setProvider(String str) {
        this.helper = new NamedJcaJceHelper(str);
        return this;
    }

    public JcaPKCS10CertificationRequest setProvider(Provider provider) {
        this.helper = new ProviderJcaJceHelper(provider);
        return this;
    }
}
