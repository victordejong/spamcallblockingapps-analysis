package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.net.HttpURLConnection;
/* renamed from: com.google.android.gms.internal.ads.et */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/et.class */
final class C1855et extends FilterInputStream {

    /* renamed from: a */
    private final HttpURLConnection f8441a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1855et(java.net.HttpURLConnection r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            java.io.InputStream r1 = com.google.android.gms.internal.ads.zzat.m4301a(r1)
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.f8441a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1855et.<init>(java.net.HttpURLConnection):void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        this.f8441a.disconnect();
    }
}
