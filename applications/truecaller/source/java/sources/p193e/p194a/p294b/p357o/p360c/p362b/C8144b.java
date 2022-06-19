package p193e.p194a.p294b.p357o.p360c.p362b;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b.o.c.b.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/c/b/b.class */
public final class C8144b {

    /* renamed from: a */
    public long f25225a;

    /* renamed from: b */
    public String f25226b;

    /* renamed from: c */
    public String f25227c;

    /* renamed from: d */
    public String f25228d;

    /* renamed from: e */
    public String f25229e;

    /* renamed from: f */
    public String f25230f;

    /* renamed from: g */
    public String f25231g;

    /* renamed from: h */
    public String f25232h;

    /* renamed from: i */
    public String f25233i;

    /* renamed from: j */
    public String f25234j;

    /* renamed from: k */
    public Long f25235k;

    /* renamed from: l */
    public Long f25236l;

    public C8144b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, Long l, Long l2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, AnalyticsConstants.PHONE);
        this.f25226b = str;
        this.f25227c = str2;
        this.f25228d = str3;
        this.f25229e = str4;
        this.f25230f = str5;
        this.f25231g = str6;
        this.f25232h = str7;
        this.f25233i = str8;
        this.f25234j = str9;
        this.f25235k = l;
        this.f25236l = l2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8144b)) {
                return false;
            }
            C8144b c8144b = (C8144b) obj;
            return l.a(this.f25226b, c8144b.f25226b) && l.a(this.f25227c, c8144b.f25227c) && l.a(this.f25228d, c8144b.f25228d) && l.a(this.f25229e, c8144b.f25229e) && l.a(this.f25230f, c8144b.f25230f) && l.a(this.f25231g, c8144b.f25231g) && l.a(this.f25232h, c8144b.f25232h) && l.a(this.f25233i, c8144b.f25233i) && l.a(this.f25234j, c8144b.f25234j) && l.a(this.f25235k, c8144b.f25235k) && l.a(this.f25236l, c8144b.f25236l);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f25226b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f25227c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f25228d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f25229e;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f25230f;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f25231g;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.f25232h;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f25233i;
        int hashCode8 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.f25234j;
        int hashCode9 = str9 != null ? str9.hashCode() : 0;
        Long l = this.f25235k;
        int hashCode10 = l != null ? l.hashCode() : 0;
        Long l2 = this.f25236l;
        if (l2 != null) {
            i = l2.hashCode();
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GovServicesContact(name=");
        m8728C.append(this.f25226b);
        m8728C.append(", phone=");
        m8728C.append(this.f25227c);
        m8728C.append(", designation=");
        m8728C.append(this.f25228d);
        m8728C.append(", departmentName=");
        m8728C.append(this.f25229e);
        m8728C.append(", email=");
        m8728C.append(this.f25230f);
        m8728C.append(", fax=");
        m8728C.append(this.f25231g);
        m8728C.append(", address=");
        m8728C.append(this.f25232h);
        m8728C.append(", ministry=");
        m8728C.append(this.f25233i);
        m8728C.append(", res=");
        m8728C.append(this.f25234j);
        m8728C.append(", districtId=");
        m8728C.append(this.f25235k);
        m8728C.append(", stateId=");
        m8728C.append(this.f25236l);
        m8728C.append(")");
        return m8728C.toString();
    }
}
