package p193e.p194a.p437c.p610y.p611n;

import com.truecaller.insights.models.InsightsDomain;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p531c0.C10023j;
import p193e.p194a.p437c.p570j.AbstractC10442e;
import p193e.p194a.p437c.p570j.AbstractC10443f;
import p193e.p194a.p437c.p610y.C10886k;
import s1.z.c.l;
/* renamed from: e.a.c.y.n.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/n/b.class */
public final class C10891b {

    /* renamed from: a */
    public final AbstractC19223c0 f32347a;

    /* renamed from: b */
    public final AbstractC10442e<AbstractC10443f.C10444a> f32348b;

    /* renamed from: c */
    public final AbstractC9686e f32349c;

    /* renamed from: d */
    public final C10886k f32350d;

    @Inject
    public C10891b(AbstractC19223c0 abstractC19223c0, AbstractC10442e<AbstractC10443f.C10444a> abstractC10442e, AbstractC9686e abstractC9686e, C10886k c10886k) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC10442e, "deepLinkFactory");
        l.e(abstractC9686e, "environmentHelper");
        l.e(c10886k, "smartCardSeedManager");
        this.f32347a = abstractC19223c0;
        this.f32348b = abstractC10442e;
        this.f32349c = abstractC9686e;
        this.f32350d = c10886k;
    }

    /* renamed from: a */
    public final String m25528a(InsightsDomain.Bill bill) {
        String str;
        StringBuilder sb = new StringBuilder();
        String mo27306g = this.f32349c.mo27306g();
        if (!(bill.getDueCurrency().length() == 0) || !l.a(mo27306g, "IN")) {
            C10023j c10023j = C10023j.f29856b;
            str = C10023j.m26897c(bill.getDueCurrency(), mo27306g);
            if (str == null) {
                str = "";
            }
        } else {
            str = "₹";
        }
        sb.append(str);
        C10023j c10023j2 = C10023j.f29856b;
        sb.append(C10023j.m26899a(Double.parseDouble(bill.getDueAmt()), C10023j.m26898b(this.f32349c.mo27306g())));
        return sb.toString();
    }

    /* renamed from: b */
    public final boolean m25527b(InsightsDomain.Bill bill) {
        return (l.a(bill.getBillCategory(), "payment_due") || l.a(bill.getBillCategory(), "payment_notif")) && m25526c(bill.getDueAmt()) && l.a(bill.getDueInsType(), "creditcard");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        if ((r6.doubleValue() > ((double) 0)) != false) goto L11;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m25526c(java.lang.String r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.Double r0 = s1.f0.q.f(r0)
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L23
            r0 = r6
            double r0 = r0.doubleValue()
            r1 = 0
            double r1 = (double) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L1a
            r0 = 1
            r8 = r0
            goto L1c
        L1a:
            r0 = 0
            r8 = r0
        L1c:
            r0 = r8
            if (r0 == 0) goto L23
            goto L25
        L23:
            r0 = 0
            r6 = r0
        L25:
            r0 = r6
            if (r0 == 0) goto L2c
            goto L2e
        L2c:
            r0 = 0
            r7 = r0
        L2e:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p610y.p611n.C10891b.m25526c(java.lang.String):boolean");
    }

    /* renamed from: d */
    public final boolean m25525d(InsightsDomain.Bill bill) {
        boolean z = true;
        if ((!l.a(bill.getBillCategory(), "payment_due") && !l.a(bill.getBillCategory(), "payment_notif")) || !m25526c(bill.getDueAmt()) || !(!l.a(bill.getDueInsType(), "creditcard"))) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public final boolean m25524e(InsightsDomain.Bill bill) {
        return l.a(bill.getBillCategory(), "recharge_expiry");
    }

    /* renamed from: f */
    public final boolean m25523f(InsightsDomain.Bill bill) {
        return l.a(bill.getBillCategory(), "prepaid_bill") && m25526c(bill.getDueAmt());
    }
}
