package p193e.p194a.p852i.p856b0.p857c.p859d;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.b0.c.d.a */
/* loaded from: classes3-dex2jar.jar:e/a/i/b0/c/d/a.class */
public final class C14994a {

    /* renamed from: a */
    public long f42786a;

    /* renamed from: b */
    public final String f42787b;

    /* renamed from: c */
    public final String f42788c;

    /* renamed from: d */
    public final String f42789d;

    /* renamed from: e */
    public final long f42790e;

    /* renamed from: f */
    public final String f42791f;

    /* renamed from: g */
    public final String f42792g;

    /* renamed from: h */
    public final String f42793h;

    /* renamed from: i */
    public final String f42794i;

    /* renamed from: j */
    public final String f42795j;

    /* renamed from: k */
    public final String f42796k;

    /* renamed from: l */
    public final String f42797l;

    /* renamed from: m */
    public final String f42798m;

    public C14994a(String str, String str2, String str3, long j, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        C22128a.m8703I0(str, "campaignId", str2, "phoneNumber", str3, "placementName");
        this.f42787b = str;
        this.f42788c = str2;
        this.f42789d = str3;
        this.f42790e = j;
        this.f42791f = str4;
        this.f42792g = str5;
        this.f42793h = str6;
        this.f42794i = str7;
        this.f42795j = str8;
        this.f42796k = str9;
        this.f42797l = str10;
        this.f42798m = str11;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14994a)) {
                return false;
            }
            C14994a c14994a = (C14994a) obj;
            return l.a(this.f42787b, c14994a.f42787b) && l.a(this.f42788c, c14994a.f42788c) && l.a(this.f42789d, c14994a.f42789d) && this.f42790e == c14994a.f42790e && l.a(this.f42791f, c14994a.f42791f) && l.a(this.f42792g, c14994a.f42792g) && l.a(this.f42793h, c14994a.f42793h) && l.a(this.f42794i, c14994a.f42794i) && l.a(this.f42795j, c14994a.f42795j) && l.a(this.f42796k, c14994a.f42796k) && l.a(this.f42797l, c14994a.f42797l) && l.a(this.f42798m, c14994a.f42798m);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f42787b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f42788c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f42789d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f42790e);
        String str4 = this.f42791f;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f42792g;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f42793h;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.f42794i;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f42795j;
        int hashCode8 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.f42796k;
        int hashCode9 = str9 != null ? str9.hashCode() : 0;
        String str10 = this.f42797l;
        int hashCode10 = str10 != null ? str10.hashCode() : 0;
        String str11 = this.f42798m;
        if (str11 != null) {
            i = str11.hashCode();
        }
        return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + m34274a) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdCampaignEntity(campaignId=");
        m8728C.append(this.f42787b);
        m8728C.append(", phoneNumber=");
        m8728C.append(this.f42788c);
        m8728C.append(", placementName=");
        m8728C.append(this.f42789d);
        m8728C.append(", expiresAt=");
        m8728C.append(this.f42790e);
        m8728C.append(", mainColor=");
        m8728C.append(this.f42791f);
        m8728C.append(", lightColor=");
        m8728C.append(this.f42792g);
        m8728C.append(", buttonColor=");
        m8728C.append(this.f42793h);
        m8728C.append(", bannerBackgroundColor=");
        m8728C.append(this.f42794i);
        m8728C.append(", imageUrl=");
        m8728C.append(this.f42795j);
        m8728C.append(", brandName=");
        m8728C.append(this.f42796k);
        m8728C.append(", ctaTextColor=");
        m8728C.append(this.f42797l);
        m8728C.append(", ctaBackgroundColor=");
        return C22128a.m8618h(m8728C, this.f42798m, ")");
    }
}
