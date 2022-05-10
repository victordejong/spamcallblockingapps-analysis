package p012b.p122v.p123d;

import java.util.List;
import p012b.p122v.p123d.C1904a;
/* renamed from: b.v.d.g */
/* loaded from: classes-dex2jar.jar:b/v/d/g.class */
public class C1931g {

    /* renamed from: a */
    public final AbstractC1932a f7628a;

    /* renamed from: b.v.d.g$a */
    /* loaded from: classes-dex2jar.jar:b/v/d/g$a.class */
    public interface AbstractC1932a {
        /* renamed from: a */
        C1904a.C1906b mo31608a(int i, int i2, int i3, Object obj);

        /* renamed from: a */
        void mo31607a(C1904a.C1906b bVar);
    }

    public C1931g(AbstractC1932a aVar) {
        this.f7628a = aVar;
    }

    /* renamed from: a */
    public final int m31614a(List<C1904a.C1906b> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f7508a == 8) {
                z = z;
                if (z) {
                    return size;
                }
            } else {
                z = true;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public final void m31613a(List<C1904a.C1906b> list, int i, int i2) {
        C1904a.C1906b bVar = list.get(i);
        C1904a.C1906b bVar2 = list.get(i2);
        int i3 = bVar2.f7508a;
        if (i3 == 1) {
            m31612a(list, i, bVar, i2, bVar2);
        } else if (i3 == 2) {
            m31610b(list, i, bVar, i2, bVar2);
        } else if (i3 == 4) {
            m31609c(list, i, bVar, i2, bVar2);
        }
    }

    /* renamed from: a */
    public final void m31612a(List<C1904a.C1906b> list, int i, C1904a.C1906b bVar, int i2, C1904a.C1906b bVar2) {
        int i3 = bVar.f7511d < bVar2.f7509b ? -1 : 0;
        int i4 = i3;
        if (bVar.f7509b < bVar2.f7509b) {
            i4 = i3 + 1;
        }
        int i5 = bVar2.f7509b;
        int i6 = bVar.f7509b;
        if (i5 <= i6) {
            bVar.f7509b = i6 + bVar2.f7511d;
        }
        int i7 = bVar2.f7509b;
        int i8 = bVar.f7511d;
        if (i7 <= i8) {
            bVar.f7511d = i8 + bVar2.f7511d;
        }
        bVar2.f7509b += i4;
        list.set(i, bVar2);
        list.set(i2, bVar);
    }

    /* renamed from: b */
    public void m31611b(List<C1904a.C1906b> list) {
        while (true) {
            int a = m31614a(list);
            if (a != -1) {
                m31613a(list, a, a + 1);
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public void m31610b(List<C1904a.C1906b> list, int i, C1904a.C1906b bVar, int i2, C1904a.C1906b bVar2) {
        boolean z;
        int i3 = bVar.f7509b;
        int i4 = bVar.f7511d;
        boolean z2 = false;
        if (i3 < i4) {
            if (bVar2.f7509b == i3 && bVar2.f7511d == i4 - i3) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (bVar2.f7509b == i4 + 1 && bVar2.f7511d == i3 - i4) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        int i5 = bVar.f7511d;
        int i6 = bVar2.f7509b;
        if (i5 < i6) {
            bVar2.f7509b = i6 - 1;
        } else {
            int i7 = bVar2.f7511d;
            if (i5 < i6 + i7) {
                bVar2.f7511d = i7 - 1;
                bVar.f7508a = 2;
                bVar.f7511d = 1;
                if (bVar2.f7511d == 0) {
                    list.remove(i2);
                    this.f7628a.mo31607a(bVar2);
                    return;
                }
                return;
            }
        }
        int i8 = bVar.f7509b;
        int i9 = bVar2.f7509b;
        C1904a.C1906b bVar3 = null;
        if (i8 <= i9) {
            bVar2.f7509b = i9 + 1;
        } else {
            int i10 = bVar2.f7511d;
            if (i8 < i9 + i10) {
                bVar3 = this.f7628a.mo31608a(2, i8 + 1, (i9 + i10) - i8, null);
                bVar2.f7511d = bVar.f7509b - bVar2.f7509b;
            }
        }
        if (z2) {
            list.set(i, bVar2);
            list.remove(i2);
            this.f7628a.mo31607a(bVar);
            return;
        }
        if (z) {
            if (bVar3 != null) {
                int i11 = bVar.f7509b;
                if (i11 > bVar3.f7509b) {
                    bVar.f7509b = i11 - bVar3.f7511d;
                }
                int i12 = bVar.f7511d;
                if (i12 > bVar3.f7509b) {
                    bVar.f7511d = i12 - bVar3.f7511d;
                }
            }
            int i13 = bVar.f7509b;
            if (i13 > bVar2.f7509b) {
                bVar.f7509b = i13 - bVar2.f7511d;
            }
            int i14 = bVar.f7511d;
            if (i14 > bVar2.f7509b) {
                bVar.f7511d = i14 - bVar2.f7511d;
            }
        } else {
            if (bVar3 != null) {
                int i15 = bVar.f7509b;
                if (i15 >= bVar3.f7509b) {
                    bVar.f7509b = i15 - bVar3.f7511d;
                }
                int i16 = bVar.f7511d;
                if (i16 >= bVar3.f7509b) {
                    bVar.f7511d = i16 - bVar3.f7511d;
                }
            }
            int i17 = bVar.f7509b;
            if (i17 >= bVar2.f7509b) {
                bVar.f7509b = i17 - bVar2.f7511d;
            }
            int i18 = bVar.f7511d;
            if (i18 >= bVar2.f7509b) {
                bVar.f7511d = i18 - bVar2.f7511d;
            }
        }
        list.set(i, bVar2);
        if (bVar.f7509b != bVar.f7511d) {
            list.set(i2, bVar);
        } else {
            list.remove(i2);
        }
        if (bVar3 != null) {
            list.add(i, bVar3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m31609c(java.util.List<p012b.p122v.p123d.C1904a.C1906b> r7, int r8, p012b.p122v.p123d.C1904a.C1906b r9, int r10, p012b.p122v.p123d.C1904a.C1906b r11) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p122v.p123d.C1931g.m31609c(java.util.List, int, b.v.d.a$b, int, b.v.d.a$b):void");
    }
}
