package p193e.p194a.p437c.p610y.p611n;

import com.truecaller.insights.C4030R;
import com.truecaller.insights.models.InsightsDomain;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p437c.p610y.C10885j;
import p193e.p194a.p437c.p610y.C10886k;
import s1.f0.r;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.i;
import w3.b.a.h;
import w3.b.a.p;
/* renamed from: e.a.c.y.n.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/n/f.class */
public final class C10895f {

    /* renamed from: a */
    public final AbstractC19223c0 f32362a;

    /* renamed from: b */
    public final C10886k f32363b;

    @Inject
    public C10895f(AbstractC19223c0 abstractC19223c0, C10886k c10886k) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(c10886k, "smartCardSeedManager");
        this.f32362a = abstractC19223c0;
        this.f32363b = c10886k;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x056c  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0574  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x059e  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x05cd  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x064a  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x069e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0372  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p194a.p437c.p610y.C10888l m25521a(com.truecaller.insights.models.InsightsDomain.C4062f r19) {
        /*
            Method dump skipped, instructions count: 1796
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p610y.p611n.C10895f.m25521a(com.truecaller.insights.models.InsightsDomain$f):e.a.c.y.l");
    }

    /* renamed from: b */
    public final Integer m25520b(b bVar) {
        p L = bVar.L();
        p h = p.h();
        l.d(h, "LocalDate.now()");
        h r = h.r(h, L);
        l.d(r, "Days.daysBetween(currentDate, date)");
        return Integer.valueOf(((i) r).a);
    }

    /* renamed from: c */
    public final C10885j m25519c(InsightsDomain.C4062f c4062f, String str) {
        C10885j c10885j;
        C10885j c10885j2;
        switch (str.hashCode()) {
            case -1271823248:
                c10885j = null;
                if (str.equals("flight")) {
                    String m35224l = c4062f.m35224l();
                    if (r.p(m35224l)) {
                        m35224l = null;
                    }
                    c10885j = null;
                    if (m35224l != null) {
                        String mo13768b = this.f32362a.mo13768b(C4030R.string.travel_info_flight, new Object[0]);
                        l.d(mo13768b, "resourceProvider.getStri…tring.travel_info_flight)");
                        c10885j2 = new C10885j(mo13768b, m35224l);
                        c10885j = c10885j2;
                        break;
                    }
                }
                break;
            case 97920:
                c10885j = null;
                if (str.equals("bus")) {
                    String m35224l2 = c4062f.m35224l();
                    if (r.p(m35224l2)) {
                        m35224l2 = null;
                    }
                    c10885j = null;
                    if (m35224l2 != null) {
                        String mo13768b2 = this.f32362a.mo13768b(C4030R.string.travel_info_bus, new Object[0]);
                        l.d(mo13768b2, "resourceProvider.getStri…R.string.travel_info_bus)");
                        c10885j2 = new C10885j(mo13768b2, m35224l2);
                        c10885j = c10885j2;
                        break;
                    }
                }
                break;
            case 92899676:
                c10885j = null;
                if (str.equals("alert")) {
                    String m35225k = c4062f.m35225k();
                    if (r.p(m35225k)) {
                        m35225k = null;
                    }
                    c10885j = null;
                    if (m35225k != null) {
                        c10885j = m25519c(c4062f, m35225k);
                        break;
                    }
                }
                break;
            case 110621192:
                c10885j = null;
                if (str.equals("train")) {
                    String m35223m = c4062f.m35223m();
                    if (r.p(m35223m)) {
                        m35223m = null;
                    }
                    c10885j = null;
                    if (m35223m != null) {
                        String mo13768b3 = this.f32362a.mo13768b(C4030R.string.travel_info_train_no, new Object[0]);
                        l.d(mo13768b3, "resourceProvider.getStri…ing.travel_info_train_no)");
                        c10885j2 = new C10885j(mo13768b3, m35223m);
                        c10885j = c10885j2;
                        break;
                    }
                }
                break;
            default:
                c10885j = null;
                break;
        }
        return c10885j;
    }

    /* renamed from: d */
    public final boolean m25518d(InsightsDomain.C4062f c4062f) {
        return l.a(c4062f.m35226j(), "bus") || l.a(c4062f.m35225k(), "bus");
    }

    /* renamed from: e */
    public final boolean m25517e(InsightsDomain.C4062f c4062f) {
        return l.a(c4062f.m35226j(), "flight") || l.a(c4062f.m35225k(), "flight");
    }
}
