package android.support.v4.widget;

import android.content.Context;
import android.support.v4.view.j;
import android.support.v4.view.s;
import android.support.v4.view.t;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/h.class */
public final class h {
    private static final Interpolator v = new Interpolator() { // from class: android.support.v4.widget.h.1
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    int f307a;

    /* renamed from: b  reason: collision with root package name */
    int f308b;
    float[] c;
    float[] d;
    float[] e;
    float[] f;
    float g;
    int h;
    int i;
    View j;
    private int[] l;
    private int[] m;
    private int[] n;
    private int o;
    private VelocityTracker p;
    private float q;
    private g r;
    private final a s;
    private boolean t;
    private final ViewGroup u;
    private int k = -1;
    private final Runnable w = new Runnable() { // from class: android.support.v4.widget.h.2
        @Override // java.lang.Runnable
        public final void run() {
            h.this.b(0);
        }
    };

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/h$a.class */
    public static abstract class a {
        public void a(int i) {
        }

        public void a(int i, int i2) {
        }

        public void a(View view, float f) {
        }

        public void a(View view, int i) {
        }

        public abstract boolean a(View view);

        public int b(View view, int i) {
            return 0;
        }

        public void b(View view) {
        }

        public int c(View view) {
            return 0;
        }

        public void c() {
        }

        public int d(View view) {
            return 0;
        }
    }

    private h(Context context, ViewGroup viewGroup, a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (aVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        } else {
            this.u = viewGroup;
            this.s = aVar;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.h = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f308b = viewConfiguration.getScaledTouchSlop();
            this.q = viewConfiguration.getScaledMaximumFlingVelocity();
            this.g = viewConfiguration.getScaledMinimumFlingVelocity();
            this.r = g.a(context, v);
        }
    }

    private static float a(float f, float f2, float f3) {
        float f4;
        float abs = Math.abs(f);
        if (abs < f2) {
            f4 = 0.0f;
        } else if (abs > f3) {
            f4 = f3;
            if (f <= 0.0f) {
                f4 = -f3;
            }
        } else {
            f4 = f;
        }
        return f4;
    }

    private int a(int i, int i2, int i3) {
        int width;
        int min;
        if (i == 0) {
            min = 0;
        } else {
            int width2 = this.u.getWidth() / 2;
            float f = width2;
            float f2 = width2;
            float sin = (float) Math.sin((float) ((Math.min(1.0f, Math.abs(i) / width) - 0.5f) * 0.4712389167638204d));
            int abs = Math.abs(i2);
            min = Math.min(abs > 0 ? Math.round(Math.abs(((sin * f2) + f) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
        }
        return min;
    }

    public static h a(ViewGroup viewGroup, float f, a aVar) {
        h hVar = new h(viewGroup.getContext(), viewGroup, aVar);
        hVar.f308b = (int) (hVar.f308b * (1.0f / f));
        return hVar;
    }

    private void a(float f) {
        this.t = true;
        this.s.a(this.j, f);
        this.t = false;
        if (this.f307a == 1) {
            b(0);
        }
    }

    private void a(float f, float f2, int i) {
        int i2 = 0;
        if (this.c == null || this.c.length <= i) {
            float[] fArr = new float[i + 1];
            float[] fArr2 = new float[i + 1];
            float[] fArr3 = new float[i + 1];
            float[] fArr4 = new float[i + 1];
            int[] iArr = new int[i + 1];
            int[] iArr2 = new int[i + 1];
            int[] iArr3 = new int[i + 1];
            if (this.c != null) {
                System.arraycopy(this.c, 0, fArr, 0, this.c.length);
                System.arraycopy(this.d, 0, fArr2, 0, this.d.length);
                System.arraycopy(this.e, 0, fArr3, 0, this.e.length);
                System.arraycopy(this.f, 0, fArr4, 0, this.f.length);
                System.arraycopy(this.l, 0, iArr, 0, this.l.length);
                System.arraycopy(this.m, 0, iArr2, 0, this.m.length);
                System.arraycopy(this.n, 0, iArr3, 0, this.n.length);
            }
            this.c = fArr;
            this.d = fArr2;
            this.e = fArr3;
            this.f = fArr4;
            this.l = iArr;
            this.m = iArr2;
            this.n = iArr3;
        }
        float[] fArr5 = this.c;
        this.e[i] = f;
        fArr5[i] = f;
        float[] fArr6 = this.d;
        this.f[i] = f2;
        fArr6[i] = f2;
        int[] iArr4 = this.l;
        int i3 = (int) f;
        int i4 = (int) f2;
        if (i3 < this.u.getLeft() + this.h) {
            i2 = 1;
        }
        int i5 = i2;
        if (i4 < this.u.getTop() + this.h) {
            i5 = i2 | 4;
        }
        int i6 = i5;
        if (i3 > this.u.getRight() - this.h) {
            i6 = i5 | 2;
        }
        int i7 = i6;
        if (i4 > this.u.getBottom() - this.h) {
            i7 = i6 | 8;
        }
        iArr4[i] = i7;
        this.o |= 1 << i;
    }

    private boolean a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        boolean z = false;
        if ((this.l[i] & i2) == i2) {
            z = false;
            if ((this.i & i2) != 0) {
                z = false;
                if ((this.n[i] & i2) != i2) {
                    z = false;
                    if ((this.m[i] & i2) != i2) {
                        if (abs > this.f308b || abs2 > this.f308b) {
                            z = false;
                            if ((this.m[i] & i2) == 0) {
                                z = false;
                                if (abs > this.f308b) {
                                    z = true;
                                }
                            }
                        } else {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    private boolean a(int i, int i2, int i3, int i4) {
        boolean z;
        int left = this.j.getLeft();
        int top = this.j.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.r.f();
            b(0);
            z = false;
        } else {
            View view = this.j;
            int b2 = b(i3, (int) this.g, (int) this.q);
            int b3 = b(i4, (int) this.g, (int) this.q);
            int abs = Math.abs(i5);
            int abs2 = Math.abs(i6);
            int abs3 = Math.abs(b2);
            int abs4 = Math.abs(b3);
            int i7 = abs3 + abs4;
            int i8 = abs + abs2;
            float f = b2 != 0 ? abs3 / i7 : abs / i8;
            float f2 = b3 != 0 ? abs4 / i7 : abs2 / i8;
            int a2 = (int) ((f2 * a(i6, b3, 0)) + (f * a(i5, b2, this.s.c(view))));
            g gVar = this.r;
            gVar.f306b.a(gVar.f305a, left, top, i5, i6, a2);
            b(2);
            z = true;
        }
        return z;
    }

    private boolean a(View view, float f) {
        boolean z;
        if (view == null) {
            z = false;
        } else {
            z = false;
            if (this.s.c(view) > 0) {
                z = false;
                if (Math.abs(f) > this.f308b) {
                    z = true;
                }
            }
        }
        return z;
    }

    private static int b(int i, int i2, int i3) {
        int i4;
        int abs = Math.abs(i);
        if (abs < i2) {
            i4 = 0;
        } else if (abs > i3) {
            i4 = i3;
            if (i <= 0) {
                i4 = -i3;
            }
        } else {
            i4 = i;
        }
        return i4;
    }

    private void b(float f, float f2, int i) {
        int i2 = 1;
        if (!a(f, f2, i, 1)) {
            i2 = 0;
        }
        int i3 = i2;
        if (a(f2, f, i, 4)) {
            i3 = i2 | 4;
        }
        int i4 = i3;
        if (a(f, f2, i, 2)) {
            i4 = i3 | 2;
        }
        int i5 = i4;
        if (a(f2, f, i, 8)) {
            i5 = i4 | 8;
        }
        if (i5 != 0) {
            int[] iArr = this.m;
            iArr[i] = iArr[i] | i5;
            this.s.a(i5, i);
        }
    }

    private boolean b(View view, int i) {
        boolean z = true;
        if (!(view == this.j && this.k == i)) {
            if (view == null || !this.s.a(view)) {
                z = false;
            } else {
                this.k = i;
                a(view, i);
            }
        }
        return z;
    }

    public static boolean b(View view, int i, int i2) {
        boolean z;
        if (view == null) {
            z = false;
        } else {
            z = false;
            if (i >= view.getLeft()) {
                z = false;
                if (i < view.getRight()) {
                    z = false;
                    if (i2 >= view.getTop()) {
                        z = false;
                        if (i2 < view.getBottom()) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    private void c(int i) {
        if (this.c != null) {
            this.c[i] = 0.0f;
            this.d[i] = 0.0f;
            this.e[i] = 0.0f;
            this.f[i] = 0.0f;
            this.l[i] = 0;
            this.m[i] = 0;
            this.n[i] = 0;
            this.o &= (1 << i) ^ (-1);
        }
    }

    private void c(MotionEvent motionEvent) {
        int c = j.c(motionEvent);
        for (int i = 0; i < c; i++) {
            int b2 = j.b(motionEvent, i);
            float c2 = j.c(motionEvent, i);
            float d = j.d(motionEvent, i);
            this.e[b2] = c2;
            this.f[b2] = d;
        }
    }

    private void d() {
        this.p.computeCurrentVelocity(1000, this.q);
        float a2 = a(s.a(this.p, this.k), this.g, this.q);
        a(s.b(this.p, this.k), this.g, this.q);
        a(a2);
    }

    private boolean d(int i) {
        boolean z;
        if (!a(i)) {
            Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    public final void a() {
        this.k = -1;
        if (this.c != null) {
            Arrays.fill(this.c, 0.0f);
            Arrays.fill(this.d, 0.0f);
            Arrays.fill(this.e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.l, 0);
            Arrays.fill(this.m, 0);
            Arrays.fill(this.n, 0);
            this.o = 0;
        }
        if (this.p != null) {
            this.p.recycle();
            this.p = null;
        }
    }

    public final void a(View view, int i) {
        if (view.getParent() != this.u) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
        }
        this.j = view;
        this.k = i;
        this.s.b(view);
        b(1);
    }

    public final boolean a(int i) {
        boolean z = true;
        if ((this.o & (1 << i)) == 0) {
            z = false;
        }
        return z;
    }

    public final boolean a(int i, int i2) {
        if (this.t) {
            return a(i, i2, (int) s.a(this.p, this.k), (int) s.b(this.p, this.k));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    public final boolean a(MotionEvent motionEvent) {
        View b2;
        boolean z = true;
        int a2 = j.a(motionEvent);
        int b3 = j.b(motionEvent);
        if (a2 == 0) {
            a();
        }
        if (this.p == null) {
            this.p = VelocityTracker.obtain();
        }
        this.p.addMovement(motionEvent);
        switch (a2) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                int b4 = j.b(motionEvent, 0);
                a(x, y, b4);
                View b5 = b((int) x, (int) y);
                if (b5 == this.j && this.f307a == 2) {
                    b(b5, b4);
                }
                if ((this.l[b4] & this.i) != 0) {
                    this.s.c();
                    break;
                }
                break;
            case 1:
            case 3:
                a();
                break;
            case 2:
                if (!(this.c == null || this.d == null)) {
                    int c = j.c(motionEvent);
                    for (int i = 0; i < c; i++) {
                        int b6 = j.b(motionEvent, i);
                        if (d(b6)) {
                            float c2 = j.c(motionEvent, i);
                            float d = j.d(motionEvent, i);
                            float f = c2 - this.c[b6];
                            float f2 = this.d[b6];
                            View b7 = b((int) c2, (int) d);
                            boolean z2 = b7 != null && a(b7, f);
                            if (z2) {
                                int left = b7.getLeft();
                                int b8 = this.s.b(b7, ((int) f) + left);
                                b7.getTop();
                                this.s.d(b7);
                                int c3 = this.s.c(b7);
                                if (c3 != 0) {
                                    if (c3 > 0 && b8 == left) {
                                    }
                                }
                                c(motionEvent);
                                break;
                            }
                            b(f, d - f2, b6);
                            if (this.f307a != 1) {
                                if (z2 && b(b7, b6)) {
                                }
                            }
                            c(motionEvent);
                        }
                    }
                    c(motionEvent);
                }
                break;
            case 5:
                int b9 = j.b(motionEvent, b3);
                float c4 = j.c(motionEvent, b3);
                float d2 = j.d(motionEvent, b3);
                a(c4, d2, b9);
                if (this.f307a == 0) {
                    if ((this.l[b9] & this.i) != 0) {
                        this.s.c();
                        break;
                    }
                } else if (this.f307a == 2 && (b2 = b((int) c4, (int) d2)) == this.j) {
                    b(b2, b9);
                    break;
                }
                break;
            case 6:
                c(j.b(motionEvent, b3));
                break;
        }
        if (this.f307a != 1) {
            z = false;
        }
        return z;
    }

    public final boolean a(View view, int i, int i2) {
        this.j = view;
        this.k = -1;
        boolean a2 = a(i, i2, 0, 0);
        if (!a2 && this.f307a == 0 && this.j != null) {
            this.j = null;
        }
        return a2;
    }

    public final View b(int i, int i2) {
        View view;
        int childCount = this.u.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                view = null;
                break;
            }
            view = this.u.getChildAt(childCount);
            if (i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom()) {
                break;
            }
            childCount--;
        }
        return view;
    }

    public final void b() {
        a();
        if (this.f307a == 2) {
            this.r.b();
            this.r.c();
            this.r.f();
            int b2 = this.r.b();
            this.r.c();
            this.s.a(this.j, b2);
        }
        b(0);
    }

    final void b(int i) {
        this.u.removeCallbacks(this.w);
        if (this.f307a != i) {
            this.f307a = i;
            this.s.a(i);
            if (this.f307a == 0) {
                this.j = null;
            }
        }
    }

    public final void b(MotionEvent motionEvent) {
        int i;
        int i2 = 0;
        int a2 = j.a(motionEvent);
        int b2 = j.b(motionEvent);
        if (a2 == 0) {
            a();
        }
        if (this.p == null) {
            this.p = VelocityTracker.obtain();
        }
        this.p.addMovement(motionEvent);
        switch (a2) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                int b3 = j.b(motionEvent, 0);
                View b4 = b((int) x, (int) y);
                a(x, y, b3);
                b(b4, b3);
                if ((this.l[b3] & this.i) != 0) {
                    this.s.c();
                    return;
                }
                return;
            case 1:
                if (this.f307a == 1) {
                    d();
                }
                a();
                return;
            case 2:
                if (this.f307a != 1) {
                    int c = j.c(motionEvent);
                    for (int i3 = 0; i3 < c; i3++) {
                        int b5 = j.b(motionEvent, i3);
                        if (d(b5)) {
                            float c2 = j.c(motionEvent, i3);
                            float d = j.d(motionEvent, i3);
                            float f = c2 - this.c[b5];
                            b(f, d - this.d[b5], b5);
                            if (this.f307a != 1) {
                                View b6 = b((int) c2, (int) d);
                                if (a(b6, f) && b(b6, b5)) {
                                }
                            }
                            c(motionEvent);
                            return;
                        }
                    }
                    c(motionEvent);
                    return;
                } else if (d(this.k)) {
                    int a3 = j.a(motionEvent, this.k);
                    float c3 = j.c(motionEvent, a3);
                    float d2 = j.d(motionEvent, a3);
                    int i4 = (int) (c3 - this.e[this.k]);
                    int i5 = (int) (d2 - this.f[this.k]);
                    int left = this.j.getLeft() + i4;
                    this.j.getTop();
                    int left2 = this.j.getLeft();
                    int top = this.j.getTop();
                    int i6 = left;
                    if (i4 != 0) {
                        i6 = this.s.b(this.j, left);
                        t.d(this.j, i6 - left2);
                    }
                    if (i5 != 0) {
                        t.c(this.j, this.s.d(this.j) - top);
                    }
                    if (!(i4 == 0 && i5 == 0)) {
                        this.s.a(this.j, i6);
                    }
                    c(motionEvent);
                    return;
                } else {
                    return;
                }
            case 3:
                if (this.f307a == 1) {
                    a(0.0f);
                }
                a();
                return;
            case 4:
            default:
                return;
            case 5:
                int b7 = j.b(motionEvent, b2);
                float c4 = j.c(motionEvent, b2);
                float d3 = j.d(motionEvent, b2);
                a(c4, d3, b7);
                if (this.f307a == 0) {
                    b(b((int) c4, (int) d3), b7);
                    if ((this.l[b7] & this.i) != 0) {
                        this.s.c();
                        return;
                    }
                    return;
                }
                if (b(this.j, (int) c4, (int) d3)) {
                    b(this.j, b7);
                    return;
                }
                return;
            case 6:
                int b8 = j.b(motionEvent, b2);
                if (this.f307a == 1 && b8 == this.k) {
                    int c5 = j.c(motionEvent);
                    while (true) {
                        if (i2 < c5) {
                            int b9 = j.b(motionEvent, i2);
                            if (b9 != this.k) {
                                if (b((int) j.c(motionEvent, i2), (int) j.d(motionEvent, i2)) == this.j && b(this.j, b9)) {
                                    i = this.k;
                                }
                            }
                            i2++;
                        } else {
                            i = -1;
                        }
                    }
                    if (i == -1) {
                        d();
                    }
                }
                c(b8);
                return;
        }
    }

    public final boolean c() {
        boolean z = false;
        if (this.f307a == 2) {
            boolean e = this.r.e();
            int b2 = this.r.b();
            int c = this.r.c();
            int left = b2 - this.j.getLeft();
            int top = c - this.j.getTop();
            if (left != 0) {
                t.d(this.j, left);
            }
            if (top != 0) {
                t.c(this.j, top);
            }
            if (!(left == 0 && top == 0)) {
                this.s.a(this.j, b2);
            }
            boolean z2 = e;
            if (e) {
                g gVar = this.r;
                z2 = e;
                if (b2 == gVar.f306b.g(gVar.f305a)) {
                    g gVar2 = this.r;
                    z2 = e;
                    if (c == gVar2.f306b.h(gVar2.f305a)) {
                        this.r.f();
                        z2 = false;
                    }
                }
            }
            if (!z2) {
                this.u.post(this.w);
            }
        }
        if (this.f307a == 2) {
            z = true;
        }
        return z;
    }
}
