package androidx.coordinatorlayout.widget;

import f.e.g;
import f.h.k.e;
import f.h.k.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* renamed from: androidx.coordinatorlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/a.class */
public final class C0171a<T> {

    /* renamed from: a */
    private final e<ArrayList<T>> f1190a = new f(10);

    /* renamed from: b */
    private final g<T, ArrayList<T>> f1191b = new g<>();

    /* renamed from: c */
    private final ArrayList<T> f1192c = new ArrayList<>();

    /* renamed from: d */
    private final HashSet<T> f1193d = new HashSet<>();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    private void m6206e(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList arrayList2 = (ArrayList) this.f1191b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                m6206e(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    /* renamed from: f */
    private ArrayList<T> m6205f() {
        ArrayList<T> arrayList = (ArrayList) this.f1190a.b();
        ArrayList<T> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList<>();
        }
        return arrayList2;
    }

    /* renamed from: k */
    private void m6200k(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f1190a.a(arrayList);
    }

    /* renamed from: a */
    public void m6210a(T t, T t2) {
        if (!this.f1191b.containsKey(t) || !this.f1191b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList = (ArrayList) this.f1191b.get(t);
        ArrayList<T> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = m6205f();
            this.f1191b.put(t, arrayList2);
        }
        arrayList2.add(t2);
    }

    /* renamed from: b */
    public void m6209b(T t) {
        if (!this.f1191b.containsKey(t)) {
            this.f1191b.put(t, (Object) null);
        }
    }

    /* renamed from: c */
    public void m6208c() {
        int size = this.f1191b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayList = (ArrayList) this.f1191b.n(i);
            if (arrayList != null) {
                m6200k(arrayList);
            }
        }
        this.f1191b.clear();
    }

    /* renamed from: d */
    public boolean m6207d(T t) {
        return this.f1191b.containsKey(t);
    }

    /* renamed from: g */
    public List m6204g(T t) {
        return (List) this.f1191b.get(t);
    }

    /* renamed from: h */
    public List<T> m6203h(T t) {
        int size = this.f1191b.size();
        ArrayList arrayList = null;
        int i = 0;
        while (i < size) {
            ArrayList arrayList2 = (ArrayList) this.f1191b.n(i);
            ArrayList arrayList3 = arrayList;
            if (arrayList2 != null) {
                arrayList3 = arrayList;
                if (arrayList2.contains(t)) {
                    arrayList3 = arrayList;
                    if (arrayList == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(this.f1191b.j(i));
                }
            }
            i++;
            arrayList = arrayList3;
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public ArrayList<T> m6202i() {
        this.f1192c.clear();
        this.f1193d.clear();
        int size = this.f1191b.size();
        for (int i = 0; i < size; i++) {
            m6206e(this.f1191b.j(i), this.f1192c, this.f1193d);
        }
        return this.f1192c;
    }

    /* renamed from: j */
    public boolean m6201j(T t) {
        int size = this.f1191b.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = (ArrayList) this.f1191b.n(i);
            if (arrayList != null && arrayList.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
