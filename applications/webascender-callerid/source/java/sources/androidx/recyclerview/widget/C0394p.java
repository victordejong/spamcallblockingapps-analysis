package androidx.recyclerview.widget;

import java.util.List;
/* renamed from: androidx.recyclerview.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p.class */
class C0394p {

    /* renamed from: a */
    final AbstractC0395a f2139a;

    /* renamed from: androidx.recyclerview.widget.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p$a.class */
    public interface AbstractC0395a {
        /* renamed from: a */
        void m4904a(a$b a_b);

        /* renamed from: b */
        a$b m4903b(int i, int i2, int i3, Object obj);
    }

    C0394p(AbstractC0395a abstractC0395a) {
        this.f2139a = abstractC0395a;
    }

    /* renamed from: a */
    private int m4910a(List<a$b> list) {
        boolean z;
        int size = list.size() - 1;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (size >= 0) {
                if (list.get(size).f2023a == 8) {
                    z = z3;
                    if (z3) {
                        return size;
                    }
                } else {
                    z = true;
                }
                size--;
                z2 = z;
            } else {
                return -1;
            }
        }
    }

    /* renamed from: c */
    private void m4908c(List<a$b> list, int i, a$b a_b, int i2, a$b a_b2) {
        int i3 = a_b.f2026d;
        int i4 = a_b2.f2024b;
        int i5 = i3 < i4 ? -1 : 0;
        int i6 = a_b.f2024b;
        int i7 = i5;
        if (i6 < i4) {
            i7 = i5 + 1;
        }
        if (i4 <= i6) {
            a_b.f2024b = i6 + a_b2.f2026d;
        }
        int i8 = a_b2.f2024b;
        if (i8 <= i3) {
            a_b.f2026d = i3 + a_b2.f2026d;
        }
        a_b2.f2024b = i8 + i7;
        list.set(i, a_b2);
        list.set(i2, a_b);
    }

    /* renamed from: d */
    private void m4907d(List<a$b> list, int i, int i2) {
        a$b a_b = list.get(i);
        a$b a_b2 = list.get(i2);
        int i3 = a_b2.f2023a;
        if (i3 == 1) {
            m4908c(list, i, a_b, i2, a_b2);
        } else if (i3 == 2) {
            m4906e(list, i, a_b, i2, a_b2);
        } else if (i3 != 4) {
        } else {
            m4905f(list, i, a_b, i2, a_b2);
        }
    }

    /* renamed from: b */
    void m4909b(List<a$b> list) {
        while (true) {
            int m4910a = m4910a(list);
            if (m4910a != -1) {
                m4907d(list, m4910a, m4910a + 1);
            } else {
                return;
            }
        }
    }

    /* renamed from: e */
    void m4906e(List<a$b> list, int i, a$b a_b, int i2, a$b a_b2) {
        boolean z;
        int i3 = a_b.f2024b;
        int i4 = a_b.f2026d;
        boolean z2 = false;
        if (i3 < i4) {
            if (a_b2.f2024b == i3 && a_b2.f2026d == i4 - i3) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (a_b2.f2024b == i4 + 1 && a_b2.f2026d == i3 - i4) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        int i5 = a_b2.f2024b;
        if (i4 < i5) {
            a_b2.f2024b = i5 - 1;
        } else {
            int i6 = a_b2.f2026d;
            if (i4 < i5 + i6) {
                a_b2.f2026d = i6 - 1;
                a_b.f2023a = 2;
                a_b.f2026d = 1;
                if (a_b2.f2026d != 0) {
                    return;
                }
                list.remove(i2);
                this.f2139a.m4904a(a_b2);
                return;
            }
        }
        int i7 = a_b.f2024b;
        int i8 = a_b2.f2024b;
        a$b a_b3 = null;
        if (i7 <= i8) {
            a_b2.f2024b = i8 + 1;
        } else {
            int i9 = a_b2.f2026d;
            if (i7 < i8 + i9) {
                a_b3 = this.f2139a.m4903b(2, i7 + 1, (i8 + i9) - i7, null);
                a_b2.f2026d = a_b.f2024b - a_b2.f2024b;
            }
        }
        if (z2) {
            list.set(i, a_b2);
            list.remove(i2);
            this.f2139a.m4904a(a_b);
            return;
        }
        if (z) {
            if (a_b3 != null) {
                int i10 = a_b.f2024b;
                if (i10 > a_b3.f2024b) {
                    a_b.f2024b = i10 - a_b3.f2026d;
                }
                int i11 = a_b.f2026d;
                if (i11 > a_b3.f2024b) {
                    a_b.f2026d = i11 - a_b3.f2026d;
                }
            }
            int i12 = a_b.f2024b;
            if (i12 > a_b2.f2024b) {
                a_b.f2024b = i12 - a_b2.f2026d;
            }
            int i13 = a_b.f2026d;
            if (i13 > a_b2.f2024b) {
                a_b.f2026d = i13 - a_b2.f2026d;
            }
        } else {
            if (a_b3 != null) {
                int i14 = a_b.f2024b;
                if (i14 >= a_b3.f2024b) {
                    a_b.f2024b = i14 - a_b3.f2026d;
                }
                int i15 = a_b.f2026d;
                if (i15 >= a_b3.f2024b) {
                    a_b.f2026d = i15 - a_b3.f2026d;
                }
            }
            int i16 = a_b.f2024b;
            if (i16 >= a_b2.f2024b) {
                a_b.f2024b = i16 - a_b2.f2026d;
            }
            int i17 = a_b.f2026d;
            if (i17 >= a_b2.f2024b) {
                a_b.f2026d = i17 - a_b2.f2026d;
            }
        }
        list.set(i, a_b2);
        if (a_b.f2024b != a_b.f2026d) {
            list.set(i2, a_b);
        } else {
            list.remove(i2);
        }
        if (a_b3 == null) {
            return;
        }
        list.add(i, a_b3);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m4905f(java.util.List<androidx.recyclerview.widget.a$b> r7, int r8, androidx.recyclerview.widget.a$b r9, int r10, androidx.recyclerview.widget.a$b r11) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0394p.m4905f(java.util.List, int, androidx.recyclerview.widget.a$b, int, androidx.recyclerview.widget.a$b):void");
    }
}
