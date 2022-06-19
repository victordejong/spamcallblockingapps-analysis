package p193e.p194a.p804h.p806b.p820y0.p821a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.b.y0.a.a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/y0/a/a.class */
public final class C14633a {

    /* renamed from: a */
    public final Contact f42115a;

    /* renamed from: b */
    public final String f42116b;

    /* renamed from: c */
    public final Long f42117c;

    /* renamed from: d */
    public final FilterMatch f42118d;

    public C14633a(Contact contact, String str, Long l, FilterMatch filterMatch) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(str, "matchedValue");
        this.f42115a = contact;
        this.f42116b = str;
        this.f42117c = l;
        this.f42118d = filterMatch;
    }

    /* renamed from: a */
    public static C14633a m19843a(C14633a c14633a, Contact contact, String str, Long l, FilterMatch filterMatch, int i) {
        if ((i & 1) != 0) {
            contact = c14633a.f42115a;
        }
        FilterMatch filterMatch2 = null;
        String str2 = (i & 2) != 0 ? c14633a.f42116b : null;
        if ((i & 4) != 0) {
            l = c14633a.f42117c;
        }
        if ((i & 8) != 0) {
            filterMatch2 = c14633a.f42118d;
        }
        Objects.requireNonNull(c14633a);
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(str2, "matchedValue");
        return new C14633a(contact, str2, l, filterMatch2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14633a)) {
                return false;
            }
            C14633a c14633a = (C14633a) obj;
            return l.a(this.f42115a, c14633a.f42115a) && l.a(this.f42116b, c14633a.f42116b) && l.a(this.f42117c, c14633a.f42117c) && l.a(this.f42118d, c14633a.f42118d);
        }
        return true;
    }

    public int hashCode() {
        Contact contact = this.f42115a;
        int i = 0;
        int hashCode = contact != null ? contact.hashCode() : 0;
        String str = this.f42116b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        Long l = this.f42117c;
        int hashCode3 = l != null ? l.hashCode() : 0;
        FilterMatch filterMatch = this.f42118d;
        if (filterMatch != null) {
            i = filterMatch.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LocalResult(contact=");
        m8728C.append(this.f42115a);
        m8728C.append(", matchedValue=");
        m8728C.append(this.f42116b);
        m8728C.append(", refetchStartedAt=");
        m8728C.append(this.f42117c);
        m8728C.append(", filterMatch=");
        m8728C.append(this.f42118d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
