package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fq.class */
public final class RunnableC2790fq implements Runnable {

    /* renamed from: a */
    private final URL f16882a;

    /* renamed from: c */
    private final AbstractC2791fr f16884c;

    /* renamed from: d */
    private final String f16885d;

    /* renamed from: f */
    private final /* synthetic */ zzhz f16887f;

    /* renamed from: b */
    private final byte[] f16883b = null;

    /* renamed from: e */
    private final Map<String, String> f16886e = null;

    /* JADX WARN: Multi-variable type inference failed */
    public RunnableC2790fq(zzhz zzhzVar, String str, URL url, byte[] bArr) {
        this.f16887f = zzhzVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(bArr);
        this.f16882a = url;
        this.f16884c = bArr;
        this.f16885d = str;
    }

    /* renamed from: a */
    private final void m2047a(final int i, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) {
        this.f16887f.zzq().zza(new Runnable(this, i, exc, bArr, map) { // from class: com.google.android.gms.measurement.internal.ft

            /* renamed from: a */
            private final RunnableC2790fq f16888a;

            /* renamed from: b */
            private final int f16889b;

            /* renamed from: c */
            private final Exception f16890c;

            /* renamed from: d */
            private final byte[] f16891d;

            /* renamed from: e */
            private final Map f16892e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16888a = this;
                this.f16889b = i;
                this.f16890c = exc;
                this.f16891d = bArr;
                this.f16892e = map;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16888a.m2048a(this.f16889b, this.f16890c, this.f16891d);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m2048a(int i, Exception exc, byte[] bArr) {
        this.f16884c.mo2046a(i, exc, bArr);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map<String, List<String>> map;
        HttpURLConnection httpURLConnection;
        IOException e;
        int i;
        HttpURLConnection httpURLConnection2;
        Throwable th;
        byte[] b;
        this.f16887f.zzc();
        try {
            HttpURLConnection a = this.f16887f.m1776a(this.f16882a);
            i = 0;
            i = 0;
            try {
                if (this.f16886e != null) {
                    for (Map.Entry<String, String> entry : this.f16886e.entrySet()) {
                        a.addRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                i = a.getResponseCode();
                i = i;
                i = i;
                map = a.getHeaderFields();
                try {
                    b = zzhz.m1775b(a);
                    if (a != null) {
                        a.disconnect();
                    }
                    m2047a(i, null, b, map);
                } catch (IOException e2) {
                    e = e2;
                    httpURLConnection = a;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    m2047a(i, e, null, map);
                } catch (Throwable th2) {
                    th = th2;
                    httpURLConnection2 = a;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    m2047a(i, null, null, map);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                map = null;
                httpURLConnection = a;
            } catch (Throwable th3) {
                th = th3;
                map = null;
                httpURLConnection2 = a;
            }
        } catch (IOException e4) {
            e = e4;
            httpURLConnection = null;
            i = 0;
            map = null;
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection2 = null;
            i = 0;
            map = null;
        }
    }
}
