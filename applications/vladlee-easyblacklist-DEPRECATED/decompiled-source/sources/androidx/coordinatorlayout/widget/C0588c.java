package androidx.coordinatorlayout.widget;

import androidx.core.p036f.C0683e;
import androidx.p026b.C0542i;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* renamed from: androidx.coordinatorlayout.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/c.class */
public final class C0588c<T> {

    /* renamed from: a */
    private final C0683e.AbstractC0684a<ArrayList<T>> f2679a = new C0683e.C0685b(10);

    /* renamed from: b */
    private final C0542i<T, ArrayList<T>> f2680b = new C0542i<>();

    /* renamed from: c */
    private final ArrayList<T> f2681c = new ArrayList<>();

    /* renamed from: d */
    private final HashSet<T> f2682d = new HashSet<>();

    /* renamed from: a */
    private void m8777a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (!arrayList.contains(t)) {
            if (!hashSet.contains(t)) {
                hashSet.add(t);
                ArrayList<T> arrayList2 = this.f2680b.get(t);
                if (arrayList2 != null) {
                    int size = arrayList2.size();
                    for (int i = 0; i < size; i++) {
                        m8777a(arrayList2.get(i), arrayList, hashSet);
                    }
                }
                hashSet.remove(t);
                arrayList.add(t);
                return;
            }
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
    }

    /* renamed from: a */
    public final void m8780a() {
        int size = this.f2680b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> c = this.f2680b.m8903c(i);
            if (c != null) {
                c.clear();
                this.f2679a.mo8551a(c);
            }
        }
        this.f2680b.clear();
    }

    /* renamed from: a */
    public final void m8779a(T t) {
        if (!this.f2680b.containsKey(t)) {
            this.f2680b.put(t, null);
        }
    }

    /* renamed from: a */
    public final void m8778a(T t, T t2) {
        if (!this.f2680b.containsKey(t) || !this.f2680b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList = this.f2680b.get(t);
        ArrayList<T> arrayList2 = arrayList;
        if (arrayList == null) {
            ArrayList<T> a = this.f2679a.mo8552a();
            arrayList2 = a;
            if (a == null) {
                arrayList2 = new ArrayList<>();
            }
            this.f2680b.put(t, arrayList2);
        }
        arrayList2.add(t2);
    }

    /* renamed from: b */
    public final ArrayList<T> m8776b() {
        this.f2681c.clear();
        this.f2682d.clear();
        int size = this.f2680b.size();
        for (int i = 0; i < size; i++) {
            m8777a(this.f2680b.m8905b(i), this.f2681c, this.f2682d);
        }
        return this.f2681c;
    }

    /* renamed from: b */
    public final boolean m8775b(T t) {
        return this.f2680b.containsKey(t);
    }

    /* renamed from: c */
    public final List m8774c(T t) {
        return this.f2680b.get(t);
    }

    /* renamed from: d */
    public final List<T> m8773d(T t) {
        int size = this.f2680b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ArrayList<T> c = this.f2680b.m8903c(i);
            arrayList = arrayList;
            if (c != null) {
                arrayList = arrayList;
                if (c.contains(t)) {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(this.f2680b.m8905b(i));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public final boolean m8772e(T t) {
        int size = this.f2680b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> c = this.f2680b.m8903c(i);
            if (c != null && c.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
