package p193e.p194a.p437c.p438a.p487k.p492e;

import androidx.core.widget.NestedScrollView;
import androidx.core.widget.NestedScrollView$b;
import n3.r.a.l;
import p193e.p194a.p372b0.p373a.p390w.AbstractC8343c;
/* renamed from: e.a.c.a.k.e.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/e/j.class */
public final class C9231j implements NestedScrollView$b {

    /* renamed from: a */
    public final /* synthetic */ C9223e f28023a;

    public C9231j(C9223e c9223e) {
        this.f28023a = c9223e;
    }

    @Override // androidx.core.widget.NestedScrollView$b
    /* renamed from: a */
    public final void mo2161a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        boolean z = i2 > i4;
        AbstractC8343c.AbstractC8344a activity = this.f28023a.getActivity();
        l lVar = activity;
        if (!(activity instanceof AbstractC8343c.AbstractC8344a)) {
            lVar = null;
        }
        AbstractC8343c.AbstractC8344a abstractC8344a = lVar;
        if (abstractC8344a != null) {
            abstractC8344a.mo28649v7(z);
        }
    }
}
