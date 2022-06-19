package p193e.p194a.p437c.p552i.p565l.p566e;

import e.m.e.k;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import s1.z.c.l;
/* renamed from: e.a.c.i.l.e.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/l/e/a.class */
public final class C10401a {

    /* renamed from: a */
    public final C10402b f30964a;

    /* renamed from: b */
    public final C8601l0 f30965b;

    /* renamed from: c */
    public final AbstractC9691j f30966c;

    @Inject
    public C10401a(C10402b c10402b, C8601l0 c8601l0, AbstractC9691j abstractC9691j) {
        l.e(c10402b, "notificationBannerRepository");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f30964a = c10402b;
        this.f30965b = c8601l0;
        this.f30966c = abstractC9691j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0235 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r0v60, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v66 */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r26v4 */
    /* JADX WARN: Type inference failed for: r26v5 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.insights.core.smartnotifications.smsparser.models.NotificationBanner m26223a(java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p565l.p566e.C10401a.m26223a(java.lang.String):com.truecaller.insights.core.smartnotifications.smsparser.models.NotificationBanner");
    }

    /* renamed from: b */
    public final void m26222b(String str) {
        l.e(str, "bannerName");
        C10402b c10402b = this.f30964a;
        Objects.requireNonNull(c10402b);
        l.e(str, "bannerName");
        Map<String, Long> m26220b = c10402b.m26220b();
        Map<String, Integer> m26219c = c10402b.m26219c();
        m26220b.put(str, Long.valueOf(System.currentTimeMillis()));
        m26219c.put(str, Integer.valueOf(((Number) C19291g.m13571Z(m26219c, str, 0)).intValue() + 1));
        try {
            String m = new k().m(m26220b);
            AbstractC10028o abstractC10028o = c10402b.f30968b;
            l.d(m, "bannerLastShownTimeJson");
            abstractC10028o.mo26805z(m);
            String m2 = new k().m(m26219c);
            AbstractC10028o abstractC10028o2 = c10402b.f30968b;
            l.d(m2, "bannerShownCountJson");
            abstractC10028o2.mo26828n0(m2);
        } catch (Exception e) {
        }
    }
}
