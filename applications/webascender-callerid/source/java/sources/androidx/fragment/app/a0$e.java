package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$e.class */
class a0$e extends Transition.EpicenterCallback {

    /* renamed from: a */
    final /* synthetic */ Rect f1427a;

    a0$e(a0 a0Var, Rect rect) {
        this.f1427a = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public Rect onGetEpicenter(Transition transition) {
        Rect rect = this.f1427a;
        if (rect == null || rect.isEmpty()) {
            return null;
        }
        return this.f1427a;
    }
}
