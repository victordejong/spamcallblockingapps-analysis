package p193e.p194a.p804h;

import com.razorpay.AnalyticsConstants;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.t */
/* loaded from: classes2-dex2jar.jar:e/a/h/t.class */
public final class C14736t {

    /* renamed from: a */
    public final List<Long> f42231a;

    /* renamed from: b */
    public final String f42232b;

    /* renamed from: c */
    public final String f42233c;

    public C14736t(List<Long> list, String str, String str2) {
        l.e(list, "phoneNumber");
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, "analyticsContext");
        this.f42231a = list;
        this.f42232b = str;
        this.f42233c = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14736t)) {
                return false;
            }
            C14736t c14736t = (C14736t) obj;
            return l.a(this.f42231a, c14736t.f42231a) && l.a(this.f42232b, c14736t.f42232b) && l.a(this.f42233c, c14736t.f42233c);
        }
        return true;
    }

    public int hashCode() {
        List<Long> list = this.f42231a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.f42232b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f42233c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FlashBinding(phoneNumber=");
        m8728C.append(this.f42231a);
        m8728C.append(", name=");
        m8728C.append(this.f42232b);
        m8728C.append(", analyticsContext=");
        return C22128a.m8618h(m8728C, this.f42233c, ")");
    }
}
