package p081h.p093b.p099c.p100a;

import android.net.Uri;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
/* renamed from: h.b.c.a.h */
/* loaded from: classes-dex2jar.jar:h/b/c/a/h.class */
public class C5607h {

    /* renamed from: a */
    public final int f14005a;

    /* renamed from: b */
    public boolean f14006b;

    /* renamed from: c */
    public final String f14007c;

    /* renamed from: d */
    public final String f14008d;

    /* renamed from: e */
    public final int f14009e;

    /* renamed from: f */
    public final String f14010f;

    /* renamed from: g */
    public final long f14011g;

    /* renamed from: h */
    public final Long f14012h;

    /* renamed from: i */
    public final long f14013i;

    /* renamed from: j */
    public final Uri f14014j;

    /* renamed from: k */
    public boolean f14015k;

    /* renamed from: l */
    public byte[] f14016l = null;

    /* renamed from: m */
    public final String f14017m;

    public C5607h(int i, String str, String str2, int i2, String str3, long j, Long l, long j2, Uri uri, boolean z, boolean z2, String str4) {
        this.f14005a = i;
        this.f14006b = z;
        this.f14007c = str;
        this.f14008d = str2;
        this.f14009e = i2;
        this.f14010f = str3;
        this.f14011g = j;
        this.f14012h = l;
        this.f14013i = j2;
        this.f14014j = uri;
        this.f14015k = z2;
        this.f14017m = str4;
    }

    /* renamed from: a */
    public static C5607h m25035a(String str, int i, String str2, int i2, String str3, long j, Long l, long j2, Uri uri, boolean z, String str4) {
        return new C5607h(0, m25038a(i, str, str2), str2, i2, str3, j, l, j2, uri, true, z, str4);
    }

    /* renamed from: a */
    public static C5607h m25034a(String str, int i, String str2, int i2, String str3, long j, Long l, long j2, String str4, boolean z, String str5) {
        return new C5607h(0, m25038a(i, str, str2), str2, i2, str3, j, l, j2, str4 != null ? Uri.parse(str4) : null, false, z, str5);
    }

    /* renamed from: a */
    public static C5607h m25033a(String str, String str2, boolean z) {
        return new C5607h(0, str, str2, -1, null, -2L, null, -2L, null, true, z, null);
    }

    /* renamed from: a */
    public static C5607h m25032a(String str, boolean z) {
        Rfc822Token[] rfc822TokenArr = Rfc822Tokenizer.tokenize(str);
        if (rfc822TokenArr.length > 0) {
            str = rfc822TokenArr[0].getAddress();
        }
        return new C5607h(0, str, str, -1, null, -1L, null, -1L, null, true, z, null);
    }

    /* renamed from: a */
    public static String m25038a(int i, String str, String str2) {
        if (i <= 20) {
            str = str2;
        }
        return str;
    }

    /* renamed from: a */
    public static boolean m25037a(long j) {
        return j == -1 || j == -2;
    }

    /* renamed from: b */
    public static C5607h m25029b(String str, int i, String str2, int i2, String str3, long j, Long l, long j2, String str4, boolean z, String str5) {
        return new C5607h(0, m25038a(i, str, str2), str2, i2, str3, j, l, j2, str4 != null ? Uri.parse(str4) : null, true, z, str5);
    }

    /* renamed from: b */
    public static C5607h m25028b(String str, boolean z) {
        return new C5607h(0, str, str, -1, null, -1L, null, -1L, null, true, z, null);
    }

    /* renamed from: a */
    public long m25039a() {
        return this.f14011g;
    }

    /* renamed from: a */
    public void m25031a(byte[] bArr) {
        synchronized (this) {
            this.f14016l = bArr;
        }
    }

    /* renamed from: a */
    public boolean m25036a(C5607h hVar) {
        return hVar != null && this.f14011g == hVar.f14011g;
    }

    /* renamed from: b */
    public long m25030b() {
        return this.f14013i;
    }

    /* renamed from: c */
    public String m25027c() {
        return this.f14008d;
    }

    /* renamed from: d */
    public String m25026d() {
        return this.f14010f;
    }

    /* renamed from: e */
    public int m25025e() {
        return this.f14009e;
    }

    /* renamed from: f */
    public Long m25024f() {
        return this.f14012h;
    }

    /* renamed from: g */
    public String m25023g() {
        return this.f14007c;
    }

    /* renamed from: h */
    public int m25022h() {
        return this.f14005a;
    }

    /* renamed from: i */
    public String m25021i() {
        return this.f14017m;
    }

    /* renamed from: j */
    public byte[] m25020j() {
        byte[] bArr;
        synchronized (this) {
            bArr = this.f14016l;
        }
        return bArr;
    }

    /* renamed from: k */
    public Uri m25019k() {
        return this.f14014j;
    }

    /* renamed from: l */
    public boolean m25018l() {
        return this.f14006b;
    }

    /* renamed from: m */
    public boolean m25017m() {
        return this.f14005a == 0;
    }

    /* renamed from: n */
    public boolean m25016n() {
        return this.f14015k;
    }

    public String toString() {
        return this.f14007c + " <" + this.f14008d + ">, isValid=" + this.f14015k;
    }
}
