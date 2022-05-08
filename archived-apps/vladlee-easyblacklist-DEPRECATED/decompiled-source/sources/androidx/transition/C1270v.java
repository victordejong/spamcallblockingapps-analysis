package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0880am;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.transition.v */
/* loaded from: classes-dex2jar.jar:androidx/transition/v.class */
public class C1270v extends AbstractC0880am {
    /* renamed from: a */
    private static boolean m6495a(Transition transition) {
        return !m7790a((List) transition.f5126c) || !m7790a((List) transition.m6600e()) || !m7790a((List) transition.m6599f());
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final Object mo6490a(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.m6585a((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.m6585a((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.m6585a((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6496a(ViewGroup viewGroup, Object obj) {
        C1217ba.m6539a(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6493a(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).mo6587a(new C1274z(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6492a(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m7794a(view, rect);
            ((Transition) obj).mo6587a(new C1271w(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6491a(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        ArrayList<View> arrayList2 = transitionSet.f5127d;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            m7789a((List<View>) arrayList2, arrayList.get(i));
        }
        arrayList2.add(view);
        arrayList.add(view);
        mo6488a(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6489a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).mo6586a(new C1273y(this, obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6488a(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition != null) {
            if (transition instanceof TransitionSet) {
                TransitionSet transitionSet = (TransitionSet) transition;
                int m = transitionSet.m6570m();
                for (int i = 0; i < m; i++) {
                    mo6488a(transitionSet.m6582b(i), arrayList);
                }
            } else if (!m6495a(transition) && m7790a((List) transition.f5127d)) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    transition.mo6577c(arrayList.get(i2));
                }
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: a */
    public final void mo6487a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.f5127d.clear();
            transitionSet.f5127d.addAll(arrayList2);
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
            transition = new TransitionSet().m6585a(transition).m6585a(transition2).m6592a(1);
        } else if (transition == null) {
            transition = transition2 != null ? transition2 : null;
        }
        if (transition3 == null) {
            return transition;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (transition != null) {
            transitionSet.m6585a(transition);
        }
        transitionSet.m6585a(transition3);
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: b */
    public final void mo6485b(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).mo6577c(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: b */
    public final void mo6484b(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).mo6586a(new C1272x(this, view, arrayList));
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: b */
    public final void mo6482b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int m = transitionSet.m6570m();
            for (int i = 0; i < m; i++) {
                mo6482b((Object) transitionSet.m6582b(i), arrayList, arrayList2);
            }
        } else if (!m6495a(transition)) {
            ArrayList<View> arrayList3 = transition.f5127d;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                int size = arrayList2 == null ? 0 : arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    transition.mo6577c(arrayList2.get(i2));
                }
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    transition.mo6574d(arrayList.get(size2));
                }
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
        transitionSet.m6585a((Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0880am
    /* renamed from: c */
    public final void mo6480c(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).mo6574d(view);
        }
    }
}
