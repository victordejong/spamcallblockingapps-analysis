package androidx.fragment.app;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.AbstractC0199o;
import androidx.core.p005os.C0226a;
import f.e.a;
import f.h.l.q;
import f.h.l.t;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.fragment.app.z */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/z.class */
public class C0302z {

    /* renamed from: a */
    private static final int[] f1629a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b */
    static final AbstractC0252b0 f1630b;

    /* renamed from: c */
    static final AbstractC0252b0 f1631c;

    /* renamed from: androidx.fragment.app.z$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$a.class */
    public class RunnableC0303a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC0309g f1632f;

        /* renamed from: g */
        final /* synthetic */ Fragment f1633g;

        /* renamed from: h */
        final /* synthetic */ C0226a f1634h;

        RunnableC0303a(AbstractC0309g abstractC0309g, Fragment fragment, C0226a c0226a) {
            this.f1632f = abstractC0309g;
            this.f1633g = fragment;
            this.f1634h = c0226a;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1632f.m5489a(this.f1633g, this.f1634h);
        }
    }

    /* renamed from: androidx.fragment.app.z$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$b.class */
    public class RunnableC0304b implements Runnable {

        /* renamed from: f */
        final /* synthetic */ ArrayList f1635f;

        RunnableC0304b(ArrayList arrayList) {
            this.f1635f = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0302z.m5517B(this.f1635f, 4);
        }
    }

    /* renamed from: androidx.fragment.app.z$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$c.class */
    public class RunnableC0305c implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC0309g f1636f;

        /* renamed from: g */
        final /* synthetic */ Fragment f1637g;

        /* renamed from: h */
        final /* synthetic */ C0226a f1638h;

        RunnableC0305c(AbstractC0309g abstractC0309g, Fragment fragment, C0226a c0226a) {
            this.f1636f = abstractC0309g;
            this.f1637g = fragment;
            this.f1638h = c0226a;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1636f.m5489a(this.f1637g, this.f1638h);
        }
    }

    /* renamed from: androidx.fragment.app.z$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$d.class */
    public class RunnableC0306d implements Runnable {

        /* renamed from: f */
        final /* synthetic */ Object f1639f;

        /* renamed from: g */
        final /* synthetic */ AbstractC0252b0 f1640g;

        /* renamed from: h */
        final /* synthetic */ View f1641h;

        /* renamed from: i */
        final /* synthetic */ Fragment f1642i;

        /* renamed from: j */
        final /* synthetic */ ArrayList f1643j;

        /* renamed from: k */
        final /* synthetic */ ArrayList f1644k;

        /* renamed from: l */
        final /* synthetic */ ArrayList f1645l;

        /* renamed from: m */
        final /* synthetic */ Object f1646m;

        RunnableC0306d(Object obj, AbstractC0252b0 abstractC0252b0, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f1639f = obj;
            this.f1640g = abstractC0252b0;
            this.f1641h = view;
            this.f1642i = fragment;
            this.f1643j = arrayList;
            this.f1644k = arrayList2;
            this.f1645l = arrayList3;
            this.f1646m = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f1639f;
            if (obj != null) {
                this.f1640g.m5832p(obj, this.f1641h);
                this.f1644k.addAll(C0302z.m5505k(this.f1640g, this.f1639f, this.f1642i, this.f1643j, this.f1641h));
            }
            if (this.f1645l != null) {
                if (this.f1646m != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.f1641h);
                    this.f1640g.m5831q(this.f1646m, this.f1645l, arrayList);
                }
                this.f1645l.clear();
                this.f1645l.add(this.f1641h);
            }
        }
    }

    /* renamed from: androidx.fragment.app.z$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$e.class */
    public class RunnableC0307e implements Runnable {

        /* renamed from: f */
        final /* synthetic */ Fragment f1647f;

        /* renamed from: g */
        final /* synthetic */ Fragment f1648g;

        /* renamed from: h */
        final /* synthetic */ boolean f1649h;

        /* renamed from: i */
        final /* synthetic */ a f1650i;

        /* renamed from: j */
        final /* synthetic */ View f1651j;

        /* renamed from: k */
        final /* synthetic */ AbstractC0252b0 f1652k;

        /* renamed from: l */
        final /* synthetic */ Rect f1653l;

        RunnableC0307e(Fragment fragment, Fragment fragment2, boolean z, a aVar, View view, AbstractC0252b0 abstractC0252b0, Rect rect) {
            this.f1647f = fragment;
            this.f1648g = fragment2;
            this.f1649h = z;
            this.f1650i = aVar;
            this.f1651j = view;
            this.f1652k = abstractC0252b0;
            this.f1653l = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0302z.m5510f(this.f1647f, this.f1648g, this.f1649h, this.f1650i, false);
            View view = this.f1651j;
            if (view != null) {
                this.f1652k.m5837k(view, this.f1653l);
            }
        }
    }

    /* renamed from: androidx.fragment.app.z$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$f.class */
    public class RunnableC0308f implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC0252b0 f1654f;

        /* renamed from: g */
        final /* synthetic */ a f1655g;

        /* renamed from: h */
        final /* synthetic */ Object f1656h;

        /* renamed from: i */
        final /* synthetic */ C0310h f1657i;

        /* renamed from: j */
        final /* synthetic */ ArrayList f1658j;

        /* renamed from: k */
        final /* synthetic */ View f1659k;

        /* renamed from: l */
        final /* synthetic */ Fragment f1660l;

        /* renamed from: m */
        final /* synthetic */ Fragment f1661m;

        /* renamed from: n */
        final /* synthetic */ boolean f1662n;

        /* renamed from: o */
        final /* synthetic */ ArrayList f1663o;

        /* renamed from: p */
        final /* synthetic */ Object f1664p;

        /* renamed from: q */
        final /* synthetic */ Rect f1665q;

        RunnableC0308f(AbstractC0252b0 abstractC0252b0, a aVar, Object obj, C0310h c0310h, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f1654f = abstractC0252b0;
            this.f1655g = aVar;
            this.f1656h = obj;
            this.f1657i = c0310h;
            this.f1658j = arrayList;
            this.f1659k = view;
            this.f1660l = fragment;
            this.f1661m = fragment2;
            this.f1662n = z;
            this.f1663o = arrayList2;
            this.f1664p = obj2;
            this.f1665q = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            a<String, View> m5508h = C0302z.m5508h(this.f1654f, this.f1655g, this.f1656h, this.f1657i);
            if (m5508h != null) {
                this.f1658j.addAll(m5508h.values());
                this.f1658j.add(this.f1659k);
            }
            C0302z.m5510f(this.f1660l, this.f1661m, this.f1662n, m5508h, false);
            Object obj = this.f1656h;
            if (obj != null) {
                this.f1654f.m5849A(obj, this.f1663o, this.f1658j);
                View m5496t = C0302z.m5496t(m5508h, this.f1657i, this.f1664p, this.f1662n);
                if (m5496t == null) {
                    return;
                }
                this.f1654f.m5837k(m5496t, this.f1665q);
            }
        }
    }

    /* renamed from: androidx.fragment.app.z$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$g.class */
    public interface AbstractC0309g {
        /* renamed from: a */
        void m5489a(Fragment fragment, C0226a c0226a);

        /* renamed from: b */
        void m5488b(Fragment fragment, C0226a c0226a);
    }

    /* renamed from: androidx.fragment.app.z$h */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$h.class */
    public static class C0310h {

        /* renamed from: a */
        public Fragment f1666a;

        /* renamed from: b */
        public boolean f1667b;

        /* renamed from: c */
        public a f1668c;

        /* renamed from: d */
        public Fragment f1669d;

        /* renamed from: e */
        public boolean f1670e;

        /* renamed from: f */
        public a f1671f;

        C0310h() {
        }
    }

    static {
        f1630b = Build.VERSION.SDK_INT >= 21 ? new a0() : null;
        f1631c = m5492x();
    }

    /* renamed from: A */
    private static void m5518A(AbstractC0252b0 abstractC0252b0, Object obj, Object obj2, a<String, View> aVar, boolean z, a aVar2) {
        ArrayList<String> arrayList = aVar2.f1617n;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = (View) aVar.get(z ? aVar2.f1618o.get(0) : aVar2.f1617n.get(0));
        abstractC0252b0.m5826v(obj, view);
        if (obj2 == null) {
            return;
        }
        abstractC0252b0.m5826v(obj2, view);
    }

    /* renamed from: B */
    public static void m5517B(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* renamed from: C */
    public static void m5516C(Context context, AbstractC0272g abstractC0272g, ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z, AbstractC0309g abstractC0309g) {
        ViewGroup viewGroup;
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            a aVar = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                m5511e(aVar, sparseArray, z);
            } else {
                m5513c(aVar, sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(context);
            int size = sparseArray.size();
            for (int i4 = 0; i4 < size; i4++) {
                int keyAt = sparseArray.keyAt(i4);
                a<String, String> m5512d = m5512d(keyAt, arrayList, arrayList2, i, i2);
                C0310h c0310h = (C0310h) sparseArray.valueAt(i4);
                if (abstractC0272g.m5780d() && (viewGroup = (ViewGroup) abstractC0272g.m5781c(keyAt)) != null) {
                    if (z) {
                        m5501o(viewGroup, c0310h, view, m5512d, abstractC0309g);
                    } else {
                        m5502n(viewGroup, c0310h, view, m5512d, abstractC0309g);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private static void m5515a(ArrayList<View> arrayList, a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View view = (View) aVar.n(size);
            if (collection.contains(t.I(view))) {
                arrayList.add(view);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
        if (r0.mAdded != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f0, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013c, code lost:
        if (r0.mHidden == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x013f, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01d1, code lost:
        if (r5.f1669d == null) goto L95;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01f5  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m5514b(androidx.fragment.app.a r4, androidx.fragment.app.AbstractC0300y.C0301a r5, android.util.SparseArray<androidx.fragment.app.C0302z.C0310h> r6, boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0302z.m5514b(androidx.fragment.app.a, androidx.fragment.app.y$a, android.util.SparseArray, boolean, boolean):void");
    }

    /* renamed from: c */
    public static void m5513c(a aVar, SparseArray<C0310h> sparseArray, boolean z) {
        int size = aVar.f1604a.size();
        for (int i = 0; i < size; i++) {
            m5514b(aVar, aVar.f1604a.get(i), sparseArray, false, z);
        }
    }

    /* renamed from: d */
    private static a<String, String> m5512d(int i, ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        a<String, String> aVar = new a<>();
        while (true) {
            i3--;
            if (i3 >= i2) {
                a aVar2 = arrayList.get(i3);
                if (aVar2.E(i)) {
                    boolean booleanValue = arrayList2.get(i3).booleanValue();
                    ArrayList<String> arrayList5 = aVar2.f1617n;
                    if (arrayList5 != null) {
                        int size = arrayList5.size();
                        if (booleanValue) {
                            arrayList3 = aVar2.f1617n;
                            arrayList4 = aVar2.f1618o;
                        } else {
                            arrayList4 = aVar2.f1617n;
                            arrayList3 = aVar2.f1618o;
                        }
                        for (int i4 = 0; i4 < size; i4++) {
                            String str = arrayList4.get(i4);
                            String str2 = arrayList3.get(i4);
                            String str3 = (String) aVar.remove(str2);
                            if (str3 != null) {
                                aVar.put(str, str3);
                            } else {
                                aVar.put(str, str2);
                            }
                        }
                    }
                }
            } else {
                return aVar;
            }
        }
    }

    /* renamed from: e */
    public static void m5511e(a aVar, SparseArray<C0310h> sparseArray, boolean z) {
        if (!aVar.r.m5634q0().m5780d()) {
            return;
        }
        for (int size = aVar.f1604a.size() - 1; size >= 0; size--) {
            m5514b(aVar, aVar.f1604a.get(size), sparseArray, true, z);
        }
    }

    /* renamed from: f */
    public static void m5510f(Fragment fragment, Fragment fragment2, boolean z, a<String, View> aVar, boolean z2) {
        AbstractC0199o enterTransitionCallback = z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback();
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.j(i));
                arrayList.add(aVar.n(i));
            }
            if (z2) {
                enterTransitionCallback.m6078c(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.m6079b(arrayList2, arrayList, null);
            }
        }
    }

    /* renamed from: g */
    private static boolean m5509g(AbstractC0252b0 abstractC0252b0, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!abstractC0252b0.m5843e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    static a<String, View> m5508h(AbstractC0252b0 abstractC0252b0, a<String, String> aVar, Object obj, C0310h c0310h) {
        AbstractC0199o abstractC0199o;
        ArrayList<String> arrayList;
        String m5499q;
        Fragment fragment = c0310h.f1666a;
        View view = fragment.getView();
        if (aVar.isEmpty() || obj == null || view == null) {
            aVar.clear();
            return null;
        }
        Map<String, View> aVar2 = new a<>();
        abstractC0252b0.m5838j(aVar2, view);
        a aVar3 = c0310h.f1668c;
        if (c0310h.f1667b) {
            abstractC0199o = fragment.getExitTransitionCallback();
            arrayList = aVar3.f1617n;
        } else {
            abstractC0199o = fragment.getEnterTransitionCallback();
            arrayList = aVar3.f1618o;
        }
        if (arrayList != null) {
            aVar2.p(arrayList);
            aVar2.p(aVar.values());
        }
        if (abstractC0199o != null) {
            abstractC0199o.m6080a(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view2 = (View) aVar2.get(str);
                if (view2 == null) {
                    String m5499q2 = m5499q(aVar, str);
                    if (m5499q2 != null) {
                        aVar.remove(m5499q2);
                    }
                } else if (!str.equals(t.I(view2)) && (m5499q = m5499q(aVar, str)) != null) {
                    aVar.put(m5499q, t.I(view2));
                }
            }
        } else {
            m5491y(aVar, aVar2);
        }
        return aVar2;
    }

    /* renamed from: i */
    private static a<String, View> m5507i(AbstractC0252b0 abstractC0252b0, a<String, String> aVar, Object obj, C0310h c0310h) {
        AbstractC0199o abstractC0199o;
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = c0310h.f1669d;
        Map<String, View> aVar2 = new a<>();
        abstractC0252b0.m5838j(aVar2, fragment.requireView());
        a aVar3 = c0310h.f1671f;
        if (c0310h.f1670e) {
            abstractC0199o = fragment.getEnterTransitionCallback();
            arrayList = aVar3.f1618o;
        } else {
            abstractC0199o = fragment.getExitTransitionCallback();
            arrayList = aVar3.f1617n;
        }
        if (arrayList != null) {
            aVar2.p(arrayList);
        }
        if (abstractC0199o != null) {
            abstractC0199o.m6080a(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = (View) aVar2.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(t.I(view))) {
                    aVar.put(t.I(view), (String) aVar.remove(str));
                }
            }
        } else {
            aVar.p(aVar2.keySet());
        }
        return aVar2;
    }

    /* renamed from: j */
    private static AbstractC0252b0 m5506j(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        AbstractC0252b0 abstractC0252b0 = f1630b;
        if (abstractC0252b0 != null && m5509g(abstractC0252b0, arrayList)) {
            return abstractC0252b0;
        }
        AbstractC0252b0 abstractC0252b02 = f1631c;
        if (abstractC0252b02 != null && m5509g(abstractC0252b02, arrayList)) {
            return abstractC0252b02;
        }
        if (abstractC0252b0 != null || abstractC0252b02 != null) {
            throw new IllegalArgumentException("Invalid Transition types");
        }
        return null;
    }

    /* renamed from: k */
    static ArrayList<View> m5505k(AbstractC0252b0 abstractC0252b0, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                abstractC0252b0.m5842f(arrayList3, view2);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                abstractC0252b0.m5846b(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        } else {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* renamed from: l */
    private static Object m5504l(AbstractC0252b0 abstractC0252b0, ViewGroup viewGroup, View view, a<String, String> aVar, C0310h c0310h, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Rect rect;
        Fragment fragment = c0310h.f1666a;
        Fragment fragment2 = c0310h.f1669d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = c0310h.f1667b;
        Object m5495u = aVar.isEmpty() ? null : m5495u(abstractC0252b0, fragment, fragment2, z);
        a<String, View> m5507i = m5507i(abstractC0252b0, aVar, m5495u, c0310h);
        if (aVar.isEmpty()) {
            m5495u = null;
        } else {
            arrayList.addAll(m5507i.values());
        }
        if (obj == null && obj2 == null && m5495u == null) {
            return null;
        }
        m5510f(fragment, fragment2, z, m5507i, true);
        if (m5495u != null) {
            Rect rect2 = new Rect();
            abstractC0252b0.m5822z(m5495u, view, arrayList);
            m5518A(abstractC0252b0, m5495u, obj2, m5507i, c0310h.f1670e, c0310h.f1671f);
            rect = rect2;
            if (obj != null) {
                abstractC0252b0.m5827u(obj, rect2);
                rect = rect2;
            }
        } else {
            rect = null;
        }
        q.a(viewGroup, new RunnableC0308f(abstractC0252b0, aVar, m5495u, c0310h, arrayList2, view, fragment, fragment2, z, arrayList, obj, rect));
        return m5495u;
    }

    /* renamed from: m */
    private static Object m5503m(AbstractC0252b0 abstractC0252b0, ViewGroup viewGroup, View view, a<String, String> aVar, C0310h c0310h, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        Fragment fragment = c0310h.f1666a;
        Fragment fragment2 = c0310h.f1669d;
        if (fragment != null) {
            fragment.requireView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = c0310h.f1667b;
        Object m5495u = aVar.isEmpty() ? null : m5495u(abstractC0252b0, fragment, fragment2, z);
        a<String, View> m5507i = m5507i(abstractC0252b0, aVar, m5495u, c0310h);
        a<String, View> m5508h = m5508h(abstractC0252b0, aVar, m5495u, c0310h);
        if (aVar.isEmpty()) {
            if (m5507i != null) {
                m5507i.clear();
            }
            if (m5508h != null) {
                m5508h.clear();
            }
            obj3 = null;
        } else {
            m5515a(arrayList, m5507i, aVar.keySet());
            m5515a(arrayList2, m5508h, aVar.values());
            obj3 = m5495u;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        m5510f(fragment, fragment2, z, m5507i, true);
        if (obj3 != null) {
            arrayList2.add(view);
            abstractC0252b0.m5822z(obj3, view, arrayList);
            m5518A(abstractC0252b0, obj3, obj2, m5507i, c0310h.f1670e, c0310h.f1671f);
            Rect rect2 = new Rect();
            view2 = m5496t(m5508h, c0310h, obj, z);
            if (view2 != null) {
                abstractC0252b0.m5827u(obj, rect2);
            }
            rect = rect2;
        } else {
            rect = null;
            view2 = null;
        }
        q.a(viewGroup, new RunnableC0307e(fragment, fragment2, z, m5508h, view2, abstractC0252b0, rect));
        return obj3;
    }

    /* renamed from: n */
    private static void m5502n(ViewGroup viewGroup, C0310h c0310h, View view, a<String, String> aVar, AbstractC0309g abstractC0309g) {
        Fragment fragment = c0310h.f1666a;
        Fragment fragment2 = c0310h.f1669d;
        AbstractC0252b0 m5506j = m5506j(fragment2, fragment);
        if (m5506j == null) {
            return;
        }
        boolean z = c0310h.f1667b;
        boolean z2 = c0310h.f1670e;
        Object m5498r = m5498r(m5506j, fragment, z);
        Object m5497s = m5497s(m5506j, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m5504l = m5504l(m5506j, viewGroup, view, aVar, c0310h, arrayList, arrayList2, m5498r, m5497s);
        if (m5498r == null && m5504l == null && m5497s == null) {
            return;
        }
        ArrayList<View> m5505k = m5505k(m5506j, m5497s, fragment2, arrayList, view);
        if (m5505k == null || m5505k.isEmpty()) {
            m5497s = null;
        }
        m5506j.m5847a(m5498r, view);
        Object m5494v = m5494v(m5506j, m5498r, m5497s, m5504l, fragment, c0310h.f1667b);
        if (fragment2 != null && m5505k != null && (m5505k.size() > 0 || arrayList.size() > 0)) {
            C0226a c0226a = new C0226a();
            abstractC0309g.m5488b(fragment2, c0226a);
            m5506j.m5825w(fragment2, m5494v, c0226a, new RunnableC0305c(abstractC0309g, fragment2, c0226a));
        }
        if (m5494v == null) {
            return;
        }
        ArrayList<View> arrayList3 = new ArrayList<>();
        m5506j.m5828t(m5494v, m5498r, arrayList3, m5497s, m5505k, m5504l, arrayList2);
        m5490z(m5506j, viewGroup, fragment, view, arrayList2, m5498r, arrayList3, m5497s, m5505k);
        m5506j.m5824x(viewGroup, arrayList2, aVar);
        m5506j.m5845c(viewGroup, m5494v);
        m5506j.m5829s(viewGroup, arrayList2, aVar);
    }

    /* renamed from: o */
    private static void m5501o(ViewGroup viewGroup, C0310h c0310h, View view, a<String, String> aVar, AbstractC0309g abstractC0309g) {
        Fragment fragment = c0310h.f1666a;
        Fragment fragment2 = c0310h.f1669d;
        AbstractC0252b0 m5506j = m5506j(fragment2, fragment);
        if (m5506j == null) {
            return;
        }
        boolean z = c0310h.f1667b;
        boolean z2 = c0310h.f1670e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m5498r = m5498r(m5506j, fragment, z);
        Object m5497s = m5497s(m5506j, fragment2, z2);
        Object m5503m = m5503m(m5506j, viewGroup, view, aVar, c0310h, arrayList2, arrayList, m5498r, m5497s);
        if (m5498r == null && m5503m == null && m5497s == null) {
            return;
        }
        ArrayList<View> m5505k = m5505k(m5506j, m5497s, fragment2, arrayList2, view);
        ArrayList<View> m5505k2 = m5505k(m5506j, m5498r, fragment, arrayList, view);
        m5517B(m5505k2, 4);
        Object m5494v = m5494v(m5506j, m5498r, m5497s, m5503m, fragment, z);
        if (fragment2 != null && m5505k != null && (m5505k.size() > 0 || arrayList2.size() > 0)) {
            C0226a c0226a = new C0226a();
            abstractC0309g.m5488b(fragment2, c0226a);
            m5506j.m5825w(fragment2, m5494v, c0226a, new RunnableC0303a(abstractC0309g, fragment2, c0226a));
        }
        if (m5494v == null) {
            return;
        }
        m5493w(m5506j, m5497s, fragment2, m5505k);
        ArrayList<String> m5833o = m5506j.m5833o(arrayList);
        m5506j.m5828t(m5494v, m5498r, m5505k2, m5497s, m5505k, m5503m, arrayList);
        m5506j.m5845c(viewGroup, m5494v);
        m5506j.m5823y(viewGroup, arrayList2, arrayList, m5833o, aVar);
        m5517B(m5505k2, 0);
        m5506j.m5849A(m5503m, arrayList2, arrayList);
    }

    /* renamed from: p */
    private static C0310h m5500p(C0310h c0310h, SparseArray<C0310h> sparseArray, int i) {
        C0310h c0310h2 = c0310h;
        if (c0310h == null) {
            c0310h2 = new C0310h();
            sparseArray.put(i, c0310h2);
        }
        return c0310h2;
    }

    /* renamed from: q */
    static String m5499q(a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.n(i))) {
                return (String) aVar.j(i);
            }
        }
        return null;
    }

    /* renamed from: r */
    private static Object m5498r(AbstractC0252b0 abstractC0252b0, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0252b0.m5841g(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    /* renamed from: s */
    private static Object m5497s(AbstractC0252b0 abstractC0252b0, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0252b0.m5841g(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    /* renamed from: t */
    static View m5496t(a<String, View> aVar, C0310h c0310h, Object obj, boolean z) {
        ArrayList<String> arrayList;
        a aVar2 = c0310h.f1668c;
        if (obj == null || aVar == null || (arrayList = aVar2.f1617n) == null || arrayList.isEmpty()) {
            return null;
        }
        return (View) aVar.get(z ? aVar2.f1617n.get(0) : aVar2.f1618o.get(0));
    }

    /* renamed from: u */
    private static Object m5495u(AbstractC0252b0 abstractC0252b0, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return abstractC0252b0.m5848B(abstractC0252b0.m5841g(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    /* renamed from: v */
    private static Object m5494v(AbstractC0252b0 abstractC0252b0, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? abstractC0252b0.m5834n(obj2, obj, obj3) : abstractC0252b0.m5835m(obj2, obj, obj3);
    }

    /* renamed from: w */
    private static void m5493w(AbstractC0252b0 abstractC0252b0, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment == null || obj == null || !fragment.mAdded || !fragment.mHidden || !fragment.mHiddenChanged) {
            return;
        }
        fragment.setHideReplaced(true);
        abstractC0252b0.m5830r(obj, fragment.getView(), arrayList);
        q.a(fragment.mContainer, new RunnableC0304b(arrayList));
    }

    /* renamed from: x */
    private static AbstractC0252b0 m5492x() {
        try {
            return (AbstractC0252b0) Class.forName("f.v.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: y */
    static void m5491y(a<String, String> aVar, a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey((String) aVar.n(size))) {
                aVar.l(size);
            }
        }
    }

    /* renamed from: z */
    private static void m5490z(AbstractC0252b0 abstractC0252b0, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        q.a(viewGroup, new RunnableC0306d(obj, abstractC0252b0, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }
}
