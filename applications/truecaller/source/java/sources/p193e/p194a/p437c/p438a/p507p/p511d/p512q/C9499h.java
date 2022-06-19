package p193e.p194a.p437c.p438a.p507p.p511d.p512q;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p477g.C9084x0;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.d.q.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/q/h.class */
public final class C9499h extends AbstractC9490a<AbstractC9460d.C9464d> {

    /* renamed from: d */
    public i0 f28799d;

    /* renamed from: e */
    public Map<String, C8505a> f28800e = new LinkedHashMap();

    /* renamed from: f */
    public final boolean f28801f = true;

    /* renamed from: g */
    public final C9084x0 f28802g;

    /* renamed from: h */
    public final AbstractC10258h f28803h;

    /* renamed from: i */
    public final AbstractC8511a f28804i;

    /* renamed from: j */
    public final f f28805j;

    /* renamed from: k */
    public final f f28806k;

    /* renamed from: l */
    public final AbstractC9114h f28807l;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C9499h(p193e.p194a.p437c.p438a.p477g.C9084x0 r5, p193e.p194a.p437c.p548h.AbstractC10258h r6, p193e.p194a.p372b0.p419m.p422c.AbstractC8511a r7, @javax.inject.Named("IO") s1.w.f r8, @javax.inject.Named("UI") s1.w.f r9, p193e.p194a.p437c.p438a.p479i.AbstractC9114h r10) {
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
            java.lang.String r1 = "ioContext"
            s1.z.c.l.e(r0, r1)
            r0 = r9
            java.lang.String r1 = "uiContext"
            s1.z.c.l.e(r0, r1)
            r0 = r10
            java.lang.String r1 = "analyticsLogger"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            android.widget.FrameLayout r0 = r0.f27711a
            r11 = r0
            r0 = r11
            java.lang.String r1 = "binding.root"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            r1 = r11
            r2 = 0
            r0.<init>(r1, r2)
            r0 = r4
            r1 = r5
            r0.f28802g = r1
            r0 = r4
            r1 = r6
            r0.f28803h = r1
            r0 = r4
            r1 = r7
            r0.f28804i = r1
            r0 = r4
            r1 = r8
            r0.f28805j = r1
            r0 = r4
            r1 = r9
            r0.f28806k = r1
            r0 = r4
            r1 = r10
            r0.f28807l = r1
            r0 = r4
            java.util.LinkedHashMap r1 = new java.util.LinkedHashMap
            r2 = r1
            r2.<init>()
            r0.f28800e = r1
            r0 = r4
            r1 = 1
            r0.f28801f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p507p.p511d.p512q.C9499h.<init>(e.a.c.a.g.x0, e.a.c.h.h, e.a.b0.m.c.a, s1.w.f, s1.w.f, e.a.c.a.i.h):void");
    }

    @Override // p193e.p194a.p437c.p438a.p507p.p511d.p512q.AbstractC9490a
    /* renamed from: P4 */
    public boolean mo27501P4() {
        return false;
    }

    @Override // p193e.p194a.p437c.p438a.p507p.p511d.p512q.AbstractC9490a
    /* renamed from: Q4 */
    public boolean mo27500Q4() {
        return this.f28801f;
    }

    @Override // p193e.p194a.p437c.p438a.p507p.p511d.p512q.AbstractC9490a
    /* renamed from: S4 */
    public void mo27499S4(AbstractC9460d.C9464d c9464d) {
        AbstractC9460d.C9464d c9464d2 = c9464d;
        l.e(c9464d2, "item");
        c9464d2.f28707c.d(Boolean.TRUE);
        this.f28807l.mo27869Zd(C10480a.m26036O2(c9464d2, "click").m25827a());
    }

    @Override // p193e.p194a.p437c.p438a.p507p.p511d.p512q.AbstractC9490a
    /* renamed from: T4 */
    public void mo27498T4() {
        i0 i0Var = this.f28799d;
        if (i0Var != null) {
            d.S(i0Var, (CancellationException) null, 1);
        }
        this.f28800e.clear();
        this.f28802g.f27712b.removeAllViews();
    }
}
