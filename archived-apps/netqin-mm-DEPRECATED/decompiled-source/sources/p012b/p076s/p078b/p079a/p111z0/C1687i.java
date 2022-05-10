package p012b.p076s.p078b.p079a.p111z0;

import android.net.Uri;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.z0.i */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/i.class */
public final class C1687i {

    /* renamed from: a */
    public final Uri f6883a;

    /* renamed from: b */
    public final int f6884b;

    /* renamed from: c */
    public final byte[] f6885c;

    /* renamed from: d */
    public final long f6886d;

    /* renamed from: e */
    public final long f6887e;

    /* renamed from: f */
    public final long f6888f;

    /* renamed from: g */
    public final String f6889g;

    /* renamed from: h */
    public final int f6890h;

    public C1687i(Uri uri, int i) {
        this(uri, 0L, -1L, null, i);
    }

    public C1687i(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2) {
        C1160a.m34520a(j >= 0);
        C1160a.m34520a(j2 >= 0);
        C1160a.m34520a(j3 <= 0 ? j3 == -1 : true);
        this.f6883a = uri;
        this.f6884b = i;
        this.f6885c = (bArr == null || bArr.length == 0) ? null : bArr;
        this.f6886d = j;
        this.f6887e = j2;
        this.f6888f = j3;
        this.f6889g = str;
        this.f6890h = i2;
    }

    public C1687i(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    public C1687i(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    public C1687i(Uri uri, long j, long j2, String str, int i) {
        this(uri, j, j, j2, str, i);
    }

    public C1687i(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        this(uri, bArr != null ? 2 : 1, bArr, j, j2, j3, str, i);
    }

    /* renamed from: b */
    public static String m32382b(int i) {
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
    public C1687i m32384a(long j) {
        long j2 = this.f6888f;
        long j3 = -1;
        if (j2 != -1) {
            j3 = j2 - j;
        }
        return m32383a(j, j3);
    }

    /* renamed from: a */
    public C1687i m32383a(long j, long j2) {
        return (j == 0 && this.f6888f == j2) ? this : new C1687i(this.f6883a, this.f6884b, this.f6885c, this.f6886d + j, this.f6887e + j, j2, this.f6889g, this.f6890h);
    }

    /* renamed from: a */
    public final String m32386a() {
        return m32382b(this.f6884b);
    }

    /* renamed from: a */
    public boolean m32385a(int i) {
        return (this.f6890h & i) == i;
    }

    public String toString() {
        String a = m32386a();
        String valueOf = String.valueOf(this.f6883a);
        String arrays = Arrays.toString(this.f6885c);
        long j = this.f6886d;
        long j2 = this.f6887e;
        long j3 = this.f6888f;
        String str = this.f6889g;
        int i = this.f6890h;
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 94 + String.valueOf(valueOf).length() + String.valueOf(arrays).length() + String.valueOf(str).length());
        sb.append("DataSpec[");
        sb.append(a);
        sb.append(" ");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(arrays);
        sb.append(", ");
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        sb.append(", ");
        sb.append(j3);
        sb.append(", ");
        sb.append(str);
        sb.append(", ");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }
}
