package androidx.fragment.app;

import android.transition.Transition;
import android.view.View;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.aj */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/aj.class */
final class C0877aj implements Transition.TransitionListener {

    /* renamed from: a */
    final /* synthetic */ View f3726a;

    /* renamed from: b */
    final /* synthetic */ ArrayList f3727b;

    /* renamed from: c */
    final /* synthetic */ C0875ah f3728c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0877aj(C0875ah ahVar, View view, ArrayList arrayList) {
        this.f3728c = ahVar;
        this.f3726a = view;
        this.f3727b = arrayList;
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
        this.f3726a.setVisibility(8);
        int size = this.f3727b.size();
        for (int i = 0; i < size; i++) {
            ((View) this.f3727b.get(i)).setVisibility(0);
        }
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
    }
}
