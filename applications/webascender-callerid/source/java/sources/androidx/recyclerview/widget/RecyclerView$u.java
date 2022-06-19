package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u.class */
public class RecyclerView$u {

    /* renamed from: a */
    SparseArray<C0365a> f1971a = new SparseArray<>();

    /* renamed from: b */
    private int f1972b = 0;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$u$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u$a.class */
    public static class C0365a {

        /* renamed from: a */
        final ArrayList<RecyclerView$d0> f1973a = new ArrayList<>();

        /* renamed from: b */
        int f1974b = 5;

        /* renamed from: c */
        long f1975c = 0;

        /* renamed from: d */
        long f1976d = 0;

        C0365a() {
        }
    }

    /* renamed from: g */
    private C0365a m5102g(int i) {
        C0365a c0365a = this.f1971a.get(i);
        C0365a c0365a2 = c0365a;
        if (c0365a == null) {
            c0365a2 = new C0365a();
            this.f1971a.put(i, c0365a2);
        }
        return c0365a2;
    }

    /* renamed from: a */
    public void m5108a() {
        this.f1972b++;
    }

    /* renamed from: b */
    public void m5107b() {
        for (int i = 0; i < this.f1971a.size(); i++) {
            this.f1971a.valueAt(i).f1973a.clear();
        }
    }

    /* renamed from: c */
    public void m5106c() {
        this.f1972b--;
    }

    /* renamed from: d */
    public void m5105d(int i, long j) {
        C0365a m5102g = m5102g(i);
        m5102g.f1976d = m5099j(m5102g.f1976d, j);
    }

    /* renamed from: e */
    public void m5104e(int i, long j) {
        C0365a m5102g = m5102g(i);
        m5102g.f1975c = m5099j(m5102g.f1975c, j);
    }

    /* renamed from: f */
    public RecyclerView$d0 m5103f(int i) {
        C0365a c0365a = this.f1971a.get(i);
        if (c0365a == null || c0365a.f1973a.isEmpty()) {
            return null;
        }
        ArrayList<RecyclerView$d0> arrayList = c0365a.f1973a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!arrayList.get(size).isAttachedToTransitionOverlay()) {
                return arrayList.remove(size);
            }
        }
        return null;
    }

    /* renamed from: h */
    public void m5101h(RecyclerView$g recyclerView$g, RecyclerView$g recyclerView$g2, boolean z) {
        if (recyclerView$g != null) {
            m5106c();
        }
        if (!z && this.f1972b == 0) {
            m5107b();
        }
        if (recyclerView$g2 != null) {
            m5108a();
        }
    }

    /* renamed from: i */
    public void m5100i(RecyclerView$d0 recyclerView$d0) {
        int itemViewType = recyclerView$d0.getItemViewType();
        ArrayList<RecyclerView$d0> arrayList = m5102g(itemViewType).f1973a;
        if (this.f1971a.get(itemViewType).f1974b <= arrayList.size()) {
            return;
        }
        recyclerView$d0.resetInternal();
        arrayList.add(recyclerView$d0);
    }

    /* renamed from: j */
    long m5099j(long j, long j2) {
        return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
    }

    /* renamed from: k */
    public boolean m5098k(int i, long j, long j2) {
        long j3 = m5102g(i).f1976d;
        return j3 == 0 || j + j3 < j2;
    }

    /* renamed from: l */
    public boolean m5097l(int i, long j, long j2) {
        long j3 = m5102g(i).f1975c;
        return j3 == 0 || j + j3 < j2;
    }
}
