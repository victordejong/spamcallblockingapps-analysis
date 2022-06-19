package p193e.p194a.p773g.p785j;

import androidx.fragment.app.FragmentManager;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p717f.AbstractC13706b;
import s1.z.c.l;
/* renamed from: e.a.g.j.n */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/n.class */
public final class C14296n implements AbstractC14294m {

    /* renamed from: a */
    public final Provider<AbstractC13706b> f41363a;

    @Inject
    public C14296n(Provider<AbstractC13706b> provider) {
        l.e(provider, "inCallUI");
        this.f41363a = provider;
    }

    @Override // p193e.p194a.p773g.p785j.AbstractC14294m
    /* renamed from: a */
    public boolean mo20283a() {
        return ((AbstractC13706b) this.f41363a.get()).mo21263f();
    }

    @Override // p193e.p194a.p773g.p785j.AbstractC14294m
    /* renamed from: d */
    public boolean mo20282d() {
        return ((AbstractC13706b) this.f41363a.get()).mo21265d();
    }

    @Override // p193e.p194a.p773g.p785j.AbstractC14294m
    /* renamed from: i */
    public void mo20281i(FragmentManager fragmentManager, boolean z) {
        l.e(fragmentManager, "fragmentManager");
        ((AbstractC13706b) this.f41363a.get()).mo21260i(fragmentManager, z);
    }
}
