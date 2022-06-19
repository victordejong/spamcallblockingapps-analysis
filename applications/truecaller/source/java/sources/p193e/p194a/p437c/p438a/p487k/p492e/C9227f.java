package p193e.p194a.p437c.p438a.p487k.p492e;

import com.truecaller.insights.p168ui.markedimportantpage.presentation.MarkedImportantViewModel;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26994c0;
import s1.z.c.l;
/* renamed from: e.a.c.a.k.e.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/e/f.class */
public final class C9227f<T> implements AbstractC27012l0<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ C9223e f28021a;

    public C9227f(C9223e c9223e) {
        this.f28021a = c9223e;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(Boolean bool) {
        Boolean bool2 = bool;
        AbstractC27028u lifecycle = this.f28021a.getLifecycle();
        l.d(lifecycle, "lifecycle");
        if (((C26994c0) lifecycle).f75501c == AbstractC27028u.EnumC27030b.RESUMED) {
            l.d(bool2, "it");
            if (bool2.booleanValue()) {
                C9223e c9223e = this.f28021a;
                s1.a.l[] lVarArr = C9223e.f28014e;
                c9223e.m27788OA().m35173h(false);
                return;
            }
        }
        C9223e c9223e2 = this.f28021a;
        s1.a.l[] lVarArr2 = C9223e.f28014e;
        MarkedImportantViewModel m27788OA = c9223e2.m27788OA();
        l.d(bool2, "it");
        boolean booleanValue = bool2.booleanValue();
        if (m27788OA.f12831i.mo27262d() || !m27788OA.f12831i.mo27289F()) {
            return;
        }
        m27788OA.f12832j.mo26527a(booleanValue, 0);
    }
}
