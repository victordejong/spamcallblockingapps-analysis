package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/core/view/NestedScrollingChildHelper.class */
public class NestedScrollingChildHelper {

    /* renamed from: a */
    private ViewParent f3264a;

    /* renamed from: b */
    private ViewParent f3265b;

    /* renamed from: c */
    private final View f3266c;

    /* renamed from: d */
    private boolean f3267d;

    /* renamed from: e */
    private int[] f3268e;

    public NestedScrollingChildHelper(@NonNull View view) {
        this.f3266c = view;
    }

    /* renamed from: g */
    private boolean m19266g(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5, @Nullable int[] iArr2) {
        ViewParent h;
        int i6;
        int i7;
        if (!m19261l() || (h = m19265h(i5)) == null) {
            return false;
        }
        if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
            if (iArr != null) {
                this.f3266c.getLocationInWindow(iArr);
                i7 = iArr[0];
                i6 = iArr[1];
            } else {
                i7 = 0;
                i6 = 0;
            }
            if (iArr2 == null) {
                iArr2 = m19264i();
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
            ViewParentCompat.m19120d(h, this.f3266c, i, i2, i3, i4, i5, iArr2);
            if (iArr == null) {
                return true;
            }
            this.f3266c.getLocationInWindow(iArr);
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

    /* renamed from: h */
    private ViewParent m19265h(int i) {
        if (i == 0) {
            return this.f3264a;
        }
        if (i != 1) {
            return null;
        }
        return this.f3265b;
    }

    /* renamed from: i */
    private int[] m19264i() {
        if (this.f3268e == null) {
            this.f3268e = new int[2];
        }
        return this.f3268e;
    }

    /* renamed from: n */
    private void m19259n(int i, ViewParent viewParent) {
        if (i == 0) {
            this.f3264a = viewParent;
        } else if (i == 1) {
            this.f3265b = viewParent;
        }
    }

    /* renamed from: a */
    public boolean m19272a(float f, float f2, boolean z) {
        ViewParent h;
        if (!m19261l() || (h = m19265h(0)) == null) {
            return false;
        }
        return ViewParentCompat.m19123a(h, this.f3266c, f, f2, z);
    }

    /* renamed from: b */
    public boolean m19271b(float f, float f2) {
        ViewParent h;
        if (!m19261l() || (h = m19265h(0)) == null) {
            return false;
        }
        return ViewParentCompat.m19122b(h, this.f3266c, f, f2);
    }

    /* renamed from: c */
    public boolean m19270c(int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return m19269d(i, i2, iArr, iArr2, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c2, code lost:
        if (r19[1] != 0) goto L_0x00c5;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m19269d(int r8, int r9, @androidx.annotation.Nullable int[] r10, @androidx.annotation.Nullable int[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.NestedScrollingChildHelper.m19269d(int, int, int[], int[], int):boolean");
    }

    /* renamed from: e */
    public void m19268e(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5, @Nullable int[] iArr2) {
        m19266g(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: f */
    public boolean m19267f(int i, int i2, int i3, int i4, @Nullable int[] iArr) {
        return m19266g(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: j */
    public boolean m19263j() {
        return m19262k(0);
    }

    /* renamed from: k */
    public boolean m19262k(int i) {
        return m19265h(i) != null;
    }

    /* renamed from: l */
    public boolean m19261l() {
        return this.f3267d;
    }

    /* renamed from: m */
    public void m19260m(boolean z) {
        if (this.f3267d) {
            ViewCompat.m19231G0(this.f3266c);
        }
        this.f3267d = z;
    }

    /* renamed from: o */
    public boolean m19258o(int i) {
        return m19257p(i, 0);
    }

    /* renamed from: p */
    public boolean m19257p(int i, int i2) {
        if (m19262k(i2)) {
            return true;
        }
        if (!m19261l()) {
            return false;
        }
        View view = this.f3266c;
        for (ViewParent parent = this.f3266c.getParent(); parent != null; parent = parent.getParent()) {
            if (ViewParentCompat.m19118f(parent, view, this.f3266c, i, i2)) {
                m19259n(i2, parent);
                ViewParentCompat.m19119e(parent, view, this.f3266c, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    /* renamed from: q */
    public void m19256q() {
        m19255r(0);
    }

    /* renamed from: r */
    public void m19255r(int i) {
        ViewParent h = m19265h(i);
        if (h != null) {
            ViewParentCompat.m19117g(h, this.f3266c, i);
            m19259n(i, null);
        }
    }
}
