package androidx.fragment.app;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.C0590a;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.View$OnAttachStateChangeListenerC0738q;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.fragment.app.am */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/am.class */
public abstract class AbstractC0880am {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static ArrayList<String> m7792a(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            arrayList2.add(C0741t.m8314q(view));
            C0741t.m8342a(view, (String) null);
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m7794a(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect.set(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m7789a(List<View> list, View view) {
        int size = list.size();
        if (!m7788a(list, view, size)) {
            list.add(view);
            for (int i = size; i < list.size(); i++) {
                View view2 = list.get(i);
                if (view2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view2;
                    int childCount = viewGroup.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt = viewGroup.getChildAt(i2);
                        if (!m7788a(list, childAt, size)) {
                            list.add(childAt);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static boolean m7790a(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: a */
    private static boolean m7788a(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public abstract Object mo6490a(Object obj, Object obj2, Object obj3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7793a(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            String q = C0741t.m8314q(view2);
            arrayList4.add(q);
            if (q != null) {
                C0741t.m8342a(view2, (String) null);
                String str = map.get(q);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        C0741t.m8342a(arrayList2.get(i2), q);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        View$OnAttachStateChangeListenerC0738q.m8377a(view, new RunnableC0881an(this, size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    /* renamed from: a */
    public abstract void mo6496a(ViewGroup viewGroup, Object obj);

    /* renamed from: a */
    public abstract void mo6493a(Object obj, Rect rect);

    /* renamed from: a */
    public abstract void mo6492a(Object obj, View view);

    /* renamed from: a */
    public abstract void mo6491a(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: a */
    public abstract void mo6489a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: a */
    public abstract void mo6488a(Object obj, ArrayList<View> arrayList);

    /* renamed from: a */
    public abstract void mo6487a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7791a(ArrayList<View> arrayList, View view) {
        boolean z;
        if (view.getVisibility() != 0) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (Build.VERSION.SDK_INT >= 21) {
                z = viewGroup.isTransitionGroup();
            } else {
                Boolean bool = (Boolean) viewGroup.getTag(C0590a.C0592b.f2698M);
                z = ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && C0741t.m8314q(viewGroup) == null) ? false : true;
            }
            if (z) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m7791a(arrayList, viewGroup.getChildAt(i));
            }
            return;
        }
        arrayList.add(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7787a(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String q = C0741t.m8314q(view);
            if (q != null) {
                map.put(q, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    m7787a(map, viewGroup.getChildAt(i));
                }
            }
        }
    }

    /* renamed from: a */
    public abstract boolean mo6494a(Object obj);

    /* renamed from: b */
    public abstract Object mo6486b(Object obj);

    /* renamed from: b */
    public abstract Object mo6483b(Object obj, Object obj2, Object obj3);

    /* renamed from: b */
    public abstract void mo6485b(Object obj, View view);

    /* renamed from: b */
    public abstract void mo6484b(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: b */
    public abstract void mo6482b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: c */
    public abstract Object mo6481c(Object obj);

    /* renamed from: c */
    public abstract void mo6480c(Object obj, View view);
}
