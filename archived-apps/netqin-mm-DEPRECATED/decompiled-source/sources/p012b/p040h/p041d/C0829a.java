package p012b.p040h.p041d;

import java.util.ArrayList;
import java.util.HashSet;
import p012b.p035f.C0793g;
import p012b.p042i.p053o.AbstractC0945e;
import p012b.p042i.p053o.C0946f;
/* renamed from: b.h.d.a */
/* loaded from: classes-dex2jar.jar:b/h/d/a.class */
public final class C0829a<T> {

    /* renamed from: a */
    public final AbstractC0945e<ArrayList<T>> f3944a = new C0946f(10);

    /* renamed from: b */
    public final C0793g<T, ArrayList<T>> f3945b = new C0793g<>();

    /* renamed from: c */
    public final ArrayList<T> f3946c = new ArrayList<>();

    /* renamed from: d */
    public final HashSet<T> f3947d = new HashSet<>();

    /* renamed from: a */
    public void m35815a() {
        int size = this.f3945b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> e = this.f3945b.m36011e(i);
            if (e != null) {
                m35811a((ArrayList) e);
            }
        }
        this.f3945b.clear();
    }

    /* renamed from: a */
    public void m35814a(T t) {
        if (!this.f3945b.containsKey(t)) {
            this.f3945b.put(t, null);
        }
    }

    /* renamed from: a */
    public void m35813a(T t, T t2) {
        if (!this.f3945b.containsKey(t) || !this.f3945b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList = this.f3945b.get(t);
        ArrayList<T> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = m35810b();
            this.f3945b.put(t, arrayList2);
        }
        arrayList2.add(t2);
    }

    /* renamed from: a */
    public final void m35812a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (!arrayList.contains(t)) {
            if (!hashSet.contains(t)) {
                hashSet.add(t);
                ArrayList<T> arrayList2 = this.f3945b.get(t);
                if (arrayList2 != null) {
                    int size = arrayList2.size();
                    for (int i = 0; i < size; i++) {
                        m35812a(arrayList2.get(i), arrayList, hashSet);
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
    public final void m35811a(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f3944a.mo35445a(arrayList);
    }

    /* renamed from: b */
    public final ArrayList<T> m35810b() {
        ArrayList<T> b = this.f3944a.mo35444b();
        ArrayList<T> arrayList = b;
        if (b == null) {
            arrayList = new ArrayList<>();
        }
        return arrayList;
    }

    /* renamed from: b */
    public boolean m35809b(T t) {
        return this.f3945b.containsKey(t);
    }

    /* renamed from: c */
    public ArrayList<T> m35808c() {
        this.f3946c.clear();
        this.f3947d.clear();
        int size = this.f3945b.size();
        for (int i = 0; i < size; i++) {
            m35812a(this.f3945b.m36013c(i), this.f3946c, this.f3947d);
        }
        return this.f3946c;
    }

    /* renamed from: c */
    public boolean m35807c(T t) {
        int size = this.f3945b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> e = this.f3945b.m36011e(i);
            if (e != null && e.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
