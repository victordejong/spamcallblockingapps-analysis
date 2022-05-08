package androidx.recyclerview.widget;

import androidx.recyclerview.widget.AdapterHelper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/OpReorderer.class */
class OpReorderer {

    /* renamed from: a */
    final Callback f4732a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/OpReorderer$Callback.class */
    public interface Callback {
        /* renamed from: a */
        void mo17548a(AdapterHelper.UpdateOp updateOp);

        /* renamed from: b */
        AdapterHelper.UpdateOp mo17547b(int i, int i2, int i3, Object obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OpReorderer(Callback callback) {
        this.f4732a = callback;
    }

    /* renamed from: a */
    private int m17554a(List<AdapterHelper.UpdateOp> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f4394a == 8) {
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

    /* renamed from: c */
    private void m17552c(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        int i3 = updateOp.f4397d < updateOp2.f4395b ? -1 : 0;
        int i4 = i3;
        if (updateOp.f4395b < updateOp2.f4395b) {
            i4 = i3 + 1;
        }
        int i5 = updateOp2.f4395b;
        int i6 = updateOp.f4395b;
        if (i5 <= i6) {
            updateOp.f4395b = i6 + updateOp2.f4397d;
        }
        int i7 = updateOp2.f4395b;
        int i8 = updateOp.f4397d;
        if (i7 <= i8) {
            updateOp.f4397d = i8 + updateOp2.f4397d;
        }
        updateOp2.f4395b += i4;
        list.set(i, updateOp2);
        list.set(i2, updateOp);
    }

    /* renamed from: d */
    private void m17551d(List<AdapterHelper.UpdateOp> list, int i, int i2) {
        AdapterHelper.UpdateOp updateOp = list.get(i);
        AdapterHelper.UpdateOp updateOp2 = list.get(i2);
        int i3 = updateOp2.f4394a;
        if (i3 == 1) {
            m17552c(list, i, updateOp, i2, updateOp2);
        } else if (i3 == 2) {
            m17550e(list, i, updateOp, i2, updateOp2);
        } else if (i3 == 4) {
            m17549f(list, i, updateOp, i2, updateOp2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m17553b(List<AdapterHelper.UpdateOp> list) {
        while (true) {
            int a = m17554a(list);
            if (a != -1) {
                m17551d(list, a, a + 1);
            } else {
                return;
            }
        }
    }

    /* renamed from: e */
    void m17550e(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        boolean z;
        int i3 = updateOp.f4395b;
        int i4 = updateOp.f4397d;
        boolean z2 = false;
        if (i3 < i4) {
            if (updateOp2.f4395b == i3 && updateOp2.f4397d == i4 - i3) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (updateOp2.f4395b == i4 + 1 && updateOp2.f4397d == i3 - i4) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        int i5 = updateOp.f4397d;
        int i6 = updateOp2.f4395b;
        if (i5 < i6) {
            updateOp2.f4395b = i6 - 1;
        } else {
            int i7 = updateOp2.f4397d;
            if (i5 < i6 + i7) {
                updateOp2.f4397d = i7 - 1;
                updateOp.f4394a = 2;
                updateOp.f4397d = 1;
                if (updateOp2.f4397d == 0) {
                    list.remove(i2);
                    this.f4732a.mo17548a(updateOp2);
                    return;
                }
                return;
            }
        }
        int i8 = updateOp.f4395b;
        int i9 = updateOp2.f4395b;
        AdapterHelper.UpdateOp updateOp3 = null;
        if (i8 <= i9) {
            updateOp2.f4395b = i9 + 1;
        } else {
            int i10 = updateOp2.f4397d;
            if (i8 < i9 + i10) {
                updateOp3 = this.f4732a.mo17547b(2, i8 + 1, (i9 + i10) - i8, null);
                updateOp2.f4397d = updateOp.f4395b - updateOp2.f4395b;
            }
        }
        if (z2) {
            list.set(i, updateOp2);
            list.remove(i2);
            this.f4732a.mo17548a(updateOp);
            return;
        }
        if (z) {
            if (updateOp3 != null) {
                int i11 = updateOp.f4395b;
                if (i11 > updateOp3.f4395b) {
                    updateOp.f4395b = i11 - updateOp3.f4397d;
                }
                int i12 = updateOp.f4397d;
                if (i12 > updateOp3.f4395b) {
                    updateOp.f4397d = i12 - updateOp3.f4397d;
                }
            }
            int i13 = updateOp.f4395b;
            if (i13 > updateOp2.f4395b) {
                updateOp.f4395b = i13 - updateOp2.f4397d;
            }
            int i14 = updateOp.f4397d;
            if (i14 > updateOp2.f4395b) {
                updateOp.f4397d = i14 - updateOp2.f4397d;
            }
        } else {
            if (updateOp3 != null) {
                int i15 = updateOp.f4395b;
                if (i15 >= updateOp3.f4395b) {
                    updateOp.f4395b = i15 - updateOp3.f4397d;
                }
                int i16 = updateOp.f4397d;
                if (i16 >= updateOp3.f4395b) {
                    updateOp.f4397d = i16 - updateOp3.f4397d;
                }
            }
            int i17 = updateOp.f4395b;
            if (i17 >= updateOp2.f4395b) {
                updateOp.f4395b = i17 - updateOp2.f4397d;
            }
            int i18 = updateOp.f4397d;
            if (i18 >= updateOp2.f4395b) {
                updateOp.f4397d = i18 - updateOp2.f4397d;
            }
        }
        list.set(i, updateOp2);
        if (updateOp.f4395b != updateOp.f4397d) {
            list.set(i2, updateOp);
        } else {
            list.remove(i2);
        }
        if (updateOp3 != null) {
            list.add(i, updateOp3);
        }
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
    void m17549f(java.util.List<androidx.recyclerview.widget.AdapterHelper.UpdateOp> r7, int r8, androidx.recyclerview.widget.AdapterHelper.UpdateOp r9, int r10, androidx.recyclerview.widget.AdapterHelper.UpdateOp r11) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.OpReorderer.m17549f(java.util.List, int, androidx.recyclerview.widget.AdapterHelper$UpdateOp, int, androidx.recyclerview.widget.AdapterHelper$UpdateOp):void");
    }
}
