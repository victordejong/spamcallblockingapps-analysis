package p193e.p194a.p852i.p870d0.p871a0;

import com.truecaller.ads.mediation.model.AdSize;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.d0.a0.p */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/a0/p.class */
public final class C15108p {

    /* renamed from: a */
    public final String f43050a;

    /* renamed from: b */
    public final String f43051b;

    /* renamed from: c */
    public final List<AdSize> f43052c;

    /* renamed from: d */
    public final String f43053d;

    public C15108p(String str, String str2, List<AdSize> list, String str3) {
        l.e(str, "requestId");
        l.e(str2, "partnerId");
        l.e(list, "adSize");
        this.f43050a = str;
        this.f43051b = str2;
        this.f43052c = list;
        this.f43053d = str3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15108p)) {
                return false;
            }
            C15108p c15108p = (C15108p) obj;
            return l.a(this.f43050a, c15108p.f43050a) && l.a(this.f43051b, c15108p.f43051b) && l.a(this.f43052c, c15108p.f43052c) && l.a(this.f43053d, c15108p.f43053d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43050a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43051b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        List<AdSize> list = this.f43052c;
        int hashCode3 = list != null ? list.hashCode() : 0;
        String str3 = this.f43053d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MediationBannerRequestData(requestId=");
        m8728C.append(this.f43050a);
        m8728C.append(", partnerId=");
        m8728C.append(this.f43051b);
        m8728C.append(", adSize=");
        m8728C.append(this.f43052c);
        m8728C.append(", adUnitId=");
        return C22128a.m8618h(m8728C, this.f43053d, ")");
    }
}
