package androidx.fragment.app;

import android.transition.Transition;
import android.view.View;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.ak */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/ak.class */
final class C0878ak implements Transition.TransitionListener {

    /* renamed from: a */
    final /* synthetic */ Object f3729a;

    /* renamed from: b */
    final /* synthetic */ ArrayList f3730b;

    /* renamed from: c */
    final /* synthetic */ Object f3731c;

    /* renamed from: d */
    final /* synthetic */ ArrayList f3732d;

    /* renamed from: e */
    final /* synthetic */ Object f3733e;

    /* renamed from: f */
    final /* synthetic */ ArrayList f3734f;

    /* renamed from: g */
    final /* synthetic */ C0875ah f3735g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0878ak(C0875ah ahVar, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
        this.f3735g = ahVar;
        this.f3729a = obj;
        this.f3730b = arrayList;
        this.f3731c = obj2;
        this.f3732d = arrayList2;
        this.f3733e = obj3;
        this.f3734f = arrayList3;
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        Object obj = this.f3729a;
        if (obj != null) {
            this.f3735g.mo6482b(obj, this.f3730b, (ArrayList<View>) null);
        }
        Object obj2 = this.f3731c;
        if (obj2 != null) {
            this.f3735g.mo6482b(obj2, this.f3732d, (ArrayList<View>) null);
        }
        Object obj3 = this.f3733e;
        if (obj3 != null) {
            this.f3735g.mo6482b(obj3, this.f3734f, (ArrayList<View>) null);
        }
    }
}
