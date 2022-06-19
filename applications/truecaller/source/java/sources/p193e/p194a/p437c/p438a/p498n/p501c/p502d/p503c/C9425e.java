package p193e.p194a.p437c.p438a.p498n.p501c.p502d.p503c;

import android.content.Context;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.AbstractC8665e;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8662b;
import p193e.p194a.p437c.p438a.p477g.C9067r1;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p438a.p498n.p501c.p502d.C9418a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import q3.a.p1;
import s1.z.c.l;
/* renamed from: e.a.c.a.n.c.d.c.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/c/d/c/e.class */
public final class C9425e extends AbstractC8665e<AbstractC9235b.C9240e> {

    /* renamed from: e */
    public p1 f28623e;

    /* renamed from: f */
    public final C9067r1 f28624f;

    /* renamed from: g */
    public final AbstractC10258h f28625g;

    /* renamed from: h */
    public final AbstractC8511a f28626h;

    /* renamed from: i */
    public final C8662b f28627i;

    /* renamed from: j */
    public final AbstractC9691j f28628j;

    /* renamed from: k */
    public final C9418a f28629k;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C9425e(p193e.p194a.p437c.p438a.p477g.C9067r1 r5, p193e.p194a.p437c.p548h.AbstractC10258h r6, p193e.p194a.p372b0.p419m.p422c.AbstractC8511a r7, p193e.p194a.p437c.p438a.p479i.AbstractC9114h r8, p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8662b r9, p193e.p194a.p437c.p524b.AbstractC9691j r10, p193e.p194a.p437c.p438a.p498n.p501c.p502d.C9418a r11) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "binding"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            java.lang.String r1 = "messageLocator"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            java.lang.String r1 = "searchApi"
            s1.z.c.l.e(r0, r1)
            r0 = r8
            java.lang.String r1 = "lifeCycleAwareAnalyticsLogger"
            s1.z.c.l.e(r0, r1)
            r0 = r9
            java.lang.String r1 = "analyticsDetail"
            s1.z.c.l.e(r0, r1)
            r0 = r10
            java.lang.String r1 = "statusProvider"
            s1.z.c.l.e(r0, r1)
            r0 = r11
            java.lang.String r1 = "collapseState"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            com.google.android.material.card.MaterialCardView r0 = r0.f27643a
            r12 = r0
            r0 = r12
            java.lang.String r1 = "binding.root"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            r1 = r12
            r2 = r8
            r0.<init>(r1, r2)
            r0 = r4
            r1 = r5
            r0.f28624f = r1
            r0 = r4
            r1 = r6
            r0.f28625g = r1
            r0 = r4
            r1 = r7
            r0.f28626h = r1
            r0 = r4
            r1 = r9
            r0.f28627i = r1
            r0 = r4
            r1 = r10
            r0.f28628j = r1
            r0 = r4
            r1 = r11
            r0.f28629k = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p498n.p501c.p502d.p503c.C9425e.<init>(e.a.c.a.g.r1, e.a.c.h.h, e.a.b0.m.c.a, e.a.c.a.i.h, e.a.c.a.a.a.a.b, e.a.c.b.j, e.a.c.a.n.c.d.a):void");
    }

    @Override // p193e.p194a.p437c.p438a.p439a.p440a.p441a.AbstractC8665e
    /* renamed from: S4 */
    public void mo27509S4(AbstractC9235b.C9240e c9240e) {
        AbstractC9235b.C9240e c9240e2 = c9240e;
        l.e(c9240e2, "item");
        C8662b c8662b = this.f28627i;
        m28129P4(c8662b.f26535a, c9240e2.f28084p, c9240e2.f28074f, c9240e2.f28086r, c8662b.f26536b, (r15 & 32) != 0 ? "show_message" : null);
        AbstractC10258h abstractC10258h = this.f28625g;
        Context m8700J = C22128a.m8700J(this.itemView, "itemView", "itemView.context");
        long j = c9240e2.f28069a;
        long j2 = c9240e2.f28081m;
        String str = this.f28627i.f26536b;
        Integer valueOf = Integer.valueOf(c9240e2.f28085q);
        if (!(valueOf.intValue() == 2)) {
            valueOf = null;
        }
        abstractC10258h.mo26519a(m8700J, j, j2, str, valueOf != null ? valueOf.intValue() : 1);
    }
}
