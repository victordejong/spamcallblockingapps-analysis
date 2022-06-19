package androidx.fragment.app;

import android.transition.Transition;
import android.view.View;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$b.class */
class a0$b implements Transition.TransitionListener {

    /* renamed from: a */
    final /* synthetic */ View f1417a;

    /* renamed from: b */
    final /* synthetic */ ArrayList f1418b;

    a0$b(a0 a0Var, View view, ArrayList arrayList) {
        this.f1417a = view;
        this.f1418b = arrayList;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
        this.f1417a.setVisibility(8);
        int size = this.f1418b.size();
        for (int i = 0; i < size; i++) {
            ((View) this.f1418b.get(i)).setVisibility(0);
        }
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
        transition.removeListener(this);
        transition.addListener(this);
    }
}
