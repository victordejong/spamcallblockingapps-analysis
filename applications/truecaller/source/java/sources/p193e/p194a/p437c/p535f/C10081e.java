package p193e.p194a.p437c.p535f;

import com.truecaller.insights.models.InsightsDomain;
import javax.inject.Inject;
import p193e.p194a.p437c.p438a.p479i.C9111e;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import s1.f0.w;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.f.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/f/e.class */
public final class C10081e {

    /* renamed from: a */
    public final AbstractC9691j f29987a;

    /* renamed from: b */
    public final C9111e f29988b;

    @Inject
    public C10081e(AbstractC9691j abstractC9691j, C9111e c9111e) {
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(c9111e, "insightsUiResFetcher");
        this.f29987a = abstractC9691j;
        this.f29988b = c9111e;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x0472, code lost:
        if (r36 != null) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x047f, code lost:
        if (r0.equals(com.razorpay.AnalyticsConstants.COMPLETE) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x048c, code lost:
        if (r0.equals("dose_complete") != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x048f, code lost:
        r36 = m26698b(r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0498, code lost:
        if (r36 == null) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0510, code lost:
        if (r36 != null) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x03fe, code lost:
        if (r0.equals("dose_due") != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0417, code lost:
        if (r36 != null) goto L108;
     */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p194a.p437c.p580r.AbstractC10518b.C10522d m26699a(com.truecaller.insights.models.InsightsDomain.C4059c r19, java.util.List<? extends com.truecaller.insights.binders.utils.EventUiProperties> r20) {
        /*
            Method dump skipped, instructions count: 1810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p535f.C10081e.m26699a(com.truecaller.insights.models.InsightsDomain$c, java.util.List):e.a.c.r.b$d");
    }

    /* renamed from: b */
    public final String m26698b(InsightsDomain.C4059c c4059c) {
        String m35241f = c4059c.m35241f();
        String str = null;
        if (!(m35241f.length() > 0)) {
            m35241f = null;
        }
        if (m35241f != null) {
            str = w.n0(m35241f, 15);
        }
        return str;
    }

    /* renamed from: c */
    public final String m26697c(InsightsDomain.C4059c c4059c) {
        b m35245b = c4059c.m35245b();
        if (m35245b != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(m35245b.q());
            int q = m35245b.q();
            if (q >= 20) {
                q %= 10;
            }
            sb.append(q != 1 ? q != 2 ? q != 3 ? "th" : "rd" : "nd" : "st");
            sb.append(' ');
            b.a A = m35245b.A();
            l.d(A, "dateTime.monthOfYear()");
            sb.append(A.b());
            return sb.toString();
        }
        return null;
    }
}
