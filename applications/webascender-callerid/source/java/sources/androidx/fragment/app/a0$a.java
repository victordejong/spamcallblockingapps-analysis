package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$a.class */
class a0$a extends Transition.EpicenterCallback {

    /* renamed from: a */
    final /* synthetic */ Rect f1416a;

    a0$a(a0 a0Var, Rect rect) {
        this.f1416a = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public Rect onGetEpicenter(Transition transition) {
        return this.f1416a;
    }
}
