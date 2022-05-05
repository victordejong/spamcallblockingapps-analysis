package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.p037g.C0741t;
import androidx.p026b.C0529a;
import androidx.transition.C1200al;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.transition.ba */
/* loaded from: classes-dex2jar.jar:androidx/transition/ba.class */
public final class C1217ba {

    /* renamed from: b */
    private static Transition f5231b = new AutoTransition();

    /* renamed from: c */
    private static ThreadLocal<WeakReference<C0529a<ViewGroup, ArrayList<Transition>>>> f5232c = new ThreadLocal<>();

    /* renamed from: a */
    static ArrayList<ViewGroup> f5230a = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.ba$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ba$a.class */
    public static final class View$OnAttachStateChangeListenerC1218a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        Transition f5233a;

        /* renamed from: b */
        ViewGroup f5234b;

        View$OnAttachStateChangeListenerC1218a(Transition transition, ViewGroup viewGroup) {
            this.f5233a = transition;
            this.f5234b = viewGroup;
        }

        /* renamed from: a */
        private void m6538a() {
            this.f5234b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f5234b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            ArrayList<Transition> arrayList;
            m6538a();
            if (!C1217ba.f5230a.remove(this.f5234b)) {
                return true;
            }
            C0529a<ViewGroup, ArrayList<Transition>> a = C1217ba.m6540a();
            ArrayList<Transition> arrayList2 = a.get(this.f5234b);
            ArrayList arrayList3 = null;
            if (arrayList2 == null) {
                arrayList = new ArrayList<>();
                a.put(this.f5234b, arrayList);
            } else {
                arrayList = arrayList2;
                if (arrayList2.size() > 0) {
                    arrayList3 = new ArrayList(arrayList2);
                    arrayList = arrayList2;
                }
            }
            arrayList.add(this.f5233a);
            this.f5233a.mo6586a(new C1219bb(this, a));
            this.f5233a.m6613a(this.f5234b, false);
            if (arrayList3 != null) {
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).mo6572f(this.f5234b);
                }
            }
            this.f5233a.m6614a(this.f5234b);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            m6538a();
            C1217ba.f5230a.remove(this.f5234b);
            ArrayList<Transition> arrayList = C1217ba.m6540a().get(this.f5234b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().mo6572f(this.f5234b);
                }
            }
            this.f5233a.m6609a(true);
        }
    }

    /* renamed from: a */
    static C0529a<ViewGroup, ArrayList<Transition>> m6540a() {
        C0529a<ViewGroup, ArrayList<Transition>> aVar;
        WeakReference<C0529a<ViewGroup, ArrayList<Transition>>> weakReference = f5232c.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        C0529a<ViewGroup, ArrayList<Transition>> aVar2 = new C0529a<>();
        f5232c.set(new WeakReference<>(aVar2));
        return aVar2;
    }

    /* renamed from: a */
    public static void m6539a(ViewGroup viewGroup, Transition transition) {
        if (!f5230a.contains(viewGroup) && C0741t.m8373B(viewGroup)) {
            f5230a.add(viewGroup);
            Transition transition2 = transition;
            if (transition == null) {
                transition2 = f5231b;
            }
            Transition l = transition2.clone();
            ArrayList<Transition> arrayList = m6540a().get(viewGroup);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().mo6573e(viewGroup);
                }
            }
            if (l != null) {
                l.m6613a(viewGroup, true);
            }
            C1203an a = C1203an.m6545a(viewGroup);
            if (a != null) {
                a.m6546a();
            }
            viewGroup.setTag(C1200al.C1201a.f5206f, null);
            if (l != null && viewGroup != null) {
                View$OnAttachStateChangeListenerC1218a aVar = new View$OnAttachStateChangeListenerC1218a(l, viewGroup);
                viewGroup.addOnAttachStateChangeListener(aVar);
                viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
            }
        }
    }
}
