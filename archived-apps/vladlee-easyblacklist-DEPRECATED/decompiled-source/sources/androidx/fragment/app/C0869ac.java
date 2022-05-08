package androidx.fragment.app;

import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import androidx.core.app.AbstractC0620n;
import androidx.core.p037g.C0741t;
import androidx.p026b.C0529a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.ac */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/ac.class */
public final class C0869ac {

    /* renamed from: a */
    private static final int[] f3687a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b */
    private static final AbstractC0880am f3688b;

    /* renamed from: c */
    private static final AbstractC0880am f3689c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.ac$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/ac$a.class */
    public static final class C0870a {

        /* renamed from: a */
        public Fragment f3690a;

        /* renamed from: b */
        public boolean f3691b;

        /* renamed from: c */
        public C0865a f3692c;

        /* renamed from: d */
        public Fragment f3693d;

        /* renamed from: e */
        public boolean f3694e;

        /* renamed from: f */
        public C0865a f3695f;

        C0870a() {
        }
    }

    static {
        f3688b = Build.VERSION.SDK_INT >= 21 ? new C0875ah() : null;
        f3689c = m7817a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static View m7815a(C0529a<String, View> aVar, C0870a aVar2, Object obj, boolean z) {
        C0865a aVar3 = aVar2.f3692c;
        if (obj == null || aVar == null || aVar3.f3675r == null || aVar3.f3675r.isEmpty()) {
            return null;
        }
        return aVar.get((z ? aVar3.f3675r : aVar3.f3676s).get(0));
    }

    /* renamed from: a */
    private static C0529a<String, String> m7816a(int i, ArrayList<C0865a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        C0529a<String, String> aVar = new C0529a<>();
        while (true) {
            i3--;
            if (i3 < i2) {
                return aVar;
            }
            C0865a aVar2 = arrayList.get(i3);
            if (aVar2.m7839b(i)) {
                boolean booleanValue = arrayList2.get(i3).booleanValue();
                if (aVar2.f3675r != null) {
                    int size = aVar2.f3675r.size();
                    if (booleanValue) {
                        arrayList4 = aVar2.f3675r;
                        arrayList3 = aVar2.f3676s;
                    } else {
                        arrayList3 = aVar2.f3675r;
                        arrayList4 = aVar2.f3676s;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0529a<String, View> m7808a(AbstractC0880am amVar, C0529a<String, String> aVar, Object obj, C0870a aVar2) {
        AbstractC0620n nVar;
        ArrayList<String> arrayList;
        String a;
        Fragment fragment = aVar2.f3690a;
        View view = fragment.getView();
        if (aVar.isEmpty() || obj == null || view == null) {
            aVar.clear();
            return null;
        }
        C0529a<String, View> aVar3 = new C0529a<>();
        amVar.m7787a((Map<String, View>) aVar3, view);
        C0865a aVar4 = aVar2.f3692c;
        if (aVar2.f3691b) {
            nVar = fragment.m7870r();
            arrayList = aVar4.f3675r;
        } else {
            nVar = fragment.m7871q();
            arrayList = aVar4.f3676s;
        }
        if (arrayList != null) {
            aVar3.m8954a((Collection<?>) arrayList);
            aVar3.m8954a((Collection<?>) aVar.values());
        }
        if (nVar != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view2 = aVar3.get(str);
                if (view2 == null) {
                    String a2 = m7814a(aVar, str);
                    if (a2 != null) {
                        aVar.remove(a2);
                    }
                } else if (!str.equals(C0741t.m8314q(view2)) && (a = m7814a(aVar, str)) != null) {
                    aVar.put(a, C0741t.m8314q(view2));
                }
            }
        } else {
            for (int size2 = aVar.size() - 1; size2 >= 0; size2--) {
                if (!aVar3.containsKey(aVar.m8903c(size2))) {
                    aVar.m8902d(size2);
                }
            }
        }
        return aVar3;
    }

    /* renamed from: a */
    private static C0870a m7809a(C0870a aVar, SparseArray<C0870a> sparseArray, int i) {
        C0870a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new C0870a();
            sparseArray.put(i, aVar2);
        }
        return aVar2;
    }

    /* renamed from: a */
    private static AbstractC0880am m7817a() {
        try {
            return (AbstractC0880am) Class.forName("androidx.transition.v").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    private static AbstractC0880am m7813a(Fragment fragment, Fragment fragment2) {
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
        AbstractC0880am amVar = f3688b;
        if (amVar != null && m7802a(amVar, arrayList)) {
            return f3688b;
        }
        AbstractC0880am amVar2 = f3689c;
        if (amVar2 != null && m7802a(amVar2, arrayList)) {
            return f3689c;
        }
        if (f3688b == null && f3689c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    /* renamed from: a */
    private static Object m7807a(AbstractC0880am amVar, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return amVar.mo6481c(amVar.mo6486b(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    /* renamed from: a */
    private static Object m7806a(AbstractC0880am amVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return amVar.mo6486b(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    /* renamed from: a */
    private static Object m7803a(AbstractC0880am amVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? amVar.mo6490a(obj2, obj, obj3) : amVar.mo6483b(obj2, obj, obj3);
    }

    /* renamed from: a */
    private static String m7814a(C0529a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.m8903c(i))) {
                return aVar.m8905b(i);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static ArrayList<View> m7805a(AbstractC0880am amVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                amVar.m7791a(arrayList3, view2);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                amVar.mo6488a(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        } else {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m7812a(Fragment fragment, Fragment fragment2, boolean z, C0529a<String, View> aVar) {
        if ((z ? fragment2.m7871q() : fragment.m7871q()) != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.m8905b(i));
                arrayList.add(aVar.m8903c(i));
            }
        }
    }

    /* renamed from: a */
    private static void m7811a(C0865a aVar, SparseArray<C0870a> sparseArray, boolean z) {
        int size = aVar.f3661d.size();
        for (int i = 0; i < size; i++) {
            m7810a(aVar, aVar.f3661d.get(i), sparseArray, false, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0084, code lost:
        if (r0.f3588t != false) goto L_0x013d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f5, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x013a, code lost:
        if (r0.f3553H == false) goto L_0x013d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013d, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01db, code lost:
        if (r8.f3693d == null) goto L_0x01de;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:109:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m7810a(androidx.fragment.app.C0865a r7, androidx.fragment.app.AbstractC0867ab.C0868a r8, android.util.SparseArray<androidx.fragment.app.C0869ac.C0870a> r9, boolean r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0869ac.m7810a(androidx.fragment.app.a, androidx.fragment.app.ab$a, android.util.SparseArray, boolean, boolean):void");
    }

    /* renamed from: a */
    private static void m7804a(AbstractC0880am amVar, Object obj, Object obj2, C0529a<String, View> aVar, boolean z, C0865a aVar2) {
        if (aVar2.f3675r != null && !aVar2.f3675r.isEmpty()) {
            View view = aVar.get((z ? aVar2.f3676s : aVar2.f3675r).get(0));
            amVar.mo6492a(obj, view);
            if (obj2 != null) {
                amVar.mo6492a(obj2, view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0546, code lost:
        if (r0.isEmpty() != false) goto L_0x0549;
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x053d  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x05ed A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x05ed A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02ae  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m7801a(androidx.fragment.app.LayoutInflater$Factory2C0898n r16, java.util.ArrayList<androidx.fragment.app.C0865a> r17, java.util.ArrayList<java.lang.Boolean> r18, int r19, int r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 1527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0869ac.m7801a(androidx.fragment.app.n, java.util.ArrayList, java.util.ArrayList, int, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m7800a(ArrayList<View> arrayList, int i) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).setVisibility(i);
            }
        }
    }

    /* renamed from: a */
    private static void m7799a(ArrayList<View> arrayList, C0529a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View c = aVar.m8903c(size);
            if (collection.contains(C0741t.m8314q(c))) {
                arrayList.add(c);
            }
        }
    }

    /* renamed from: a */
    private static boolean m7802a(AbstractC0880am amVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!amVar.mo6494a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private static C0529a<String, View> m7797b(AbstractC0880am amVar, C0529a<String, String> aVar, Object obj, C0870a aVar2) {
        AbstractC0620n nVar;
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = aVar2.f3693d;
        C0529a<String, View> aVar3 = new C0529a<>();
        amVar.m7787a((Map<String, View>) aVar3, fragment.requireView());
        C0865a aVar4 = aVar2.f3695f;
        if (aVar2.f3694e) {
            nVar = fragment.m7871q();
            arrayList = aVar4.f3676s;
        } else {
            nVar = fragment.m7870r();
            arrayList = aVar4.f3675r;
        }
        aVar3.m8954a((Collection<?>) arrayList);
        if (nVar != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar3.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(C0741t.m8314q(view))) {
                    aVar.put(C0741t.m8314q(view), aVar.remove(str));
                }
            }
        } else {
            aVar.m8954a((Collection<?>) aVar3.keySet());
        }
        return aVar3;
    }

    /* renamed from: b */
    private static Object m7796b(AbstractC0880am amVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return amVar.mo6486b(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    /* renamed from: b */
    private static void m7798b(C0865a aVar, SparseArray<C0870a> sparseArray, boolean z) {
        if (aVar.f3658a.f3797o.mo7754a()) {
            for (int size = aVar.f3661d.size() - 1; size >= 0; size--) {
                m7810a(aVar, aVar.f3661d.get(size), sparseArray, true, z);
            }
        }
    }
}
