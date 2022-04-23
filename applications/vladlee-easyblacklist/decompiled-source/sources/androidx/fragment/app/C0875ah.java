package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.ah */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/ah.class */
public final class C0875ah extends AbstractC0880am {
    /* renamed from: a */
    private static boolean m7795a(Transition transition) {
        return !m7790a((List) transition.getTargetIds()) || !m7790a((List) transition.getTargetNames()) || !m7790a((List) transition.getTargetTypes());
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final Object mo6490a(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.addTransition((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.addTransition((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6496a(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6493a(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new C0879al(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6492a(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m7794a(view, rect);
            ((Transition) obj).setEpicenterCallback(new C0876ai(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6491a(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            m7789a(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        mo6488a(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6489a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).addListener(new C0878ak(this, obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6488a(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition != null) {
            if (transition instanceof TransitionSet) {
                TransitionSet transitionSet = (TransitionSet) transition;
                int transitionCount = transitionSet.getTransitionCount();
                for (int i = 0; i < transitionCount; i++) {
                    mo6488a(transitionSet.getTransitionAt(i), arrayList);
                }
            } else if (!m7795a(transition) && m7790a((List) transition.getTargets())) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    transition.addTarget(arrayList.get(i2));
                }
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6487a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            mo6482b((Object) transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final boolean mo6494a(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: b */
    public final Object mo6486b(Object obj) {
        return obj != null ? ((Transition) obj).clone() : null;
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: b */
    public final Object mo6483b(Object obj, Object obj2, Object obj3) {
        Transition transition = (Transition) obj;
        Transition transition2 = (Transition) obj2;
        Transition transition3 = (Transition) obj3;
        if (transition != null && transition2 != null) {
            transition = new TransitionSet().addTransition(transition).addTransition(transition2).setOrdering(1);
        } else if (transition == null) {
            transition = transition2 != null ? transition2 : null;
        }
        if (transition3 == null) {
            return transition;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
        transitionSet.addTransition(transition3);
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: b */
    public final void mo6485b(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: b */
    public final void mo6484b(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).addListener(new C0877aj(this, view, arrayList));
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: b */
    public final void mo6482b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo6482b((Object) transitionSet.getTransitionAt(i), arrayList, arrayList2);
            }
        } else if (!m7795a(transition) && (targets = transition.getTargets()) != null && targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList2.get(i2));
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: c */
    public final Object mo6481c(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: c */
    public final void mo6480c(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).removeTarget(view);
        }
    }
}
