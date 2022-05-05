package p000a.p001a.p002a.p003a.p004a.p010e;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.HashMap;
/* renamed from: a.a.a.a.a.e.k */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/k.class */
final class C0104k {

    /* renamed from: a */
    final KeyStore f201a;

    /* renamed from: b */
    private final HashMap<Principal, X509Certificate> f202b;

    public C0104k(InputStream inputStream, String str) {
        KeyStore a = m10195a(inputStream, str);
        this.f202b = m10194a(a);
        this.f201a = a;
    }

    /* renamed from: a */
    private static KeyStore m10195a(InputStream inputStream, String str) {
        try {
            KeyStore instance = KeyStore.getInstance("BKS");
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                instance.load(bufferedInputStream, str.toCharArray());
                return instance;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        } catch (KeyStoreException e2) {
            throw new AssertionError(e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new AssertionError(e3);
        } catch (CertificateException e4) {
            throw new AssertionError(e4);
        }
    }

    /* renamed from: a */
    private static HashMap<Principal, X509Certificate> m10194a(KeyStore keyStore) {
        try {
            HashMap<Principal, X509Certificate> hashMap = new HashMap<>();
            Enumeration<String> aliases = keyStore.aliases();
            while (aliases.hasMoreElements()) {
                X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(aliases.nextElement());
                if (x509Certificate != null) {
                    hashMap.put(x509Certificate.getSubjectX500Principal(), x509Certificate);
                }
            }
            return hashMap;
        } catch (KeyStoreException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public final boolean m10193a(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2 = this.f202b.get(x509Certificate.getSubjectX500Principal());
        return x509Certificate2 != null && x509Certificate2.getPublicKey().equals(x509Certificate.getPublicKey());
    }

    /* renamed from: b */
    public final X509Certificate m10192b(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2 = this.f202b.get(x509Certificate.getIssuerX500Principal());
        if (x509Certificate2 == null || x509Certificate2.getSubjectX500Principal().equals(x509Certificate.getSubjectX500Principal())) {
            return null;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return x509Certificate2;
        } catch (GeneralSecurityException e) {
            return null;
        }
    }
}
