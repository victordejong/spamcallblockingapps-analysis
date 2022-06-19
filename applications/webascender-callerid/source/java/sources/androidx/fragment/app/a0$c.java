package androidx.fragment.app;

import android.transition.Transition;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$c.class */
class a0$c implements Transition.TransitionListener {

    /* renamed from: a */
    final /* synthetic */ Object f1419a;

    /* renamed from: b */
    final /* synthetic */ ArrayList f1420b;

    /* renamed from: c */
    final /* synthetic */ Object f1421c;

    /* renamed from: d */
    final /* synthetic */ ArrayList f1422d;

    /* renamed from: e */
    final /* synthetic */ Object f1423e;

    /* renamed from: f */
    final /* synthetic */ ArrayList f1424f;

    /* renamed from: g */
    final /* synthetic */ a0 f1425g;

    a0$c(a0 a0Var, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
        this.f1425g = a0Var;
        this.f1419a = obj;
        this.f1420b = arrayList;
        this.f1421c = obj2;
        this.f1422d = arrayList2;
        this.f1423e = obj3;
        this.f1424f = arrayList3;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
        Object obj = this.f1419a;
        if (obj != null) {
            this.f1425g.q(obj, this.f1420b, (ArrayList) null);
        }
        Object obj2 = this.f1421c;
        if (obj2 != null) {
            this.f1425g.q(obj2, this.f1422d, (ArrayList) null);
        }
        Object obj3 = this.f1423e;
        if (obj3 != null) {
            this.f1425g.q(obj3, this.f1424f, (ArrayList) null);
        }
    }
}
