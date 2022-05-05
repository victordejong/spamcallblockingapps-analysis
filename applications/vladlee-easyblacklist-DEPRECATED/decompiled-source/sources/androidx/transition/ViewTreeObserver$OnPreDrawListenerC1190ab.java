package androidx.transition;

import android.view.ViewTreeObserver;
import androidx.core.p037g.C0741t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.transition.ab */
/* loaded from: classes-dex2jar.jar:androidx/transition/ab.class */
public final class ViewTreeObserver$OnPreDrawListenerC1190ab implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    final /* synthetic */ C1189aa f5183a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTreeObserver$OnPreDrawListenerC1190ab(C1189aa aaVar) {
        this.f5183a = aaVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        C1189aa aaVar = this.f5183a;
        aaVar.f5178e = aaVar.f5174a.getMatrix();
        C0741t.m8329e(this.f5183a);
        if (this.f5183a.f5175b == null || this.f5183a.f5176c == null) {
            return true;
        }
        this.f5183a.f5175b.endViewTransition(this.f5183a.f5176c);
        C0741t.m8329e(this.f5183a.f5175b);
        C1189aa aaVar2 = this.f5183a;
        aaVar2.f5175b = null;
        aaVar2.f5176c = null;
        return true;
    }
}
