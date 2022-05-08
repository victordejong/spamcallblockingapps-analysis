package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
/* renamed from: androidx.transition.bj */
/* loaded from: classes-dex2jar.jar:androidx/transition/bj.class */
final class C1229bj implements AbstractC1230bk {

    /* renamed from: a */
    private final ViewGroupOverlay f5261a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1229bj(ViewGroup viewGroup) {
        this.f5261a = viewGroup.getOverlay();
    }

    @Override // androidx.transition.AbstractC1238br
    /* renamed from: a */
    public final void mo6526a(Drawable drawable) {
        this.f5261a.add(drawable);
    }

    @Override // androidx.transition.AbstractC1230bk
    /* renamed from: a */
    public final void mo6534a(View view) {
        this.f5261a.add(view);
    }

    @Override // androidx.transition.AbstractC1238br
    /* renamed from: b */
    public final void mo6525b(Drawable drawable) {
        this.f5261a.remove(drawable);
    }

    @Override // androidx.transition.AbstractC1230bk
    /* renamed from: b */
    public final void mo6533b(View view) {
        this.f5261a.remove(view);
    }
}
