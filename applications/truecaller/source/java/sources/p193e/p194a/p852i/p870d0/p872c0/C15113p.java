package p193e.p194a.p852i.p870d0.p872c0;

import com.truecaller.ads.adsrouter.p132ui.AdType;
import com.truecaller.ads.mediation.model.AdPartner;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.d0.c0.p */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/c0/p.class */
public final class C15113p {

    /* renamed from: a */
    public long f43066a;

    /* renamed from: b */
    public final String f43067b;

    /* renamed from: c */
    public final AdPartner f43068c;

    /* renamed from: d */
    public final AdType f43069d;

    /* renamed from: e */
    public final String f43070e;

    /* renamed from: f */
    public final String f43071f;

    /* renamed from: g */
    public final String f43072g;

    /* renamed from: h */
    public final long f43073h;

    public C15113p(String str, AdPartner adPartner, AdType adType, String str2, String str3, String str4, long j) {
        l.e(str, "adPlacement");
        l.e(adPartner, "adPartner");
        l.e(adType, "adType");
        l.e(str2, "adResponse");
        l.e(str3, "adEcpm");
        l.e(str4, "adRawEcpm");
        this.f43067b = str;
        this.f43068c = adPartner;
        this.f43069d = adType;
        this.f43070e = str2;
        this.f43071f = str3;
        this.f43072g = str4;
        this.f43073h = j;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15113p)) {
                return false;
            }
            C15113p c15113p = (C15113p) obj;
            return l.a(this.f43067b, c15113p.f43067b) && l.a(this.f43068c, c15113p.f43068c) && l.a(this.f43069d, c15113p.f43069d) && l.a(this.f43070e, c15113p.f43070e) && l.a(this.f43071f, c15113p.f43071f) && l.a(this.f43072g, c15113p.f43072g) && this.f43073h == c15113p.f43073h;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43067b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        AdPartner adPartner = this.f43068c;
        int hashCode2 = adPartner != null ? adPartner.hashCode() : 0;
        AdType adType = this.f43069d;
        int hashCode3 = adType != null ? adType.hashCode() : 0;
        String str2 = this.f43070e;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f43071f;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f43072g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i) * 31) + C4876d.m34274a(this.f43073h);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PartnerAdsEntity(adPlacement=");
        m8728C.append(this.f43067b);
        m8728C.append(", adPartner=");
        m8728C.append(this.f43068c);
        m8728C.append(", adType=");
        m8728C.append(this.f43069d);
        m8728C.append(", adResponse=");
        m8728C.append(this.f43070e);
        m8728C.append(", adEcpm=");
        m8728C.append(this.f43071f);
        m8728C.append(", adRawEcpm=");
        m8728C.append(this.f43072g);
        m8728C.append(", adExpiry=");
        return C22128a.m8693K2(m8728C, this.f43073h, ")");
    }
}
