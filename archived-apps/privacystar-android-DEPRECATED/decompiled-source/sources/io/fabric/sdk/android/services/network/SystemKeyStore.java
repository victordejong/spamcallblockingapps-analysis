package io.fabric.sdk.android.services.network;

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
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/network/SystemKeyStore.class */
class SystemKeyStore {
    private final HashMap<Principal, X509Certificate> trustRoots;
    final KeyStore trustStore;

    public SystemKeyStore(InputStream inputStream, String str) {
        KeyStore trustStore = getTrustStore(inputStream, str);
        this.trustRoots = initializeTrustedRoots(trustStore);
        this.trustStore = trustStore;
    }

    private KeyStore getTrustStore(InputStream inputStream, String str) {
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

    private HashMap<Principal, X509Certificate> initializeTrustedRoots(KeyStore keyStore) {
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

    public X509Certificate getTrustRootFor(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2 = this.trustRoots.get(x509Certificate.getIssuerX500Principal());
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

    public boolean isTrustRoot(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2 = this.trustRoots.get(x509Certificate.getSubjectX500Principal());
        return x509Certificate2 != null && x509Certificate2.getPublicKey().equals(x509Certificate.getPublicKey());
    }
}
