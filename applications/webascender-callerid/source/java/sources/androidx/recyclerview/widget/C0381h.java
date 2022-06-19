package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h.class */
public class C0381h {

    /* renamed from: a */
    private static final Comparator<C0388g> f2095a = new C0382a();

    /* renamed from: androidx.recyclerview.widget.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h$a.class */
    static final class C0382a implements Comparator<C0388g> {
        C0382a() {
        }

        /* renamed from: a */
        public int compare(C0388g c0388g, C0388g c0388g2) {
            int i = c0388g.f2110a - c0388g2.f2110a;
            int i2 = i;
            if (i == 0) {
                i2 = c0388g.f2111b - c0388g2.f2111b;
            }
            return i2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h$b.class */
    public static abstract class AbstractC0383b {
        public abstract boolean areContentsTheSame(int i, int i2);

        public abstract boolean areItemsTheSame(int i, int i2);

        public Object getChangePayload(int i, int i2) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    /* renamed from: androidx.recyclerview.widget.h$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h$c.class */
    public static class C0384c {

        /* renamed from: a */
        private final List<C0388g> f2096a;

        /* renamed from: b */
        private final int[] f2097b;

        /* renamed from: c */
        private final int[] f2098c;

        /* renamed from: d */
        private final AbstractC0383b f2099d;

        /* renamed from: e */
        private final int f2100e;

        /* renamed from: f */
        private final int f2101f;

        /* renamed from: g */
        private final boolean f2102g;

        C0384c(AbstractC0383b abstractC0383b, List<C0388g> list, int[] iArr, int[] iArr2, boolean z) {
            this.f2096a = list;
            this.f2097b = iArr;
            this.f2098c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.f2099d = abstractC0383b;
            this.f2100e = abstractC0383b.getOldListSize();
            this.f2101f = abstractC0383b.getNewListSize();
            this.f2102g = z;
            m4936a();
            m4930g();
        }

        /* renamed from: a */
        private void m4936a() {
            C0388g c0388g = this.f2096a.isEmpty() ? null : this.f2096a.get(0);
            if (c0388g != null && c0388g.f2110a == 0 && c0388g.f2111b == 0) {
                return;
            }
            C0388g c0388g2 = new C0388g();
            c0388g2.f2110a = 0;
            c0388g2.f2111b = 0;
            c0388g2.f2113d = false;
            c0388g2.f2112c = 0;
            c0388g2.f2114e = false;
            this.f2096a.add(0, c0388g2);
        }

        /* renamed from: b */
        private void m4935b(List<C0386e> list, AbstractC0393o abstractC0393o, int i, int i2, int i3) {
            if (!this.f2102g) {
                abstractC0393o.onInserted(i, i2);
                return;
            }
            while (true) {
                i2--;
                if (i2 < 0) {
                    return;
                }
                int[] iArr = this.f2098c;
                int i4 = i3 + i2;
                int i5 = iArr[i4] & 31;
                if (i5 == 0) {
                    abstractC0393o.onInserted(i, 1);
                    for (C0386e c0386e : list) {
                        c0386e.f2104b++;
                    }
                } else if (i5 == 4 || i5 == 8) {
                    int i6 = iArr[i4] >> 5;
                    abstractC0393o.onMoved(m4928i(list, i6, true).f2104b, i);
                    if (i5 == 4) {
                        abstractC0393o.onChanged(i, 1, this.f2099d.getChangePayload(i6, i4));
                    }
                } else if (i5 != 16) {
                    throw new IllegalStateException("unknown flag for pos " + i4 + " " + Long.toBinaryString(i5));
                } else {
                    list.add(new C0386e(i4, i, false));
                }
            }
        }

        /* renamed from: c */
        private void m4934c(List<C0386e> list, AbstractC0393o abstractC0393o, int i, int i2, int i3) {
            if (!this.f2102g) {
                abstractC0393o.onRemoved(i, i2);
                return;
            }
            while (true) {
                i2--;
                if (i2 < 0) {
                    return;
                }
                int[] iArr = this.f2097b;
                int i4 = i3 + i2;
                int i5 = iArr[i4] & 31;
                if (i5 == 0) {
                    abstractC0393o.onRemoved(i + i2, 1);
                    for (C0386e c0386e : list) {
                        c0386e.f2104b--;
                    }
                } else if (i5 == 4 || i5 == 8) {
                    int i6 = iArr[i4] >> 5;
                    C0386e m4928i = m4928i(list, i6, false);
                    abstractC0393o.onMoved(i + i2, m4928i.f2104b - 1);
                    if (i5 == 4) {
                        abstractC0393o.onChanged(m4928i.f2104b - 1, 1, this.f2099d.getChangePayload(i4, i6));
                    }
                } else if (i5 != 16) {
                    throw new IllegalStateException("unknown flag for pos " + i4 + " " + Long.toBinaryString(i5));
                } else {
                    list.add(new C0386e(i4, i + i2, true));
                }
            }
        }

        /* renamed from: e */
        private void m4932e(int i, int i2, int i3) {
            if (this.f2097b[i - 1] != 0) {
                return;
            }
            m4931f(i, i2, i3, false);
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00f6, code lost:
            continue;
         */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean m4931f(int r6, int r7, int r8, boolean r9) {
            /*
                Method dump skipped, instructions count: 267
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0381h.C0384c.m4931f(int, int, int, boolean):boolean");
        }

        /* renamed from: g */
        private void m4930g() {
            int i;
            int i2 = this.f2100e;
            int i3 = this.f2101f;
            for (int size = this.f2096a.size() - 1; size >= 0; size--) {
                C0388g c0388g = this.f2096a.get(size);
                int i4 = c0388g.f2110a;
                int i5 = c0388g.f2112c;
                int i6 = c0388g.f2111b;
                if (this.f2102g) {
                    while (true) {
                        if (i2 > i4 + i5) {
                            m4932e(i2, i3, size);
                            i2--;
                        }
                    }
                    for (i = i3; i > i6 + i5; i--) {
                        m4929h(i2, i, size);
                    }
                }
                for (int i7 = 0; i7 < c0388g.f2112c; i7++) {
                    int i8 = c0388g.f2110a + i7;
                    int i9 = c0388g.f2111b + i7;
                    int i10 = this.f2099d.areContentsTheSame(i8, i9) ? 1 : 2;
                    this.f2097b[i8] = (i9 << 5) | i10;
                    this.f2098c[i9] = (i8 << 5) | i10;
                }
                i2 = c0388g.f2110a;
                i3 = c0388g.f2111b;
            }
        }

        /* renamed from: h */
        private void m4929h(int i, int i2, int i3) {
            if (this.f2098c[i2 - 1] != 0) {
                return;
            }
            m4931f(i, i2, i3, true);
        }

        /* renamed from: i */
        private static C0386e m4928i(List<C0386e> list, int i, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                C0386e c0386e = list.get(size);
                if (c0386e.f2103a == i && c0386e.f2105c == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).f2104b += z ? 1 : -1;
                        size++;
                    }
                    return c0386e;
                }
                size--;
            }
            return null;
        }

        /* renamed from: d */
        public void m4933d(AbstractC0393o abstractC0393o) {
            AbstractC0393o eVar = abstractC0393o instanceof e ? (e) abstractC0393o : new e(abstractC0393o);
            ArrayList arrayList = new ArrayList();
            int i = this.f2100e;
            int i2 = this.f2101f;
            int size = this.f2096a.size();
            while (true) {
                size--;
                if (size < 0) {
                    eVar.a();
                    return;
                }
                C0388g c0388g = this.f2096a.get(size);
                int i3 = c0388g.f2112c;
                int i4 = c0388g.f2110a + i3;
                int i5 = c0388g.f2111b + i3;
                if (i4 < i) {
                    m4934c(arrayList, eVar, i4, i - i4, i4);
                }
                if (i5 < i2) {
                    m4935b(arrayList, eVar, i4, i2 - i5, i5);
                }
                for (int i6 = i3 - 1; i6 >= 0; i6--) {
                    int[] iArr = this.f2097b;
                    int i7 = c0388g.f2110a;
                    if ((iArr[i7 + i6] & 31) == 2) {
                        eVar.onChanged(i7 + i6, 1, this.f2099d.getChangePayload(i7 + i6, c0388g.f2111b + i6));
                    }
                }
                i = c0388g.f2110a;
                i2 = c0388g.f2111b;
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.h$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h$d.class */
    public static abstract class AbstractC0385d<T> {
        /* renamed from: a */
        public abstract boolean m4927a(T t, T t2);

        /* renamed from: b */
        public abstract boolean m4926b(T t, T t2);

        /* renamed from: c */
        public Object m4925c(T t, T t2) {
            return null;
        }
    }

    /* renamed from: androidx.recyclerview.widget.h$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h$e.class */
    public static class C0386e {

        /* renamed from: a */
        int f2103a;

        /* renamed from: b */
        int f2104b;

        /* renamed from: c */
        boolean f2105c;

        public C0386e(int i, int i2, boolean z) {
            this.f2103a = i;
            this.f2104b = i2;
            this.f2105c = z;
        }
    }

    /* renamed from: androidx.recyclerview.widget.h$f */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h$f.class */
    public static class C0387f {

        /* renamed from: a */
        int f2106a;

        /* renamed from: b */
        int f2107b;

        /* renamed from: c */
        int f2108c;

        /* renamed from: d */
        int f2109d;

        public C0387f() {
        }

        public C0387f(int i, int i2, int i3, int i4) {
            this.f2106a = i;
            this.f2107b = i2;
            this.f2108c = i3;
            this.f2109d = i4;
        }
    }

    /* renamed from: androidx.recyclerview.widget.h$g */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h$g.class */
    public static class C0388g {

        /* renamed from: a */
        int f2110a;

        /* renamed from: b */
        int f2111b;

        /* renamed from: c */
        int f2112c;

        /* renamed from: d */
        boolean f2113d;

        /* renamed from: e */
        boolean f2114e;

        C0388g() {
        }
    }

    /* renamed from: a */
    public static C0384c m4940a(AbstractC0383b abstractC0383b) {
        return m4939b(abstractC0383b, true);
    }

    /* renamed from: b */
    public static C0384c m4939b(AbstractC0383b abstractC0383b, boolean z) {
        int oldListSize = abstractC0383b.getOldListSize();
        int newListSize = abstractC0383b.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new C0387f(0, oldListSize, 0, newListSize));
        int abs = oldListSize + newListSize + Math.abs(oldListSize - newListSize);
        int i = abs * 2;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            C0387f c0387f = (C0387f) arrayList2.remove(arrayList2.size() - 1);
            C0388g m4938c = m4938c(abstractC0383b, c0387f.f2106a, c0387f.f2107b, c0387f.f2108c, c0387f.f2109d, iArr, iArr2, abs);
            if (m4938c != null) {
                if (m4938c.f2112c > 0) {
                    arrayList.add(m4938c);
                }
                m4938c.f2110a += c0387f.f2106a;
                m4938c.f2111b += c0387f.f2108c;
                C0387f c0387f2 = arrayList3.isEmpty() ? new C0387f() : (C0387f) arrayList3.remove(arrayList3.size() - 1);
                c0387f2.f2106a = c0387f.f2106a;
                c0387f2.f2108c = c0387f.f2108c;
                if (m4938c.f2114e) {
                    c0387f2.f2107b = m4938c.f2110a;
                    c0387f2.f2109d = m4938c.f2111b;
                } else if (m4938c.f2113d) {
                    c0387f2.f2107b = m4938c.f2110a - 1;
                    c0387f2.f2109d = m4938c.f2111b;
                } else {
                    c0387f2.f2107b = m4938c.f2110a;
                    c0387f2.f2109d = m4938c.f2111b - 1;
                }
                arrayList2.add(c0387f2);
                if (!m4938c.f2114e) {
                    int i2 = m4938c.f2110a;
                    int i3 = m4938c.f2112c;
                    c0387f.f2106a = i2 + i3;
                    c0387f.f2108c = m4938c.f2111b + i3;
                } else if (m4938c.f2113d) {
                    int i4 = m4938c.f2110a;
                    int i5 = m4938c.f2112c;
                    c0387f.f2106a = i4 + i5 + 1;
                    c0387f.f2108c = m4938c.f2111b + i5;
                } else {
                    int i6 = m4938c.f2110a;
                    int i7 = m4938c.f2112c;
                    c0387f.f2106a = i6 + i7;
                    c0387f.f2108c = m4938c.f2111b + i7 + 1;
                }
                arrayList2.add(c0387f);
            } else {
                arrayList3.add(c0387f);
            }
        }
        Collections.sort(arrayList, f2095a);
        return new C0384c(abstractC0383b, arrayList, iArr, iArr2, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a1, code lost:
        if (r10[r0 - 1] < r10[r0 + 1]) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01a6, code lost:
        if (r11[r0 - 1] < r11[r0 + 1]) goto L53;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.recyclerview.widget.C0381h.C0388g m4938c(androidx.recyclerview.widget.C0381h.AbstractC0383b r5, int r6, int r7, int r8, int r9, int[] r10, int[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0381h.m4938c(androidx.recyclerview.widget.h$b, int, int, int, int, int[], int[], int):androidx.recyclerview.widget.h$g");
    }
}
