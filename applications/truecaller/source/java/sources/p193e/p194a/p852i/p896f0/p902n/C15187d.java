package p193e.p194a.p852i.p896f0.p902n;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.f0.n.d */
/* loaded from: classes3-dex2jar.jar:e/a/i/f0/n/d.class */
public final class C15187d {

    /* renamed from: a */
    public final String f43235a;

    /* renamed from: b */
    public final String f43236b;

    /* renamed from: c */
    public final String f43237c;

    /* renamed from: d */
    public final String f43238d;

    /* renamed from: e */
    public final String f43239e;

    /* renamed from: f */
    public final String f43240f;

    public C15187d(String str, String str2, String str3, String str4, String str5, String str6) {
        C22128a.m8699J0(str, "headline", str2, "body", str3, "cta", str4, "link");
        this.f43235a = str;
        this.f43236b = str2;
        this.f43237c = str3;
        this.f43238d = str4;
        this.f43239e = str5;
        this.f43240f = str6;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!l.a(C15187d.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.ads.provider.house.HouseAd");
        C15187d c15187d = (C15187d) obj;
        return !(l.a(this.f43235a, c15187d.f43235a) ^ true) && !(l.a(this.f43236b, c15187d.f43236b) ^ true) && !(l.a(this.f43237c, c15187d.f43237c) ^ true) && !(l.a(this.f43238d, c15187d.f43238d) ^ true) && !(l.a(this.f43239e, c15187d.f43239e) ^ true) && !(l.a(this.f43240f, c15187d.f43240f) ^ true);
    }

    public int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.f43238d, C22128a.m8579q2(this.f43237c, C22128a.m8579q2(this.f43236b, this.f43235a.hashCode() * 31, 31), 31), 31);
        String str = this.f43239e;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43240f;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((m8579q2 + hashCode) * 31) + i;
    }
}
