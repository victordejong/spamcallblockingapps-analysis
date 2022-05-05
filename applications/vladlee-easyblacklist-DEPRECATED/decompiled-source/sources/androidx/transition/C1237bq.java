package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
/* renamed from: androidx.transition.bq */
/* loaded from: classes-dex2jar.jar:androidx/transition/bq.class */
final class C1237bq implements AbstractC1238br {

    /* renamed from: a */
    private final ViewOverlay f5275a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1237bq(View view) {
        this.f5275a = view.getOverlay();
    }

    @Override // androidx.transition.AbstractC1238br
    /* renamed from: a */
    public final void mo6526a(Drawable drawable) {
        this.f5275a.add(drawable);
    }

    @Override // androidx.transition.AbstractC1238br
    /* renamed from: b */
    public final void mo6525b(Drawable drawable) {
        this.f5275a.remove(drawable);
    }
}
