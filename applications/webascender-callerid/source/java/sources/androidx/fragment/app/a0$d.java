package androidx.fragment.app;

import android.transition.Transition;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$d.class */
class a0$d implements Transition.TransitionListener {

    /* renamed from: a */
    final /* synthetic */ Runnable f1426a;

    a0$d(a0 a0Var, Runnable runnable) {
        this.f1426a = runnable;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        this.f1426a.run();
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
    }
}
