package androidx.core.p037g;

import android.view.View;
import android.view.ViewParent;
/* renamed from: androidx.core.g.k */
/* loaded from: classes-dex2jar.jar:androidx/core/g/k.class */
public final class C0732k {

    /* renamed from: a */
    private ViewParent f3091a;

    /* renamed from: b */
    private ViewParent f3092b;

    /* renamed from: c */
    private final View f3093c;

    /* renamed from: d */
    private boolean f3094d;

    /* renamed from: e */
    private int[] f3095e;

    public C0732k(View view) {
        this.f3093c = view;
    }

    /* renamed from: a */
    private void m8391a(int i, ViewParent viewParent) {
        if (i == 0) {
            this.f3091a = viewParent;
        } else if (i == 1) {
            this.f3092b = viewParent;
        }
    }

    /* renamed from: a */
    private boolean m8395a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent d;
        int i6;
        int i7;
        if (!this.f3094d || (d = m8384d(i5)) == null) {
            return false;
        }
        if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
            if (iArr != null) {
                this.f3093c.getLocationInWindow(iArr);
                i7 = iArr[0];
                i6 = iArr[1];
            } else {
                i7 = 0;
                i6 = 0;
            }
            if (iArr2 == null) {
                iArr2 = m8385d();
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
            C0751z.m8287a(d, this.f3093c, i, i2, i3, i4, i5, iArr2);
            if (iArr == null) {
                return true;
            }
            this.f3093c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i7;
            iArr[1] = iArr[1] - i6;
            return true;
        } else if (iArr == null) {
            return false;
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
            return false;
        }
    }

    /* renamed from: d */
    private ViewParent m8384d(int i) {
        if (i == 0) {
            return this.f3091a;
        }
        if (i != 1) {
            return null;
        }
        return this.f3092b;
    }

    /* renamed from: d */
    private int[] m8385d() {
        if (this.f3095e == null) {
            this.f3095e = new int[2];
        }
        return this.f3095e;
    }

    /* renamed from: a */
    public final void m8394a(int i, int i2, int[] iArr, int i3, int[] iArr2) {
        m8395a(0, i, 0, i2, iArr, i3, iArr2);
    }

    /* renamed from: a */
    public final void m8390a(boolean z) {
        if (this.f3094d) {
            C0741t.m8305z(this.f3093c);
        }
        this.f3094d = z;
    }

    /* renamed from: a */
    public final boolean m8402a() {
        return this.f3094d;
    }

    /* renamed from: a */
    public final boolean m8401a(float f, float f2) {
        ViewParent d;
        if (!this.f3094d || (d = m8384d(0)) == null) {
            return false;
        }
        return C0751z.m8290a(d, this.f3093c, f, f2);
    }

    /* renamed from: a */
    public final boolean m8400a(float f, float f2, boolean z) {
        ViewParent d;
        if (!this.f3094d || (d = m8384d(0)) == null) {
            return false;
        }
        return C0751z.m8289a(d, this.f3093c, f, f2, z);
    }

    /* renamed from: a */
    public final boolean m8399a(int i) {
        return m8384d(i) != null;
    }

    /* renamed from: a */
    public final boolean m8398a(int i, int i2) {
        if (m8399a(i2)) {
            return true;
        }
        if (!this.f3094d) {
            return false;
        }
        View view = this.f3093c;
        for (ViewParent parent = this.f3093c.getParent(); parent != null; parent = parent.getParent()) {
            if (C0751z.m8285a(parent, view, this.f3093c, i, i2)) {
                m8391a(i2, parent);
                C0751z.m8284b(parent, view, this.f3093c, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m8397a(int i, int i2, int i3, int i4, int[] iArr) {
        return m8395a(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: a */
    public final boolean m8396a(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return m8395a(i, i2, i3, i4, iArr, i5, null);
    }

    /* renamed from: a */
    public final boolean m8393a(int i, int i2, int[] iArr, int[] iArr2) {
        return m8392a(i, i2, iArr, iArr2, 0);
    }

    /* renamed from: a */
    public final boolean m8392a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent d;
        int i4;
        int i5;
        if (!this.f3094d || (d = m8384d(i3)) == null) {
            return false;
        }
        if (i != 0 || i2 != 0) {
            if (iArr2 != null) {
                this.f3093c.getLocationInWindow(iArr2);
                i5 = iArr2[0];
                i4 = iArr2[1];
            } else {
                i5 = 0;
                i4 = 0;
            }
            int[] iArr3 = iArr;
            if (iArr == null) {
                iArr3 = m8385d();
            }
            iArr3[0] = 0;
            iArr3[1] = 0;
            C0751z.m8286a(d, this.f3093c, i, i2, iArr3, i3);
            if (iArr2 != null) {
                this.f3093c.getLocationInWindow(iArr2);
                iArr2[0] = iArr2[0] - i5;
                iArr2[1] = iArr2[1] - i4;
            }
            return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
        } else if (iArr2 == null) {
            return false;
        } else {
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
    }

    /* renamed from: b */
    public final boolean m8389b() {
        return m8399a(0);
    }

    /* renamed from: b */
    public final boolean m8388b(int i) {
        return m8398a(i, 0);
    }

    /* renamed from: c */
    public final void m8387c() {
        m8386c(0);
    }

    /* renamed from: c */
    public final void m8386c(int i) {
        ViewParent d = m8384d(i);
        if (d != null) {
            C0751z.m8288a(d, this.f3093c, i);
            m8391a(i, (ViewParent) null);
        }
    }
}
