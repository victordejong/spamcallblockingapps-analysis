package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public boolean f234a;

    /* renamed from: b  reason: collision with root package name */
    private final View f235b;
    private ViewParent c;
    private int[] d;

    public l(View view) {
        this.f235b = view;
    }

    public final void a(boolean z) {
        if (this.f234a) {
            t.p(this.f235b);
        }
        this.f234a = z;
    }

    public final boolean a() {
        return this.c != null;
    }

    public final boolean a(float f, float f2) {
        return (!this.f234a || this.c == null) ? false : z.a(this.c, this.f235b, f, f2);
    }

    public final boolean a(float f, float f2, boolean z) {
        return (!this.f234a || this.c == null) ? false : z.a(this.c, this.f235b, f, f2, z);
    }

    public final boolean a(int i) {
        boolean z;
        if (a()) {
            z = true;
        } else {
            if (this.f234a) {
                View view = this.f235b;
                for (ViewParent parent = this.f235b.getParent(); parent != null; parent = parent.getParent()) {
                    if (z.a(parent, view, this.f235b, i)) {
                        this.c = parent;
                        z.b(parent, view, this.f235b, i);
                        z = true;
                        break;
                    }
                    if (parent instanceof View) {
                        view = (View) parent;
                    }
                }
            }
            z = false;
        }
        return z;
    }

    public final boolean a(int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6;
        boolean z = false;
        if (this.f234a) {
            z = false;
            if (this.c != null) {
                if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
                    z = false;
                    if (iArr != null) {
                        iArr[0] = 0;
                        iArr[1] = 0;
                        z = false;
                    }
                } else {
                    if (iArr != null) {
                        this.f235b.getLocationInWindow(iArr);
                        i6 = iArr[0];
                        i5 = iArr[1];
                    } else {
                        i5 = 0;
                        i6 = 0;
                    }
                    z.a(this.c, this.f235b, i, i2, i3, i4);
                    if (iArr != null) {
                        this.f235b.getLocationInWindow(iArr);
                        iArr[0] = iArr[0] - i6;
                        iArr[1] = iArr[1] - i5;
                    }
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a2, code lost:
        if (r15[1] != 0) goto L_0x00a5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(int r7, int r8, int[] r9, int[] r10) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.l.a(int, int, int[], int[]):boolean");
    }

    public final void b() {
        if (this.c != null) {
            z.a(this.c, this.f235b);
            this.c = null;
        }
    }
}
