package androidx.recyclerview.widget;

import android.util.SparseIntArray;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$c.class */
public abstract class GridLayoutManager$c {

    /* renamed from: a */
    final SparseIntArray f1888a = new SparseIntArray();

    /* renamed from: b */
    final SparseIntArray f1889b = new SparseIntArray();

    /* renamed from: c */
    private boolean f1890c = false;

    /* renamed from: d */
    private boolean f1891d = false;

    /* renamed from: a */
    static int m5320a(SparseIntArray sparseIntArray, int i) {
        int size = sparseIntArray.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            if (sparseIntArray.keyAt(i3) < i) {
                i2 = i3 + 1;
            } else {
                size = i3 - 1;
            }
        }
        int i4 = i2 - 1;
        if (i4 < 0 || i4 >= sparseIntArray.size()) {
            return -1;
        }
        return sparseIntArray.keyAt(i4);
    }

    /* renamed from: b */
    int m5319b(int i, int i2) {
        if (!this.f1891d) {
            return m5317d(i, i2);
        }
        int i3 = this.f1889b.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int m5317d = m5317d(i, i2);
        this.f1889b.put(i, m5317d);
        return m5317d;
    }

    /* renamed from: c */
    int m5318c(int i, int i2) {
        if (!this.f1890c) {
            return m5316e(i, i2);
        }
        int i3 = this.f1888a.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int m5316e = m5316e(i, i2);
        this.f1888a.put(i, m5316e);
        return m5316e;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b3  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m5317d(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager$c.m5317d(int, int):int");
    }

    /* renamed from: e */
    public abstract int m5316e(int i, int i2);

    /* renamed from: f */
    public abstract int m5315f(int i);

    /* renamed from: g */
    public void m5314g() {
        this.f1889b.clear();
    }

    /* renamed from: h */
    public void m5313h() {
        this.f1888a.clear();
    }
}
