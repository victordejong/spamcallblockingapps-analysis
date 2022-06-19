package p193e.p194a.p804h.p806b.p820y0.p821a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.b.y0.a.e */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/y0/a/e.class */
public final class C14636e {

    /* renamed from: a */
    public final Contact f42119a;

    /* renamed from: b */
    public final String f42120b;

    /* renamed from: c */
    public final FilterMatch f42121c = null;

    public C14636e(Contact contact, String str, FilterMatch filterMatch) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(str, "matchedValue");
        this.f42119a = contact;
        this.f42120b = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14636e)) {
                return false;
            }
            C14636e c14636e = (C14636e) obj;
            return l.a(this.f42119a, c14636e.f42119a) && l.a(this.f42120b, c14636e.f42120b) && l.a(this.f42121c, c14636e.f42121c);
        }
        return true;
    }

    public int hashCode() {
        Contact contact = this.f42119a;
        int i = 0;
        int hashCode = contact != null ? contact.hashCode() : 0;
        String str = this.f42120b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        FilterMatch filterMatch = this.f42121c;
        if (filterMatch != null) {
            i = filterMatch.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("T9SearchResult(contact=");
        m8728C.append(this.f42119a);
        m8728C.append(", matchedValue=");
        m8728C.append(this.f42120b);
        m8728C.append(", filterMatch=");
        m8728C.append(this.f42121c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
