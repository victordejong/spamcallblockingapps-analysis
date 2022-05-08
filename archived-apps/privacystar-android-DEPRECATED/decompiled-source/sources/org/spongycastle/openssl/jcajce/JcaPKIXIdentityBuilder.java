package org.spongycastle.openssl.jcajce;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.cert.jcajce.JcaX509CertificateConverter;
import org.spongycastle.openssl.PEMKeyPair;
import org.spongycastle.openssl.PEMParser;
import org.spongycastle.pkix.jcajce.JcaPKIXIdentity;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/jcajce/JcaPKIXIdentityBuilder.class */
public class JcaPKIXIdentityBuilder {
    private JcaPEMKeyConverter keyConverter = new JcaPEMKeyConverter();
    private JcaX509CertificateConverter certConverter = new JcaX509CertificateConverter();

    private void checkFile(File file) throws IOException {
        if (!file.canRead()) {
            return;
        }
        if (file.exists()) {
            throw new IOException("Unable to open file " + file.getPath() + " for reading.");
        }
        throw new FileNotFoundException("Unable to open " + file.getPath() + ": it does not exist.");
    }

    public JcaPKIXIdentity build(File file, File file2) throws IOException, CertificateException {
        checkFile(file);
        checkFile(file2);
        FileInputStream fileInputStream = new FileInputStream(file);
        FileInputStream fileInputStream2 = new FileInputStream(file2);
        JcaPKIXIdentity build = build(fileInputStream, fileInputStream2);
        fileInputStream.close();
        fileInputStream2.close();
        return build;
    }

    public JcaPKIXIdentity build(InputStream inputStream, InputStream inputStream2) throws IOException, CertificateException {
        PrivateKey privateKey;
        Object readObject = new PEMParser(new InputStreamReader(inputStream)).readObject();
        if (readObject instanceof PEMKeyPair) {
            privateKey = this.keyConverter.getPrivateKey(((PEMKeyPair) readObject).getPrivateKeyInfo());
        } else if (readObject instanceof PrivateKeyInfo) {
            privateKey = this.keyConverter.getPrivateKey((PrivateKeyInfo) readObject);
        } else {
            throw new IOException("unrecognised private key file");
        }
        PEMParser pEMParser = new PEMParser(new InputStreamReader(inputStream2));
        ArrayList arrayList = new ArrayList();
        while (true) {
            Object readObject2 = pEMParser.readObject();
            if (readObject2 == null) {
                return new JcaPKIXIdentity(privateKey, (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]));
            }
            arrayList.add(this.certConverter.getCertificate((X509CertificateHolder) readObject2));
        }
    }

    public JcaPKIXIdentityBuilder setProvider(String str) {
        this.keyConverter = this.keyConverter.setProvider(str);
        this.certConverter = this.certConverter.setProvider(str);
        return this;
    }

    public JcaPKIXIdentityBuilder setProvider(Provider provider) {
        this.keyConverter = this.keyConverter.setProvider(provider);
        this.certConverter = this.certConverter.setProvider(provider);
        return this;
    }
}
