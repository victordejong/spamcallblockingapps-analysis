package p131c.p161d.p170b.p188c.p201f1;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.f1.k */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/k.class */
public final class C2829k {

    /* renamed from: a */
    public final Uri f10265a;

    /* renamed from: b */
    public final int f10266b;

    /* renamed from: c */
    public final byte[] f10267c;

    /* renamed from: d */
    public final Map<String, String> f10268d;

    /* renamed from: e */
    public final long f10269e;

    /* renamed from: f */
    public final long f10270f;

    /* renamed from: g */
    public final long f10271g;

    /* renamed from: h */
    public final String f10272h;

    /* renamed from: i */
    public final int f10273i;

    public C2829k(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2) {
        this(uri, i, bArr, j, j2, j3, str, i2, Collections.emptyMap());
    }

    public C2829k(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2, Map<String, String> map) {
        C2877e.m28734a(j >= 0);
        C2877e.m28734a(j2 >= 0);
        C2877e.m28734a(j3 <= 0 ? j3 == -1 : true);
        this.f10265a = uri;
        this.f10266b = i;
        this.f10267c = (bArr == null || bArr.length == 0) ? null : bArr;
        this.f10269e = j;
        this.f10270f = j2;
        this.f10271g = j3;
        this.f10272h = str;
        this.f10273i = i2;
        this.f10268d = Collections.unmodifiableMap(new HashMap(map));
    }

    public C2829k(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    public C2829k(Uri uri, long j, long j2, String str, int i, Map<String, String> map) {
        this(uri, m28934a((byte[]) null), null, j, j, j2, str, i, map);
    }

    public C2829k(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        this(uri, m28934a(bArr), bArr, j, j2, j3, str, i);
    }

    /* renamed from: a */
    public static int m28934a(byte[] bArr) {
        return bArr != null ? 2 : 1;
    }

    /* renamed from: b */
    public static String m28933b(int i) {
        if (i == 1) {
            return "GET";
        }
        if (i == 2) {
            return "POST";
        }
        if (i == 3) {
            return "HEAD";
        }
        throw new AssertionError(i);
    }

    /* renamed from: a */
    public C2829k m28935a(long j, long j2) {
        return (j == 0 && this.f10271g == j2) ? this : new C2829k(this.f10265a, this.f10266b, this.f10267c, this.f10269e + j, this.f10270f + j, j2, this.f10272h, this.f10273i, this.f10268d);
    }

    /* renamed from: a */
    public final String m28937a() {
        return m28933b(this.f10266b);
    }

    /* renamed from: a */
    public boolean m28936a(int i) {
        return (this.f10273i & i) == i;
    }

    public String toString() {
        return "DataSpec[" + m28937a() + " " + this.f10265a + ", " + Arrays.toString(this.f10267c) + ", " + this.f10269e + ", " + this.f10270f + ", " + this.f10271g + ", " + this.f10272h + ", " + this.f10273i + "]";
    }
}
