package androidx.recyclerview.widget;

import android.database.Observable;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$h.class */
class RecyclerView$h extends Observable<RecyclerView$i> {
    /* renamed from: a */
    public boolean m5281a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    /* renamed from: b */
    public void m5280b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$i) ((Observable) this).mObservers.get(size)).m5274a();
        }
    }

    /* renamed from: c */
    public void m5279c(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$i) ((Observable) this).mObservers.get(size)).m5270e(i, i2, 1);
        }
    }

    /* renamed from: d */
    public void m5278d(int i, int i2) {
        m5277e(i, i2, null);
    }

    /* renamed from: e */
    public void m5277e(int i, int i2, Object obj) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$i) ((Observable) this).mObservers.get(size)).m5272c(i, i2, obj);
        }
    }

    /* renamed from: f */
    public void m5276f(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$i) ((Observable) this).mObservers.get(size)).m5271d(i, i2);
        }
    }

    /* renamed from: g */
    public void m5275g(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$i) ((Observable) this).mObservers.get(size)).m5269f(i, i2);
        }
    }
}
