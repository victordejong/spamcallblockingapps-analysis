package androidx.transition;

import android.view.ViewGroup;
/* renamed from: androidx.transition.k */
/* loaded from: classes-dex2jar.jar:androidx/transition/k.class */
final class C1259k extends C1215az {

    /* renamed from: a */
    boolean f5315a = false;

    /* renamed from: b */
    final /* synthetic */ ViewGroup f5316b;

    /* renamed from: c */
    final /* synthetic */ ChangeBounds f5317c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1259k(ChangeBounds changeBounds, ViewGroup viewGroup) {
        this.f5317c = changeBounds;
        this.f5316b = viewGroup;
    }

    @Override // androidx.transition.C1215az, androidx.transition.Transition.AbstractC1183c
    /* renamed from: a */
    public final void mo6479a() {
        C1231bl.m6532a(this.f5316b, false);
    }

    @Override // androidx.transition.C1215az, androidx.transition.Transition.AbstractC1183c
    /* renamed from: a */
    public final void mo6478a(Transition transition) {
        if (!this.f5315a) {
            C1231bl.m6532a(this.f5316b, false);
        }
        transition.mo6579b(this);
    }

    @Override // androidx.transition.C1215az, androidx.transition.Transition.AbstractC1183c
    /* renamed from: b */
    public final void mo6477b() {
        C1231bl.m6532a(this.f5316b, true);
    }
}
