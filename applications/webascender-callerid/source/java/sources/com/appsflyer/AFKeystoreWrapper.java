package com.appsflyer;

import android.content.Context;
import android.os.Build;
import android.security.KeyPairGeneratorSpec;
import android.security.keystore.KeyGenParameterSpec;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Calendar;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFKeystoreWrapper.class */
class AFKeystoreWrapper {

    /* renamed from: ɩ */
    KeyStore f2861;

    /* renamed from: ι */
    private Context f2863;

    /* renamed from: ı */
    final Object f2859 = new Object();

    /* renamed from: ǃ */
    String f2860 = "";

    /* renamed from: Ι */
    int f2862 = 0;

    public AFKeystoreWrapper(Context context) {
        this.f2863 = context;
        AFLogger.afInfoLog("Initialising KeyStore..");
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            this.f2861 = keyStore;
            keyStore.load(null);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            AFLogger.afErrorLog("Couldn't load keystore instance of type: AndroidKeyStore", e);
        }
    }

    /* renamed from: ı */
    private static boolean m4145(String str) {
        return str.startsWith("com.appsflyer");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
        r0 = r0.split(",");
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
        if (r0.length != 3) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0049, code lost:
        com.appsflyer.AFLogger.afInfoLog("Found a matching AF key with alias:\n".concat(java.lang.String.valueOf(r0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        r0 = r0[1].trim().split("=");
        r0 = r0[2].trim().split("=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0076, code lost:
        if (r0.length != 2) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007a, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
        if (r0.length != 2) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
        r4.f2860 = r0[1].trim();
        r4.f2862 = java.lang.Integer.parseInt(r0[1].trim());
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009b, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a0, code lost:
        r6 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a1, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ac, code lost:
        r0 = new java.lang.StringBuilder("Couldn't list KeyStore Aliases: ");
        r0.append(r6.getClass().getName());
        com.appsflyer.AFLogger.afErrorLog(r0.toString(), r6);
     */
    /* renamed from: ǃ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final boolean m4144() {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AFKeystoreWrapper.m4144():boolean");
    }

    /* renamed from: ɩ */
    final int m4143() {
        int i;
        synchronized (this.f2859) {
            i = this.f2862;
        }
        return i;
    }

    /* renamed from: Ι */
    final String m4142() {
        StringBuilder sb = new StringBuilder();
        sb.append("com.appsflyer,");
        synchronized (this.f2859) {
            sb.append("KSAppsFlyerId=");
            sb.append(this.f2860);
            sb.append(",");
            sb.append("KSAppsFlyerRICounter=");
            sb.append(this.f2862);
        }
        return sb.toString();
    }

    /* renamed from: Ι */
    final void m4141(String str) {
        KeyGenParameterSpec keyGenParameterSpec;
        AFLogger.afInfoLog("Creating a new key with alias: ".concat(String.valueOf(str)));
        try {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, 5);
            synchronized (this.f2859) {
                if (!this.f2861.containsAlias(str)) {
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 23) {
                        keyGenParameterSpec = new KeyGenParameterSpec.Builder(str, 3).setCertificateSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setCertificateSerialNumber(BigInteger.ONE).setCertificateNotBefore(calendar.getTime()).setCertificateNotAfter(calendar2.getTime()).build();
                    } else {
                        keyGenParameterSpec = null;
                        if (i >= 18) {
                            keyGenParameterSpec = null;
                            if (!AndroidUtils.m4112()) {
                                keyGenParameterSpec = new KeyPairGeneratorSpec.Builder(this.f2863).setAlias(str).setSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setSerialNumber(BigInteger.ONE).setStartDate(calendar.getTime()).setEndDate(calendar2.getTime()).build();
                            }
                        }
                    }
                    KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                    keyPairGenerator.initialize(keyGenParameterSpec);
                    keyPairGenerator.generateKeyPair();
                } else {
                    AFLogger.afInfoLog("Alias already exists: ".concat(String.valueOf(str)));
                }
            }
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("Exception ");
            sb.append(th.getMessage());
            sb.append(" occurred");
            AFLogger.afErrorLog(sb.toString(), th);
        }
    }

    /* renamed from: ι */
    final String m4140() {
        String str;
        synchronized (this.f2859) {
            str = this.f2860;
        }
        return str;
    }
}
