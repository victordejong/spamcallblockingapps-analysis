package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
/* renamed from: androidx.fragment.app.ai */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/ai.class */
final class C0876ai extends Transition.EpicenterCallback {

    /* renamed from: a */
    final /* synthetic */ Rect f3724a;

    /* renamed from: b */
    final /* synthetic */ C0875ah f3725b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0876ai(C0875ah ahVar, Rect rect) {
        this.f3725b = ahVar;
        this.f3724a = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public final Rect onGetEpicenter(Transition transition) {
        return this.f3724a;
    }
}
