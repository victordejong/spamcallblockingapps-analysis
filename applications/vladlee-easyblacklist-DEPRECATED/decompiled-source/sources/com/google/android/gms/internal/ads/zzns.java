package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Log;
import com.crashlytics.android.core.CodedOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzns.class */
public final class zzns implements zznl {

    /* renamed from: a */
    private static final Pattern f15201a = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: b */
    private static final AtomicReference<byte[]> f15202b = new AtomicReference<>();

    /* renamed from: d */
    private final int f15204d;

    /* renamed from: e */
    private final int f15205e;

    /* renamed from: f */
    private final String f15206f;

    /* renamed from: j */
    private final zznz<? super zzns> f15210j;

    /* renamed from: k */
    private zznq f15211k;

    /* renamed from: l */
    private HttpURLConnection f15212l;

    /* renamed from: m */
    private InputStream f15213m;

    /* renamed from: n */
    private boolean f15214n;

    /* renamed from: o */
    private long f15215o;

    /* renamed from: p */
    private long f15216p;

    /* renamed from: q */
    private long f15217q;

    /* renamed from: r */
    private long f15218r;

    /* renamed from: g */
    private final zzol<String> f15207g = null;

    /* renamed from: i */
    private final zznt f15209i = new zznt();

    /* renamed from: c */
    private final boolean f15203c = true;

    /* renamed from: h */
    private final zznt f15208h = null;

    public zzns(String str, zzol<String> zzolVar, zznz<? super zzns> zznzVar, int i, int i2, boolean z, zznt zzntVar) {
        this.f15206f = zzoc.checkNotEmpty(str);
        this.f15210j = zznzVar;
        this.f15204d = i;
        this.f15205e = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0062  */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long m3174a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzns.m3174a(java.net.HttpURLConnection):long");
    }

    /* renamed from: a */
    private final HttpURLConnection m3173a(URL url, byte[] bArr, long j, long j2, boolean z, boolean z2) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f15204d);
        httpURLConnection.setReadTimeout(this.f15205e);
        for (Map.Entry<String, String> entry : this.f15209i.zzik().entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        if (!(j == 0 && j2 == -1)) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("bytes=");
            sb.append(j);
            sb.append("-");
            String sb2 = sb.toString();
            String str = sb2;
            if (j2 != -1) {
                String valueOf = String.valueOf(sb2);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb3.append(valueOf);
                sb3.append((j + j2) - 1);
                str = sb3.toString();
            }
            httpURLConnection.setRequestProperty("Range", str);
        }
        httpURLConnection.setRequestProperty(AbstractC0007a.HEADER_USER_AGENT, this.f15206f);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setRequestMethod("POST");
            if (bArr.length != 0) {
                httpURLConnection.setFixedLengthStreamingMode(bArr.length);
                httpURLConnection.connect();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.close();
                return httpURLConnection;
            }
        }
        httpURLConnection.connect();
        return httpURLConnection;
    }

    /* renamed from: a */
    private final void m3175a() {
        HttpURLConnection httpURLConnection = this.f15212l;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f15212l = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005a, code lost:
        if (r7 > 2048) goto L_0x005d;
     */
    @Override // com.google.android.gms.internal.ads.zznl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzns.close():void");
    }

    public final Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.f15212l;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.f15212l;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final int read(byte[] bArr, int i, int i2) {
        try {
            if (this.f15217q != this.f15215o) {
                byte[] andSet = f15202b.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[CodedOutputStream.DEFAULT_BUFFER_SIZE];
                }
                while (this.f15217q != this.f15215o) {
                    int read = this.f15213m.read(bArr2, 0, (int) Math.min(this.f15215o - this.f15217q, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.f15217q += read;
                        if (this.f15210j != null) {
                            this.f15210j.zzc(this, read);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
                f15202b.set(bArr2);
            }
            if (i2 == 0) {
                return 0;
            }
            int i3 = i2;
            if (this.f15216p != -1) {
                long j = this.f15216p - this.f15218r;
                if (j == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j);
            }
            int read2 = this.f15213m.read(bArr, i, i3);
            if (read2 != -1) {
                this.f15218r += read2;
                if (this.f15210j != null) {
                    this.f15210j.zzc(this, read2);
                }
                return read2;
            } else if (this.f15216p == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        } catch (IOException e) {
            throw new zznr(e, this.f15211k, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b6, code lost:
        r14 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x016d  */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.ads.zznl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.ads.zznq r11) {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzns.zza(com.google.android.gms.internal.ads.zznq):long");
    }
}
