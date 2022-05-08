package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
/* renamed from: androidx.fragment.app.al */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/al.class */
final class C0879al extends Transition.EpicenterCallback {

    /* renamed from: a */
    final /* synthetic */ Rect f3736a;

    /* renamed from: b */
    final /* synthetic */ C0875ah f3737b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0879al(C0875ah ahVar, Rect rect) {
        this.f3737b = ahVar;
        this.f3736a = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public final Rect onGetEpicenter(Transition transition) {
        Rect rect = this.f3736a;
        if (rect == null || rect.isEmpty()) {
            return null;
        }
        return this.f3736a;
    }
}
