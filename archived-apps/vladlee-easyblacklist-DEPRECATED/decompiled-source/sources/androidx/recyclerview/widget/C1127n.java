package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n.class */
public final class C1127n {

    /* renamed from: a */
    private static final Comparator<C1132e> f4830a = new C1133o();

    /* renamed from: androidx.recyclerview.widget.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n$a.class */
    public static abstract class AbstractC1128a {
        /* renamed from: a */
        public abstract int mo6755a();

        /* renamed from: a */
        public abstract boolean mo6754a(int i, int i2);

        /* renamed from: b */
        public abstract int mo6753b();

        /* renamed from: b */
        public abstract boolean mo6752b(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n$b.class */
    public static final class C1129b {

        /* renamed from: a */
        private final List<C1132e> f4831a;

        /* renamed from: b */
        private final int[] f4832b;

        /* renamed from: c */
        private final int[] f4833c;

        /* renamed from: d */
        private final AbstractC1128a f4834d;

        /* renamed from: e */
        private final int f4835e;

        /* renamed from: f */
        private final int f4836f;

        /* renamed from: g */
        private final boolean f4837g = true;

        C1129b(AbstractC1128a aVar, List<C1132e> list, int[] iArr, int[] iArr2) {
            this.f4831a = list;
            this.f4832b = iArr;
            this.f4833c = iArr2;
            Arrays.fill(this.f4832b, 0);
            Arrays.fill(this.f4833c, 0);
            this.f4834d = aVar;
            this.f4835e = aVar.mo6755a();
            this.f4836f = aVar.mo6753b();
            C1132e eVar = this.f4831a.isEmpty() ? null : this.f4831a.get(0);
            if (!(eVar != null && eVar.f4845a == 0 && eVar.f4846b == 0)) {
                C1132e eVar2 = new C1132e();
                eVar2.f4845a = 0;
                eVar2.f4846b = 0;
                eVar2.f4848d = false;
                eVar2.f4847c = 0;
                eVar2.f4849e = false;
                this.f4831a.add(0, eVar2);
            }
            m6751a();
        }

        /* renamed from: a */
        private static C1130c m6748a(List<C1130c> list, int i, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                C1130c cVar = list.get(size);
                if (cVar.f4838a == i && cVar.f4840c == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).f4839b += z ? 1 : -1;
                        size++;
                    }
                    return cVar;
                }
                size--;
            }
            return null;
        }

        /* renamed from: a */
        private void m6751a() {
            int i;
            int i2 = this.f4835e;
            int i3 = this.f4836f;
            for (int size = this.f4831a.size() - 1; size >= 0; size--) {
                C1132e eVar = this.f4831a.get(size);
                int i4 = eVar.f4845a;
                int i5 = eVar.f4847c;
                int i6 = eVar.f4846b;
                int i7 = eVar.f4847c;
                int i8 = 0;
                if (this.f4837g) {
                    while (true) {
                        i = i3;
                        if (i2 > i4 + i5) {
                            if (this.f4832b[i2 - 1] == 0) {
                                m6750a(i2, i3, size, false);
                            }
                            i2--;
                        }
                    }
                    while (true) {
                        i8 = 0;
                        if (i <= i6 + i7) {
                            break;
                        }
                        if (this.f4833c[i - 1] == 0) {
                            m6750a(i2, i, size, true);
                        }
                        i--;
                    }
                }
                while (i8 < eVar.f4847c) {
                    int i9 = eVar.f4845a + i8;
                    int i10 = eVar.f4846b + i8;
                    int i11 = this.f4834d.mo6752b(i9, i10) ? 1 : 2;
                    this.f4832b[i9] = (i10 << 5) | i11;
                    this.f4833c[i10] = (i9 << 5) | i11;
                    i8++;
                }
                i2 = eVar.f4845a;
                i3 = eVar.f4846b;
            }
        }

