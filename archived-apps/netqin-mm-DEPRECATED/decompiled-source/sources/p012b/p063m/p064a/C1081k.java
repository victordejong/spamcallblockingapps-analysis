package p012b.p063m.p064a;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import p012b.p035f.C0780a;
import p012b.p042i.p043h.AbstractC0866l;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.ViewTreeObserver$OnPreDrawListenerC1000s;
/* renamed from: b.m.a.k */
/* loaded from: classes-dex2jar.jar:b/m/a/k.class */
public class C1081k {

    /* renamed from: a */
    public static final int[] f4539a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b */
    public static final AbstractC1092m f4540b;

    /* renamed from: c */
    public static final AbstractC1092m f4541c;

    /* renamed from: b.m.a.k$a */
    /* loaded from: classes-dex2jar.jar:b/m/a/k$a.class */
    public static final class RunnableC1082a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f4542a;

        public RunnableC1082a(ArrayList arrayList) {
            this.f4542a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1081k.m34717a(this.f4542a, 4);
        }
    }

    /* renamed from: b.m.a.k$b */
    /* loaded from: classes-dex2jar.jar:b/m/a/k$b.class */
    public static final class RunnableC1083b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Object f4543a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC1092m f4544b;

        /* renamed from: c */
        public final /* synthetic */ View f4545c;

        /* renamed from: d */
        public final /* synthetic */ Fragment f4546d;

        /* renamed from: e */
        public final /* synthetic */ ArrayList f4547e;

        /* renamed from: f */
        public final /* synthetic */ ArrayList f4548f;

        /* renamed from: g */
        public final /* synthetic */ ArrayList f4549g;

        /* renamed from: h */
        public final /* synthetic */ Object f4550h;

        public RunnableC1083b(Object obj, AbstractC1092m mVar, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f4543a = obj;
            this.f4544b = mVar;
            this.f4545c = view;
            this.f4546d = fragment;
            this.f4547e = arrayList;
            this.f4548f = arrayList2;
            this.f4549g = arrayList3;
            this.f4550h = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f4543a;
            if (obj != null) {
                this.f4544b.mo34688b(obj, this.f4545c);
                this.f4548f.addAll(C1081k.m34721a(this.f4544b, this.f4543a, this.f4546d, this.f4547e, this.f4545c));
            }
            if (this.f4549g != null) {
                if (this.f4550h != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.f4545c);
                    this.f4544b.mo34697a(this.f4550h, this.f4549g, arrayList);
                }
                this.f4549g.clear();
                this.f4549g.add(this.f4545c);
            }
        }
    }

    /* renamed from: b.m.a.k$c */
    /* loaded from: classes-dex2jar.jar:b/m/a/k$c.class */
    public static final class RunnableC1084c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Fragment f4551a;

        /* renamed from: b */
        public final /* synthetic */ Fragment f4552b;

        /* renamed from: c */
        public final /* synthetic */ boolean f4553c;

        /* renamed from: d */
        public final /* synthetic */ C0780a f4554d;

        /* renamed from: e */
        public final /* synthetic */ View f4555e;

        /* renamed from: f */
        public final /* synthetic */ AbstractC1092m f4556f;

        /* renamed from: g */
        public final /* synthetic */ Rect f4557g;

        public RunnableC1084c(Fragment fragment, Fragment fragment2, boolean z, C0780a aVar, View view, AbstractC1092m mVar, Rect rect) {
            this.f4551a = fragment;
            this.f4552b = fragment2;
            this.f4553c = z;
            this.f4554d = aVar;
            this.f4555e = view;
            this.f4556f = mVar;
            this.f4557g = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1081k.m34736a(this.f4551a, this.f4552b, this.f4553c, (C0780a<String, View>) this.f4554d, false);
            View view = this.f4555e;
            if (view != null) {
                this.f4556f.m34709a(view, this.f4557g);
            }
        }
    }

    /* renamed from: b.m.a.k$d */
    /* loaded from: classes-dex2jar.jar:b/m/a/k$d.class */
    public static final class RunnableC1085d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC1092m f4558a;

        /* renamed from: b */
        public final /* synthetic */ C0780a f4559b;

        /* renamed from: c */
        public final /* synthetic */ Object f4560c;

        /* renamed from: d */
        public final /* synthetic */ C1086e f4561d;

        /* renamed from: e */
        public final /* synthetic */ ArrayList f4562e;

        /* renamed from: f */
        public final /* synthetic */ View f4563f;

        /* renamed from: g */
        public final /* synthetic */ Fragment f4564g;

        /* renamed from: h */
        public final /* synthetic */ Fragment f4565h;

        /* renamed from: i */
        public final /* synthetic */ boolean f4566i;

        /* renamed from: j */
        public final /* synthetic */ ArrayList f4567j;

        /* renamed from: k */
        public final /* synthetic */ Object f4568k;

        /* renamed from: l */
        public final /* synthetic */ Rect f4569l;

        public RunnableC1085d(AbstractC1092m mVar, C0780a aVar, Object obj, C1086e eVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f4558a = mVar;
            this.f4559b = aVar;
            this.f4560c = obj;
            this.f4561d = eVar;
            this.f4562e = arrayList;
            this.f4563f = view;
            this.f4564g = fragment;
            this.f4565h = fragment2;
            this.f4566i = z;
            this.f4567j = arrayList2;
            this.f4568k = obj2;
            this.f4569l = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0780a<String, View> a = C1081k.m34723a(this.f4558a, this.f4559b, this.f4560c, this.f4561d);
            if (a != null) {
                this.f4562e.addAll(a.values());
                this.f4562e.add(this.f4563f);
            }
            C1081k.m34736a(this.f4564g, this.f4565h, this.f4566i, a, false);
            Object obj = this.f4560c;
            if (obj != null) {
                this.f4558a.mo34685b(obj, this.f4567j, this.f4562e);
                View a2 = C1081k.m34734a(a, this.f4561d, this.f4568k, this.f4566i);
                if (a2 != null) {
                    this.f4558a.m34709a(a2, this.f4569l);
                }
            }
        }
    }

    /* renamed from: b.m.a.k$e */
    /* loaded from: classes-dex2jar.jar:b/m/a/k$e.class */
    public static class C1086e {

        /* renamed from: a */
        public Fragment f4570a;

        /* renamed from: b */
        public boolean f4571b;

        /* renamed from: c */
        public C1052a f4572c;

        /* renamed from: d */
        public Fragment f4573d;

        /* renamed from: e */
        public boolean f4574e;

        /* renamed from: f */
        public C1052a f4575f;
    }

    static {
        f4540b = Build.VERSION.SDK_INT >= 21 ? new C1087l() : null;
        f4541c = m34739a();
    }

    /* renamed from: a */
    public static View m34734a(C0780a<String, View> aVar, C1086e eVar, Object obj, boolean z) {
        ArrayList<String> arrayList;
        C1052a aVar2 = eVar.f4572c;
        if (obj == null || aVar == null || (arrayList = aVar2.f4527n) == null || arrayList.isEmpty()) {
            return null;
        }
        return aVar.get(z ? aVar2.f4527n.get(0) : aVar2.f4528o.get(0));
    }

    /* renamed from: a */
    public static C0780a<String, String> m34738a(int i, ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        C0780a<String, String> aVar = new C0780a<>();
        while (true) {
            i3--;
            if (i3 < i2) {
                return aVar;
            }
            C1052a aVar2 = arrayList.get(i3);
            if (aVar2.m34963b(i)) {
                boolean booleanValue = arrayList2.get(i3).booleanValue();
                ArrayList<String> arrayList5 = aVar2.f4527n;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (booleanValue) {
                        arrayList4 = aVar2.f4527n;
                        arrayList3 = aVar2.f4528o;
                    } else {
                        arrayList3 = aVar2.f4527n;
                        arrayList4 = aVar2.f4528o;
                    }
                    for (int i4 = 0; i4 < size; i4++) {
                        String str = arrayList3.get(i4);
                        String str2 = arrayList4.get(i4);
                        String remove = aVar.remove(str2);
                        if (remove != null) {
                            aVar.put(str, remove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static C0780a<String, View> m34723a(AbstractC1092m mVar, C0780a<String, String> aVar, Object obj, C1086e eVar) {
        AbstractC0866l lVar;
        ArrayList<String> arrayList;
        String a;
        Fragment fragment = eVar.f4570a;
        View L = fragment.m38450L();
        if (aVar.isEmpty() || obj == null || L == null) {
            aVar.clear();
            return null;
        }
        C0780a<String, View> aVar2 = new C0780a<>();
        mVar.m34691a((Map<String, View>) aVar2, L);
        C1052a aVar3 = eVar.f4572c;
        if (eVar.f4571b) {
            lVar = fragment.m38355s();
            arrayList = aVar3.f4527n;
        } else {
            lVar = fragment.m38359q();
            arrayList = aVar3.f4528o;
        }
        if (arrayList != null) {
            aVar2.m36072a((Collection<?>) arrayList);
            aVar2.m36072a((Collection<?>) aVar.values());
        }
        if (lVar != null) {
            lVar.m35703a(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar2.get(str);
                if (view == null) {
                    String a2 = m34733a(aVar, str);
                    if (a2 != null) {
                        aVar.remove(a2);
                    }
                } else if (!str.equals(C1002u.m35203s(view)) && (a = m34733a(aVar, str)) != null) {
                    aVar.put(a, C1002u.m35203s(view));
                }
            }
        } else {
            m34735a(aVar, aVar2);
        }
        return aVar2;
    }

    /* renamed from: a */
    public static C1086e m34728a(C1086e eVar, SparseArray<C1086e> sparseArray, int i) {
        C1086e eVar2 = eVar;
        if (eVar == null) {
            eVar2 = new C1086e();
            sparseArray.put(i, eVar2);
        }
        return eVar2;
    }

    /* renamed from: a */
    public static AbstractC1092m m34739a() {
        try {
            return (AbstractC1092m) Class.forName("androidx.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public static AbstractC1092m m34737a(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object r = fragment.m38357r();
            if (r != null) {
                arrayList.add(r);
            }
            Object D = fragment.m38458D();
            if (D != null) {
                arrayList.add(D);
            }
            Object F = fragment.m38456F();
            if (F != null) {
                arrayList.add(F);
            }
        }
        if (fragment2 != null) {
            Object p = fragment2.m38361p();
            if (p != null) {
                arrayList.add(p);
            }
            Object A = fragment2.m38461A();
            if (A != null) {
                arrayList.add(A);
            }
            Object E = fragment2.m38457E();
            if (E != null) {
                arrayList.add(E);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        AbstractC1092m mVar = f4540b;
        if (mVar != null && m34718a(mVar, arrayList)) {
            return f4540b;
        }
        AbstractC1092m mVar2 = f4541c;
        if (mVar2 != null && m34718a(mVar2, arrayList)) {
            return f4541c;
        }
        if (f4540b == null && f4541c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    /* renamed from: a */
    public static Object m34727a(AbstractC1092m mVar, ViewGroup viewGroup, View view, C0780a<String, String> aVar, C1086e eVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Rect rect;
        Fragment fragment = eVar.f4570a;
        Fragment fragment2 = eVar.f4573d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = eVar.f4571b;
        Object a = aVar.isEmpty() ? null : m34725a(mVar, fragment, fragment2, z);
        C0780a<String, View> b = m34711b(mVar, aVar, a, eVar);
        if (aVar.isEmpty()) {
            a = null;
        } else {
            arrayList.addAll(b.values());
        }
        if (obj == null && obj2 == null && a == null) {
            return null;
        }
        m34736a(fragment, fragment2, z, b, true);
        if (a != null) {
            Rect rect2 = new Rect();
            mVar.mo34687b(a, view, arrayList);
            m34720a(mVar, a, obj2, b, eVar.f4574e, eVar.f4575f);
            rect = rect2;
            if (obj != null) {
                mVar.mo34703a(obj, rect2);
                rect = rect2;
            }
        } else {
            rect = null;
        }
        ViewTreeObserver$OnPreDrawListenerC1000s.m35257a(viewGroup, new RunnableC1085d(mVar, aVar, a, eVar, arrayList2, view, fragment, fragment2, z, arrayList, obj, rect));
        return a;
    }

    /* renamed from: a */
    public static Object m34725a(AbstractC1092m mVar, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return mVar.mo34684c(mVar.mo34689b(z ? fragment2.m38456F() : fragment.m38457E()));
    }

    /* renamed from: a */
    public static Object m34724a(AbstractC1092m mVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return mVar.mo34689b(z ? fragment.m38461A() : fragment.m38361p());
    }

    /* renamed from: a */
    public static Object m34719a(AbstractC1092m mVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.m38379j() : fragment.m38383i() ? mVar.mo34686b(obj2, obj, obj3) : mVar.mo34700a(obj2, obj, obj3);
    }

    /* renamed from: a */
    public static String m34733a(C0780a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.m36011e(i))) {
                return aVar.m36013c(i);
            }
        }
        return null;
    }

    /* renamed from: a */
    public static ArrayList<View> m34721a(AbstractC1092m mVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View L = fragment.m38450L();
            if (L != null) {
                mVar.m34695a(arrayList3, L);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                mVar.mo34698a(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        } else {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* renamed from: a */
    public static void m34736a(Fragment fragment, Fragment fragment2, boolean z, C0780a<String, View> aVar, boolean z2) {
        AbstractC0866l q = z ? fragment2.m38359q() : fragment.m38359q();
        if (q != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.m36013c(i));
                arrayList.add(aVar.m36011e(i));
            }
            if (z2) {
                q.m35702b(arrayList2, arrayList, null);
            } else {
                q.m35704a(arrayList2, arrayList, null);
            }
        }
    }

    /* renamed from: a */
    public static void m34735a(C0780a<String, String> aVar, C0780a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.m36011e(size))) {
                aVar.m36012d(size);
            }
        }
    }

    /* renamed from: a */
    public static void m34732a(C1052a aVar, SparseArray<C1086e> sparseArray, boolean z) {
        int size = aVar.f4514a.size();
        for (int i = 0; i < size; i++) {
            m34731a(aVar, aVar.f4514a.get(i), sparseArray, false, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0082, code lost:
        if (r0.f1292k != false) goto L_0x013c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ed, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0139, code lost:
        if (r0.f1306y == false) goto L_0x013c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x013c, code lost:
        r16 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01d7, code lost:
        if (r8.f4573d == null) goto L_0x01da;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:110:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01cc  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m34731a(p012b.p063m.p064a.C1052a r7, p012b.p063m.p064a.AbstractC1079j.C1080a r8, android.util.SparseArray<p012b.p063m.p064a.C1081k.C1086e> r9, boolean r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p063m.p064a.C1081k.m34731a(b.m.a.a, b.m.a.j$a, android.util.SparseArray, boolean, boolean):void");
    }

    /* renamed from: a */
    public static void m34730a(LayoutInflater$Factory2C1062h hVar, int i, C1086e eVar, View view, C0780a<String, String> aVar) {
        Fragment fragment;
        Fragment fragment2;
        AbstractC1092m a;
        ViewGroup viewGroup = hVar.f4467r.mo34912c() ? (ViewGroup) hVar.f4467r.mo34919a(i) : null;
        if (viewGroup != null && (a = m34737a((fragment2 = eVar.f4573d), (fragment = eVar.f4570a))) != null) {
            boolean z = eVar.f4571b;
            boolean z2 = eVar.f4574e;
            Object a2 = m34724a(a, fragment, z);
            Object b = m34712b(a, fragment2, z2);
            ArrayList arrayList = new ArrayList();
            ArrayList<View> arrayList2 = new ArrayList<>();
            Object a3 = m34727a(a, viewGroup, view, aVar, eVar, arrayList, arrayList2, a2, b);
            if (a2 != null || a3 != null || b != null) {
                ArrayList<View> a4 = m34721a(a, b, fragment2, arrayList, view);
                if (a4 == null || a4.isEmpty()) {
                    b = null;
                }
                a.mo34702a(a2, view);
                Object a5 = m34719a(a, a2, b, a3, fragment, eVar.f4571b);
                if (a5 != null) {
                    ArrayList<View> arrayList3 = new ArrayList<>();
                    a.mo34699a(a5, a2, arrayList3, b, a4, a3, arrayList2);
                    m34726a(a, viewGroup, fragment, view, arrayList2, a2, arrayList3, b, a4);
                    a.m34707a((View) viewGroup, arrayList2, (Map<String, String>) aVar);
                    a.mo34706a(viewGroup, a5);
                    a.m34705a(viewGroup, arrayList2, (Map<String, String>) aVar);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m34729a(LayoutInflater$Factory2C1062h hVar, ArrayList<C1052a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        if (hVar.f4465p >= 1) {
            SparseArray sparseArray = new SparseArray();
            for (int i3 = i; i3 < i2; i3++) {
                C1052a aVar = arrayList.get(i3);
                if (arrayList2.get(i3).booleanValue()) {
                    m34715b(aVar, sparseArray, z);
                } else {
                    m34732a(aVar, sparseArray, z);
                }
            }
            if (sparseArray.size() != 0) {
                View view = new View(hVar.f4466q.m34910g());
                int size = sparseArray.size();
                for (int i4 = 0; i4 < size; i4++) {
                    int keyAt = sparseArray.keyAt(i4);
                    C0780a<String, String> a = m34738a(keyAt, arrayList, arrayList2, i, i2);
                    C1086e eVar = (C1086e) sparseArray.valueAt(i4);
                    if (z) {
                        m34714b(hVar, keyAt, eVar, view, a);
                    } else {
                        m34730a(hVar, keyAt, eVar, view, a);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static void m34726a(AbstractC1092m mVar, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        ViewTreeObserver$OnPreDrawListenerC1000s.m35257a(viewGroup, new RunnableC1083b(obj, mVar, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }

    /* renamed from: a */
    public static void m34722a(AbstractC1092m mVar, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.f1292k && fragment.f1306y && fragment.f1272M) {
            fragment.m38384h(true);
            mVar.mo34701a(obj, fragment.m38450L(), arrayList);
            ViewTreeObserver$OnPreDrawListenerC1000s.m35257a(fragment.f1265F, new RunnableC1082a(arrayList));
        }
    }

    /* renamed from: a */
    public static void m34720a(AbstractC1092m mVar, Object obj, Object obj2, C0780a<String, View> aVar, boolean z, C1052a aVar2) {
        ArrayList<String> arrayList = aVar2.f4527n;
        if (arrayList != null && !arrayList.isEmpty()) {
            View view = aVar.get(z ? aVar2.f4528o.get(0) : aVar2.f4527n.get(0));
            mVar.mo34683c(obj, view);
            if (obj2 != null) {
                mVar.mo34683c(obj2, view);
            }
        }
    }

    /* renamed from: a */
    public static void m34717a(ArrayList<View> arrayList, int i) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).setVisibility(i);
            }
        }
    }

    /* renamed from: a */
    public static void m34716a(ArrayList<View> arrayList, C0780a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View e = aVar.m36011e(size);
            if (collection.contains(C1002u.m35203s(e))) {
                arrayList.add(e);
            }
        }
    }

    /* renamed from: a */
    public static boolean m34718a(AbstractC1092m mVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!mVar.mo34704a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static C0780a<String, View> m34711b(AbstractC1092m mVar, C0780a<String, String> aVar, Object obj, C1086e eVar) {
        AbstractC0866l lVar;
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = eVar.f4573d;
        C0780a<String, View> aVar2 = new C0780a<>();
        mVar.m34691a((Map<String, View>) aVar2, fragment.m38348v0());
        C1052a aVar3 = eVar.f4575f;
        if (eVar.f4574e) {
            lVar = fragment.m38359q();
            arrayList = aVar3.f4528o;
        } else {
            lVar = fragment.m38355s();
            arrayList = aVar3.f4527n;
        }
        aVar2.m36072a((Collection<?>) arrayList);
        if (lVar != null) {
            lVar.m35703a(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar2.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(C1002u.m35203s(view))) {
                    aVar.put(C1002u.m35203s(view), aVar.remove(str));
                }
            }
        } else {
            aVar.m36072a((Collection<?>) aVar2.keySet());
        }
        return aVar2;
    }

    /* renamed from: b */
    public static Object m34713b(AbstractC1092m mVar, ViewGroup viewGroup, View view, C0780a<String, String> aVar, C1086e eVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        Fragment fragment = eVar.f4570a;
        Fragment fragment2 = eVar.f4573d;
        if (fragment != null) {
            fragment.m38348v0().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = eVar.f4571b;
        Object a = aVar.isEmpty() ? null : m34725a(mVar, fragment, fragment2, z);
        C0780a<String, View> b = m34711b(mVar, aVar, a, eVar);
        C0780a<String, View> a2 = m34723a(mVar, aVar, a, eVar);
        if (aVar.isEmpty()) {
            if (b != null) {
                b.clear();
            }
            if (a2 != null) {
                a2.clear();
            }
            obj3 = null;
        } else {
            m34716a(arrayList, b, aVar.keySet());
            m34716a(arrayList2, a2, aVar.values());
            obj3 = a;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        m34736a(fragment, fragment2, z, b, true);
        if (obj3 != null) {
            arrayList2.add(view);
            mVar.mo34687b(obj3, view, arrayList);
            m34720a(mVar, obj3, obj2, b, eVar.f4574e, eVar.f4575f);
            rect = new Rect();
            view2 = m34734a(a2, eVar, obj, z);
            if (view2 != null) {
                mVar.mo34703a(obj, rect);
            }
        } else {
            view2 = null;
            rect = null;
        }
        ViewTreeObserver$OnPreDrawListenerC1000s.m35257a(viewGroup, new RunnableC1084c(fragment, fragment2, z, a2, view2, mVar, rect));
        return obj3;
    }

    /* renamed from: b */
    public static Object m34712b(AbstractC1092m mVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return mVar.mo34689b(z ? fragment.m38458D() : fragment.m38357r());
    }

    /* renamed from: b */
    public static void m34715b(C1052a aVar, SparseArray<C1086e> sparseArray, boolean z) {
        if (aVar.f4418r.f4467r.mo34912c()) {
            for (int size = aVar.f4514a.size() - 1; size >= 0; size--) {
                m34731a(aVar, aVar.f4514a.get(size), sparseArray, true, z);
            }
        }
    }

    /* renamed from: b */
    public static void m34714b(LayoutInflater$Factory2C1062h hVar, int i, C1086e eVar, View view, C0780a<String, String> aVar) {
        Fragment fragment;
        Fragment fragment2;
        AbstractC1092m a;
        ViewGroup viewGroup = hVar.f4467r.mo34912c() ? (ViewGroup) hVar.f4467r.mo34919a(i) : null;
        if (viewGroup != null && (a = m34737a((fragment2 = eVar.f4573d), (fragment = eVar.f4570a))) != null) {
            boolean z = eVar.f4571b;
            boolean z2 = eVar.f4574e;
            ArrayList<View> arrayList = new ArrayList<>();
            ArrayList<View> arrayList2 = new ArrayList<>();
            Object a2 = m34724a(a, fragment, z);
            Object b = m34712b(a, fragment2, z2);
            Object b2 = m34713b(a, viewGroup, view, aVar, eVar, arrayList2, arrayList, a2, b);
            if (a2 != null || b2 != null || b != null) {
                ArrayList<View> a3 = m34721a(a, b, fragment2, arrayList2, view);
                ArrayList<View> a4 = m34721a(a, a2, fragment, arrayList, view);
                m34717a(a4, 4);
                Object a5 = m34719a(a, a2, b, b2, fragment, z);
                if (a5 != null) {
                    m34722a(a, b, fragment2, a3);
                    ArrayList<String> a6 = a.m34696a(arrayList);
                    a.mo34699a(a5, a2, a4, b, a3, b2, arrayList);
                    a.mo34706a(viewGroup, a5);
                    a.m34708a(viewGroup, arrayList2, arrayList, a6, aVar);
                    m34717a(a4, 0);
                    a.mo34685b(b2, arrayList2, arrayList);
                }
            }
        }
    }
}
