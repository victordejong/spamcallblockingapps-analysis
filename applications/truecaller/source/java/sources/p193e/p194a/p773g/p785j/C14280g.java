package p193e.p194a.p773g.p785j;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p372b0.p430q.C8601l0;
import s1.z.c.l;
/* renamed from: e.a.g.j.g */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/g.class */
public final class C14280g {

    /* renamed from: a */
    public final AbstractC19223c0 f41328a;

    /* renamed from: b */
    public final AbstractC18951b0 f41329b;

    /* renamed from: c */
    public final C8601l0 f41330c;

    /* renamed from: d */
    public final AbstractC19222c f41331d;

    /* renamed from: e */
    public final AbstractC8621z f41332e;

    /* renamed from: f */
    public final C20592g f41333f;

    @Inject
    public C14280g(AbstractC19223c0 abstractC19223c0, AbstractC18951b0 abstractC18951b0, C8601l0 c8601l0, AbstractC19222c abstractC19222c, AbstractC8621z abstractC8621z, C20592g c20592g) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC18951b0, "dateHelper");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC19222c, "clock");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(c20592g, "featuresRegistry");
        this.f41328a = abstractC19223c0;
        this.f41329b = abstractC18951b0;
        this.f41330c = c8601l0;
        this.f41331d = abstractC19222c;
        this.f41332e = abstractC8621z;
        this.f41333f = c20592g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if ((!(r0 == null || s1.f0.r.p(r0))) != false) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.data.entity.Number m20299a(com.truecaller.data.entity.Contact r4, java.lang.String r5) {
        /*
            r3 = this;
            r0 = r4
            r1 = r5
            com.truecaller.data.entity.Number r0 = p193e.p194a.p1114o5.C19103t.m14108e(r0, r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L33
            r0 = r4
            java.lang.String r1 = "it"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            java.lang.String r0 = r0.getCountryCode()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L28
            r0 = r5
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L23
            goto L28
        L23:
            r0 = 0
            r6 = r0
            goto L2a
        L28:
            r0 = 1
            r6 = r0
        L2a:
            r0 = r6
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L33
            goto L35
        L33:
            r0 = 0
            r4 = r0
        L35:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p785j.C14280g.m20299a(com.truecaller.data.entity.Contact, java.lang.String):com.truecaller.data.entity.Number");
    }

    /* renamed from: b */
    public String m20298b(Contact contact, String str) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(str, "eventNumber");
        Number m20299a = m20299a(contact, str);
        String str2 = str;
        if (m20299a != null) {
            AbstractC8621z abstractC8621z = this.f41332e;
            String m35479e = m20299a.m35479e();
            l.d(m35479e, "it.normalizedNumber");
            String countryCode = m20299a.getCountryCode();
            l.d(countryCode, "it.countryCode");
            String mo28188c = abstractC8621z.mo28188c(m35479e, countryCode);
            str2 = str;
            if (mo28188c != null) {
                str2 = mo28188c;
            }
        }
        return str2;
    }

    /* renamed from: c */
    public final String m20297c(HistoryEvent historyEvent, String str) {
        String mo13768b = this.f41328a.mo13768b(historyEvent.f11550q == 5 ? 2131888202 : 2131888195, str);
        l.d(mo13768b, "resourceProvider.getStri…call_ended, relativeTime)");
        return mo13768b;
    }
}
