package androidx.fragment.app;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.g */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/g.class */
public final class C0891g extends AbstractC0893i {

    /* renamed from: a */
    final /* synthetic */ Fragment f3765a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0891g(Fragment fragment) {
        this.f3765a = fragment;
    }

    @Override // androidx.fragment.app.AbstractC0893i
    /* renamed from: a */
    public final View mo7753a(int i) {
        if (this.f3765a.f3560O != null) {
            return this.f3765a.f3560O.findViewById(i);
        }
        throw new IllegalStateException("Fragment " + this + " does not have a view");
    }

    @Override // androidx.fragment.app.AbstractC0893i
    /* renamed from: a */
    public final boolean mo7754a() {
        return this.f3765a.f3560O != null;
    }
}
