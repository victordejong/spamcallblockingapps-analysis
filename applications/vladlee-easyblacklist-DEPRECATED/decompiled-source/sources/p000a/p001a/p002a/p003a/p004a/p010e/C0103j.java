package p000a.p001a.p002a.p003a.p004a.p010e;

import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import p000a.p001a.p002a.p003a.C0137d;
/* renamed from: a.a.a.a.a.e.j */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/j.class */
final class C0103j implements X509TrustManager {

    /* renamed from: a */
    private static final X509Certificate[] f195a = new X509Certificate[0];

    /* renamed from: b */
    private final TrustManager[] f196b;

    /* renamed from: c */
    private final C0104k f197c;

    /* renamed from: d */
    private final long f198d;

    /* renamed from: e */
    private final List<byte[]> f199e = new LinkedList();

    /* renamed from: f */
    private final Set<X509Certificate> f200f = Collections.synchronizedSet(new HashSet());

    public C0103j(C0104k kVar, AbstractC0102i iVar) {
        this.f196b = m10198a(kVar);
        this.f197c = kVar;
        this.f198d = iVar.getPinCreationTimeInMillis();
        for (String str : iVar.getPins()) {
            this.f199e.add(m10197a(str));
        }
    }

    /* renamed from: a */
    private boolean m10196a(X509Certificate x509Certificate) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(x509Certificate.getPublicKey().getEncoded());
            Iterator<byte[]> it = this.f199e.iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
            } while (!Arrays.equals(it.next(), digest));
            return true;
        } catch (NoSuchAlgorithmException e) {
            throw new CertificateException(e);
        }
    }

    /* renamed from: a */
    private static byte[] m10197a(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    /* renamed from: a */
    private static TrustManager[] m10198a(C0104k kVar) {
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance("X509");
            instance.init(kVar.f201a);
            return instance.getTrustManagers();
        } catch (KeyStoreException e) {
            throw new AssertionError(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        throw new CertificateException("Client certificates not supported!");
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        if (!this.f200f.contains(x509CertificateArr[0])) {
            for (TrustManager trustManager : this.f196b) {
                ((X509TrustManager) trustManager).checkServerTrusted(x509CertificateArr, str);
            }
            if (this.f198d == -1 || System.currentTimeMillis() - this.f198d <= 15552000000L) {
                for (X509Certificate x509Certificate : C0089a.m10243a(x509CertificateArr, this.f197c)) {
                    if (!m10196a(x509Certificate)) {
                    }
                }
                throw new CertificateException("No valid pins found in chain!");
            }
            C0137d.m10155c().mo10129d("Fabric", "Certificate pins are stale, (" + (System.currentTimeMillis() - this.f198d) + " millis vs 15552000000 millis) falling back to system trust.");
            this.f200f.add(x509CertificateArr[0]);
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public final X509Certificate[] getAcceptedIssuers() {
        return f195a;
    }
}
