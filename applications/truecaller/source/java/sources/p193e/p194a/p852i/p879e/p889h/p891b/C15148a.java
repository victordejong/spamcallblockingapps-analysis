package p193e.p194a.p852i.p879e.p889h.p891b;

import com.truecaller.ads.offline.dto.OfflineAdUiConfigAsset;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.e.h.b.a */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/b/a.class */
public final class C15148a {

    /* renamed from: a */
    public long f43149a;

    /* renamed from: b */
    public final String f43150b;

    /* renamed from: c */
    public final String f43151c;

    /* renamed from: d */
    public final List<OfflineAdUiConfigAsset> f43152d;

    /* renamed from: e */
    public final List<String> f43153e;

    public C15148a(String str, String str2, List<OfflineAdUiConfigAsset> list, List<String> list2) {
        l.e(str, "leadGenId");
        l.e(str2, "uiConfig");
        l.e(list2, "pixels");
        this.f43150b = str;
        this.f43151c = str2;
        this.f43152d = list;
        this.f43153e = list2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15148a)) {
                return false;
            }
            C15148a c15148a = (C15148a) obj;
            return l.a(this.f43150b, c15148a.f43150b) && l.a(this.f43151c, c15148a.f43151c) && l.a(this.f43152d, c15148a.f43152d) && l.a(this.f43153e, c15148a.f43153e);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43150b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43151c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        List<OfflineAdUiConfigAsset> list = this.f43152d;
        int hashCode3 = list != null ? list.hashCode() : 0;
        List<String> list2 = this.f43153e;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OfflineAdUiConfigEntity(leadGenId=");
        m8728C.append(this.f43150b);
        m8728C.append(", uiConfig=");
        m8728C.append(this.f43151c);
        m8728C.append(", assets=");
        m8728C.append(this.f43152d);
        m8728C.append(", pixels=");
        return C22128a.m8602l(m8728C, this.f43153e, ")");
    }
}
