package p193e.p194a.p773g.p785j;

import com.razorpay.AnalyticsConstants;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import p193e.p194a.p997k3.p998j.C16461b;
import s1.z.c.l;
/* renamed from: e.a.g.j.j */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/j.class */
public final class C14288j {
    /* renamed from: a */
    public Long m20288a(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return C16461b.m17357o(contact) ? contact.getId() : contact.m35509l();
    }

    /* renamed from: b */
    public boolean m20287b(Contact contact, FilterMatch filterMatch) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(filterMatch, "filter");
        boolean z = false;
        if (filterMatch.m35811c()) {
            return false;
        }
        if (contact.m35574A0() || filterMatch.m35812b()) {
            z = true;
        }
        return z;
    }
}
