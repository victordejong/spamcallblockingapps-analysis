package p193e.p194a.p437c.p438a.p514q.p519d;

import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.c.a.q.d.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/q/d/e.class */
public final class C9583e<T> implements AbstractC27012l0<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ C9577b f28996a;

    public C9583e(C9577b c9577b) {
        this.f28996a = c9577b;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(Boolean bool) {
        Boolean bool2 = bool;
        C9577b c9577b = this.f28996a;
        l.d(bool2, "isEmpty");
        boolean booleanValue = bool2.booleanValue();
        s1.a.l[] lVarArr = C9577b.f28986f;
        Group group = c9577b.m27417OA().f27527a;
        l.d(group, "binding.emptyState");
        C19286f.m13683U(group, booleanValue);
        RecyclerView recyclerView = c9577b.m27417OA().f27529c;
        l.d(recyclerView, "binding.updatesRv");
        C19286f.m13683U(recyclerView, !booleanValue);
    }
}
