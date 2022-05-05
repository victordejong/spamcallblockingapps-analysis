package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.crashlytics.android.core.CodedOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.google.android.gms.internal.ads.hp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hp.class */
final class C1932hp implements zznl {

    /* renamed from: a */
    private static final Pattern f8552a = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: b */
    private static final AtomicReference<byte[]> f8553b = new AtomicReference<>();

    /* renamed from: d */
    private final int f8555d;

    /* renamed from: e */
    private final int f8556e;

    /* renamed from: f */
    private final String f8557f;

    /* renamed from: h */
    private final zznz<? super C1932hp> f8559h;

    /* renamed from: i */
    private zznq f8560i;

    /* renamed from: j */
    private HttpURLConnection f8561j;

    /* renamed from: k */
    private InputStream f8562k;

    /* renamed from: l */
    private boolean f8563l;

    /* renamed from: m */
    private long f8564m;

    /* renamed from: n */
    private long f8565n;

    /* renamed from: o */
    private long f8566o;

    /* renamed from: p */
    private long f8567p;

    /* renamed from: q */
    private int f8568q;

    /* renamed from: c */
    private SSLSocketFactory f8554c = new C1931ho(this);

    /* renamed from: r */
    private Set<Socket> f8569r = new HashSet();

    /* renamed from: g */
    private final zznt f8558g = new zznt();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1932hp(String str, zznz<? super C1932hp> zznzVar, int i, int i2, int i3) {
        this.f8557f = zzoc.checkNotEmpty(str);
        this.f8559h = zznzVar;
        this.f8555d = i;
        this.f8556e = i2;
        this.f8568q = i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x005f  */
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
    private static long m4707a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1932hp.m4707a(java.net.HttpURLConnection):long");
    }

    /* renamed from: a */
    private final void m4711a() {
        HttpURLConnection httpURLConnection = this.f8561j;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzavs.zzc("Unexpected error while disconnecting", e);
            }
            this.f8561j = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4710a(int i) {
        this.f8568q = i;
        for (Socket socket : this.f8569r) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.f8568q);
                } catch (SocketException e) {
                    zzavs.zzd("Failed to update receive buffer size.", e);
                }
            }
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
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1932hp.close():void");
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.f8561j;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final int read(byte[] bArr, int i, int i2) {
        try {
            if (this.f8566o != this.f8564m) {
                byte[] andSet = f8553b.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[CodedOutputStream.DEFAULT_BUFFER_SIZE];
                }
                while (this.f8566o != this.f8564m) {
                    int read = this.f8562k.read(bArr2, 0, (int) Math.min(this.f8564m - this.f8566o, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.f8566o += read;
                        if (this.f8559h != null) {
                            this.f8559h.zzc(this, read);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
                f8553b.set(bArr2);
            }
            if (i2 == 0) {
                return 0;
            }
            int i3 = i2;
            if (this.f8565n != -1) {
                long j = this.f8565n - this.f8567p;
                if (j == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j);
            }
            int read2 = this.f8562k.read(bArr, i, i3);
            if (read2 != -1) {
                this.f8567p += read2;
                if (this.f8559h != null) {
                    this.f8559h.zzc(this, read2);
                }
                return read2;
            } else if (this.f8565n == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        } catch (IOException e) {
            throw new zznr(e, this.f8560i, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x033d A[Catch: IOException -> 0x03cf, TRY_ENTER, TryCatch #1 {IOException -> 0x03cf, blocks: (B:3:0x000f, B:6:0x0046, B:8:0x0057, B:10:0x0065, B:12:0x008a, B:14:0x0092, B:19:0x00d0, B:22:0x0106, B:23:0x0145, B:25:0x0151, B:27:0x0160, B:29:0x016d, B:33:0x017e, B:35:0x0189, B:37:0x0196, B:38:0x01b7, B:40:0x01be, B:55:0x01fa, B:100:0x0329, B:102:0x033d, B:104:0x035a, B:106:0x0364, B:108:0x0374, B:109:0x037f, B:111:0x038b, B:112:0x0390, B:115:0x039b, B:116:0x03a7, B:117:0x03a8, B:117:0x03a8, B:118:0x03ab, B:119:0x03ce), top: B:129:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x039b A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zznl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.ads.zznq r8) {
        /*
            Method dump skipped, instructions count: 1028
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1932hp.zza(com.google.android.gms.internal.ads.zznq):long");
    }
}
