package p193e.p194a.p437c.p438a.p507p.p511d.p512q;

import android.content.Context;
import java.util.concurrent.CancellationException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p477g.C9087y0;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import p193e.p194a.p437c.p438a.p507p.p510c.C9458b;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import p193e.p194a.p437c.p610y.AbstractC10876i;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.d.q.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/q/j.class */
public final class C9501j extends AbstractC9490a<AbstractC9460d.C9465e> {

    /* renamed from: d */
    public p1 f28810d;

    /* renamed from: e */
    public final boolean f28811e = true;

    /* renamed from: f */
    public final boolean f28812f = true;

    /* renamed from: g */
    public final C9087y0 f28813g;

    /* renamed from: h */
    public final AbstractC10258h f28814h;

    /* renamed from: i */
    public final AbstractC8511a f28815i;

    /* renamed from: j */
    public final AbstractC9114h f28816j;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C9501j(p193e.p194a.p437c.p438a.p477g.C9087y0 r5, p193e.p194a.p437c.p548h.AbstractC10258h r6, p193e.p194a.p372b0.p419m.p422c.AbstractC8511a r7, p193e.p194a.p437c.p438a.p479i.AbstractC9114h r8) {
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
            java.lang.String r1 = "analyticsLogger"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            com.google.android.material.card.MaterialCardView r0 = r0.f27724a
            r9 = r0
            r0 = r9
            java.lang.String r1 = "binding.root"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            r1 = r9
            r2 = r8
            r0.<init>(r1, r2)
            r0 = r4
            r1 = r5
            r0.f28813g = r1
            r0 = r4
            r1 = r6
            r0.f28814h = r1
            r0 = r4
            r1 = r7
            r0.f28815i = r1
            r0 = r4
            r1 = r8
            r0.f28816j = r1
            r0 = r4
            r1 = 1
            r0.f28811e = r1
            r0 = r4
            r1 = 1
            r0.f28812f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p507p.p511d.p512q.C9501j.<init>(e.a.c.a.g.y0, e.a.c.h.h, e.a.b0.m.c.a, e.a.c.a.i.h):void");
    }

    @Override // p193e.p194a.p437c.p438a.p507p.p511d.p512q.AbstractC9490a
    /* renamed from: P4 */
    public boolean mo27501P4() {
        return this.f28811e;
    }

    @Override // p193e.p194a.p437c.p438a.p507p.p511d.p512q.AbstractC9490a
    /* renamed from: Q4 */
    public boolean mo27500Q4() {
        return this.f28812f;
    }

    @Override // p193e.p194a.p437c.p438a.p507p.p511d.p512q.AbstractC9490a
    /* renamed from: S4 */
    public void mo27499S4(AbstractC9460d.C9465e c9465e) {
        AbstractC9460d.C9465e c9465e2 = c9465e;
        l.e(c9465e2, "item");
        this.f28816j.mo27869Zd(C10480a.m26036O2(c9465e2, "click").m25827a());
        AbstractC10258h abstractC10258h = this.f28814h;
        Context m8700J = C22128a.m8700J(this.itemView, "itemView", "itemView.context");
        C9458b c9458b = c9465e2.f28708b.f28695a;
        C17891a1.C17902k.m15641U0(abstractC10258h, m8700J, c9458b.f28698a, c9458b.f28699b, "insights_smart_feed", 0, 16, null);
    }

    @Override // p193e.p194a.p437c.p438a.p507p.p511d.p512q.AbstractC9490a
    /* renamed from: T4 */
    public void mo27498T4() {
        p1 p1Var = this.f28810d;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
    }

    /* renamed from: U4 */
    public final void m27497U4(AbstractC10876i abstractC10876i, AbstractC9460d.C9465e c9465e) {
        l.e(abstractC10876i, "smartCardAction");
        l.e(c9465e, "item");
        C10530c m26036O2 = C10480a.m26036O2(c9465e, "click");
        m26036O2.m25826b(C10480a.m25922n3(abstractC10876i.mo25531a(), null, 1));
        this.f28816j.mo27869Zd(m26036O2.m25827a());
        C10480a.m25964f1(abstractC10876i);
    }
}
