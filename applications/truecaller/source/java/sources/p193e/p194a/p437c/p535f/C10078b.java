package p193e.p194a.p437c.p535f;

import com.truecaller.insights.models.InsightsDomain;
import javax.inject.Inject;
import p193e.p194a.p372b0.p419m.p423d.AbstractC8514a;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import s1.z.c.l;
/* renamed from: e.a.c.f.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/f/b.class */
public final class C10078b {

    /* renamed from: a */
    public final AbstractC8514a f29977a;

    /* renamed from: b */
    public final AbstractC9691j f29978b;

    /* renamed from: c */
    public final AbstractC9686e f29979c;

    @Inject
    public C10078b(AbstractC8514a abstractC8514a, AbstractC9691j abstractC9691j, AbstractC9686e abstractC9686e) {
        l.e(abstractC8514a, "senderInfoManager");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC9686e, "environmentHelper");
        this.f29977a = abstractC8514a;
        this.f29978b = abstractC9691j;
        this.f29979c = abstractC9686e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r3 != null) goto L7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m26703a(com.truecaller.insights.models.InsightsDomain.Bill r3) {
        /*
            r2 = this;
            r0 = r3
            w3.b.a.p r0 = r0.getDueDate()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            r0 = r3
            java.lang.String r0 = p193e.p194a.p437c.p578p.C10480a.m25870y0(r0)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            goto L18
        L15:
            java.lang.String r0 = ""
            r3 = r0
        L18:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p535f.C10078b.m26703a(com.truecaller.insights.models.InsightsDomain$Bill):java.lang.String");
    }

    /* renamed from: b */
    public final String m26702b(InsightsDomain.Bill bill) {
        String type = bill.getType();
        String str = "overdue";
        if (type.hashCode() != -1091295072 || !type.equals("overdue")) {
            str = "due";
        }
        return str;
    }
}