        /* renamed from: a */
        private void m6747a(List<C1130c> list, AbstractC1145w wVar, int i, int i2, int i3) {
            if (!this.f4837g) {
                wVar.mo6723a(i, i2);
                return;
            }
            while (true) {
                i2--;
                if (i2 >= 0) {
                    int i4 = i3 + i2;
                    int i5 = this.f4833c[i4] & 31;
                    if (i5 == 0) {
                        wVar.mo6723a(i, 1);
                        for (C1130c cVar : list) {
                            cVar.f4839b++;
                        }
                    } else if (i5 == 4 || i5 == 8) {
                        wVar.mo6720c(m6748a(list, this.f4833c[i4] >> 5, true).f4839b, i);
                        if (i5 == 4) {
                            wVar.mo6722a(i, 1, null);
                        }
                    } else if (i5 == 16) {
                        list.add(new C1130c(i4, i, false));
                    } else {
                        throw new IllegalStateException("unknown flag for pos " + i4 + " " + Long.toBinaryString(i5));
                    }
                } else {
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00fd, code lost:
            continue;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean m6750a(int r6, int r7, int r8, boolean r9) {
            /*
                Method dump skipped, instructions count: 274
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C1127n.C1129b.m6750a(int, int, int, boolean):boolean");
        }

        /* renamed from: b */
        private void m6746b(List<C1130c> list, AbstractC1145w wVar, int i, int i2, int i3) {
            if (!this.f4837g) {
                wVar.mo6721b(i, i2);
                return;
            }
            while (true) {
                i2--;
                if (i2 >= 0) {
                    int i4 = i3 + i2;
                    int i5 = this.f4832b[i4] & 31;
                    if (i5 == 0) {
                        wVar.mo6721b(i + i2, 1);
                        for (C1130c cVar : list) {
                            cVar.f4839b--;
                        }
                    } else if (i5 == 4 || i5 == 8) {
                        C1130c a = m6748a(list, this.f4832b[i4] >> 5, false);
                        wVar.mo6720c(i + i2, a.f4839b - 1);
                        if (i5 == 4) {
                            wVar.mo6722a(a.f4839b - 1, 1, null);
                        }
                    } else if (i5 == 16) {
                        list.add(new C1130c(i4, i + i2, true));
                    } else {
                        throw new IllegalStateException("unknown flag for pos " + i4 + " " + Long.toBinaryString(i5));
                    }
                } else {
                    return;
                }
            }
        }

        /* renamed from: a */
        public final void m6749a(AbstractC1145w wVar) {
            C1112c cVar = new C1112c(wVar);
            List<C1130c> arrayList = new ArrayList<>();
            int i = this.f4835e;
            int i2 = this.f4836f;
            int size = this.f4831a.size();
            while (true) {
                size--;
                if (size >= 0) {
                    C1132e eVar = this.f4831a.get(size);
                    int i3 = eVar.f4847c;
                    int i4 = eVar.f4845a + i3;
                    int i5 = eVar.f4846b + i3;
                    if (i4 < i) {
                        m6746b(arrayList, cVar, i4, i - i4, i4);
                    }
                    if (i5 < i2) {
                        m6747a(arrayList, cVar, i4, i2 - i5, i5);
                    }
                    for (int i6 = i3 - 1; i6 >= 0; i6--) {
                        if ((this.f4832b[eVar.f4845a + i6] & 31) == 2) {
                            cVar.mo6722a(eVar.f4845a + i6, 1, null);
                        }
                    }
                    i = eVar.f4845a;
                    i2 = eVar.f4846b;
                } else {
                    cVar.m6810a();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.n$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n$c.class */
    public static final class C1130c {

        /* renamed from: a */
        int f4838a;

        /* renamed from: b */
        int f4839b;

        /* renamed from: c */
        boolean f4840c;

        public C1130c(int i, int i2, boolean z) {
            this.f4838a = i;
            this.f4839b = i2;
            this.f4840c = z;
        }
    }

    /* renamed from: androidx.recyclerview.widget.n$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n$d.class */
    static final class C1131d {

        /* renamed from: a */
        int f4841a;

        /* renamed from: b */
        int f4842b;

        /* renamed from: c */
        int f4843c;

        /* renamed from: d */
        int f4844d;

        public C1131d() {
        }

        public C1131d(int i, int i2) {
            this.f4841a = 0;
            this.f4842b = i;
            this.f4843c = 0;
            this.f4844d = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.n$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n$e.class */
    public static final class C1132e {

        /* renamed from: a */
        int f4845a;

        /* renamed from: b */
        int f4846b;

        /* renamed from: c */
        int f4847c;

        /* renamed from: d */
        boolean f4848d;

        /* renamed from: e */
        boolean f4849e;

        C1132e() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0198  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.recyclerview.widget.C1127n.C1129b m6757a(androidx.recyclerview.widget.C1127n.AbstractC1128a r9) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C1127n.m6757a(androidx.recyclerview.widget.n$a):androidx.recyclerview.widget.n$b");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009f, code lost:
        if (r10[r0 - 1] < r10[r0 + 1]) goto L_0x00b9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01a8, code lost:
        if (r11[r0 - 1] < r11[r0 + 1]) goto L_0x01c2;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.recyclerview.widget.C1127n.C1132e m6756a(androidx.recyclerview.widget.C1127n.AbstractC1128a r5, int r6, int r7, int r8, int r9, int[] r10, int[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C1127n.m6756a(androidx.recyclerview.widget.n$a, int, int, int, int, int[], int[], int):androidx.recyclerview.widget.n$e");
    }
}
