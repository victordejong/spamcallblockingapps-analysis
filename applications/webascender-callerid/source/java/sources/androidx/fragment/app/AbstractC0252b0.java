package androidx.fragment.app;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.p005os.C0226a;
import f.h.l.q;
import f.h.l.t;
import f.h.l.v;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.fragment.app.b0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/b0.class */
public abstract class AbstractC0252b0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.b0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b0$a.class */
    public class RunnableC0253a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ int f1442f;

        /* renamed from: g */
        final /* synthetic */ ArrayList f1443g;

        /* renamed from: h */
        final /* synthetic */ ArrayList f1444h;

        /* renamed from: i */
        final /* synthetic */ ArrayList f1445i;

        /* renamed from: j */
        final /* synthetic */ ArrayList f1446j;

        RunnableC0253a(AbstractC0252b0 abstractC0252b0, int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f1442f = i;
            this.f1443g = arrayList;
            this.f1444h = arrayList2;
            this.f1445i = arrayList3;
            this.f1446j = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.f1442f; i++) {
                t.A0((View) this.f1443g.get(i), (String) this.f1444h.get(i));
                t.A0((View) this.f1445i.get(i), (String) this.f1446j.get(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.b0$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b0$b.class */
    public class RunnableC0254b implements Runnable {

        /* renamed from: f */
        final /* synthetic */ ArrayList f1447f;

        /* renamed from: g */
        final /* synthetic */ Map f1448g;

        RunnableC0254b(AbstractC0252b0 abstractC0252b0, ArrayList arrayList, Map map) {
            this.f1447f = arrayList;
            this.f1448g = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f1447f.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f1447f.get(i);
                String I = t.I(view);
                if (I != null) {
                    t.A0(view, AbstractC0252b0.m5839i(this.f1448g, I));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.b0$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b0$c.class */
    public class RunnableC0255c implements Runnable {

        /* renamed from: f */
        final /* synthetic */ ArrayList f1449f;

        /* renamed from: g */
        final /* synthetic */ Map f1450g;

        RunnableC0255c(AbstractC0252b0 abstractC0252b0, ArrayList arrayList, Map map) {
            this.f1449f = arrayList;
            this.f1450g = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f1449f.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f1449f.get(i);
                t.A0(view, (String) this.f1450g.get(t.I(view)));
            }
        }
    }

    /* renamed from: d */
    protected static void m5844d(List<View> list, View view) {
        int size = list.size();
        if (m5840h(list, view, size)) {
            return;
        }
        list.add(view);
        for (int i = size; i < list.size(); i++) {
            View view2 = list.get(i);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (!m5840h(list, childAt, size)) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    /* renamed from: h */
    private static boolean m5840h(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    static String m5839i(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    /* renamed from: l */
    protected static boolean m5836l(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: A */
    public abstract void m5849A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: B */
    public abstract Object m5848B(Object obj);

    /* renamed from: a */
    public abstract void m5847a(Object obj, View view);

    /* renamed from: b */
    public abstract void m5846b(Object obj, ArrayList<View> arrayList);

    /* renamed from: c */
    public abstract void m5845c(ViewGroup viewGroup, Object obj);

    /* renamed from: e */
    public abstract boolean m5843e(Object obj);

    /* renamed from: f */
    public void m5842f(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (!(view instanceof ViewGroup)) {
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (v.a(viewGroup)) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m5842f(arrayList, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: g */
    public abstract Object m5841g(Object obj);

    /* renamed from: j */
    public void m5838j(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String I = t.I(view);
            if (I != null) {
                map.put(I, view);
            }
            if (!(view instanceof ViewGroup)) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m5838j(map, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: k */
    public void m5837k(View view, Rect rect) {
        if (!t.P(view)) {
            return;
        }
        RectF rectF = new RectF();
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getMatrix().mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (!(viewParent instanceof View)) {
                int[] iArr = new int[2];
                view.getRootView().getLocationOnScreen(iArr);
                rectF.offset(iArr[0], iArr[1]);
                rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
                return;
            }
            View view2 = (View) viewParent;
            rectF.offset(-view2.getScrollX(), -view2.getScrollY());
            view2.getMatrix().mapRect(rectF);
            rectF.offset(view2.getLeft(), view2.getTop());
            parent = view2.getParent();
        }
    }

    /* renamed from: m */
    public abstract Object m5835m(Object obj, Object obj2, Object obj3);

    /* renamed from: n */
    public abstract Object m5834n(Object obj, Object obj2, Object obj3);

    /* renamed from: o */
    public ArrayList<String> m5833o(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            arrayList2.add(t.I(view));
            t.A0(view, (String) null);
        }
        return arrayList2;
    }

    /* renamed from: p */
    public abstract void m5832p(Object obj, View view);

    /* renamed from: q */
    public abstract void m5831q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: r */
    public abstract void m5830r(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: s */
    public void m5829s(ViewGroup viewGroup, ArrayList<View> arrayList, Map<String, String> map) {
        q.a(viewGroup, new RunnableC0255c(this, arrayList, map));
    }

    /* renamed from: t */
    public abstract void m5828t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: u */
    public abstract void m5827u(Object obj, Rect rect);

    /* renamed from: v */
    public abstract void m5826v(Object obj, View view);

    /* renamed from: w */
    public void m5825w(Fragment fragment, Object obj, C0226a c0226a, Runnable runnable) {
        runnable.run();
    }

    /* renamed from: x */
    public void m5824x(View view, ArrayList<View> arrayList, Map<String, String> map) {
        q.a(view, new RunnableC0254b(this, arrayList, map));
    }

    /* renamed from: y */
    public void m5823y(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            String I = t.I(view2);
            arrayList4.add(I);
            if (I != null) {
                t.A0(view2, (String) null);
                String str = map.get(I);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        t.A0(arrayList2.get(i2), I);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        q.a(view, new RunnableC0253a(this, size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    /* renamed from: z */
    public abstract void m5822z(Object obj, View view, ArrayList<View> arrayList);
}
