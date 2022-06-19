package p193e.p194a.p852i.p870d0.p875g0.p876c;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.d0.g0.c.e */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/g0/c/e.class */
public final class C15124e {

    /* renamed from: a */
    public long f43091a;

    /* renamed from: b */
    public final String f43092b;

    /* renamed from: c */
    public final String f43093c;

    /* renamed from: d */
    public final String f43094d;

    /* renamed from: e */
    public final String f43095e;

    /* renamed from: f */
    public final List<String> f43096f;

    /* renamed from: g */
    public final String f43097g;

    /* renamed from: h */
    public final long f43098h;

    /* renamed from: i */
    public final long f43099i;

    public C15124e(String str, String str2, String str3, String str4, List<String> list, String str5, long j, long j2) {
        C22128a.m8699J0(str, "placementId", str2, "partnerId", str3, "pricingModel", str5, "floorPrice");
        this.f43092b = str;
        this.f43093c = str2;
        this.f43094d = str3;
        this.f43095e = str4;
        this.f43096f = list;
        this.f43097g = str5;
        this.f43098h = j;
        this.f43099i = j2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15124e)) {
                return false;
            }
            C15124e c15124e = (C15124e) obj;
            return l.a(this.f43092b, c15124e.f43092b) && l.a(this.f43093c, c15124e.f43093c) && l.a(this.f43094d, c15124e.f43094d) && l.a(this.f43095e, c15124e.f43095e) && l.a(this.f43096f, c15124e.f43096f) && l.a(this.f43097g, c15124e.f43097g) && this.f43098h == c15124e.f43098h && this.f43099i == c15124e.f43099i;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43092b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43093c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f43094d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f43095e;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        List<String> list = this.f43096f;
        int hashCode5 = list != null ? list.hashCode() : 0;
        String str5 = this.f43097g;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i) * 31) + C4876d.m34274a(this.f43098h)) * 31) + C4876d.m34274a(this.f43099i);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PredictiveEcpmConfigEntity(placementId=");
        m8728C.append(this.f43092b);
        m8728C.append(", partnerId=");
        m8728C.append(this.f43093c);
        m8728C.append(", pricingModel=");
        m8728C.append(this.f43094d);
        m8728C.append(", pricingEcpm=");
        m8728C.append(this.f43095e);
        m8728C.append(", adTypes=");
        m8728C.append(this.f43096f);
        m8728C.append(", floorPrice=");
        m8728C.append(this.f43097g);
        m8728C.append(", ttl=");
        m8728C.append(this.f43098h);
        m8728C.append(", expiresAt=");
        return C22128a.m8693K2(m8728C, this.f43099i, ")");
    }
}
