package androidx.customview.p039a;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.p037g.C0741t;
import java.util.Arrays;
/* renamed from: androidx.customview.a.e */
/* loaded from: classes-dex2jar.jar:androidx/customview/a/e.class */
public final class C0799e {

    /* renamed from: v */
    private static final Interpolator f3280v = new animationInterpolatorC0801f();

    /* renamed from: a */
    private int f3281a;

    /* renamed from: b */
    private int f3282b;

    /* renamed from: d */
    private float[] f3284d;

    /* renamed from: e */
    private float[] f3285e;

    /* renamed from: f */
    private float[] f3286f;

    /* renamed from: g */
    private float[] f3287g;

    /* renamed from: h */
    private int[] f3288h;

    /* renamed from: i */
    private int[] f3289i;

    /* renamed from: j */
    private int[] f3290j;

    /* renamed from: k */
    private int f3291k;

    /* renamed from: l */
    private VelocityTracker f3292l;

    /* renamed from: m */
    private float f3293m;

    /* renamed from: n */
    private float f3294n;

    /* renamed from: o */
    private int f3295o;

    /* renamed from: p */
    private int f3296p;

    /* renamed from: q */
    private OverScroller f3297q;

    /* renamed from: r */
    private final AbstractC0800a f3298r;

    /* renamed from: s */
    private View f3299s;

    /* renamed from: t */
    private boolean f3300t;

    /* renamed from: u */
    private final ViewGroup f3301u;

    /* renamed from: c */
    private int f3283c = -1;

    /* renamed from: w */
    private final Runnable f3302w = new RunnableC0802g(this);

    /* renamed from: androidx.customview.a.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/e$a.class */
    public static abstract class AbstractC0800a {
        /* renamed from: a */
        public int mo1435a(View view) {
            return 0;
        }

        /* renamed from: a */
        public void mo8011a() {
        }

        /* renamed from: a */
        public void mo1343a(int i) {
        }

        /* renamed from: a */
        public void mo6679a(int i, int i2) {
        }

        /* renamed from: a */
        public void mo1342a(View view, float f, float f2) {
        }

        /* renamed from: a */
        public void mo1341a(View view, int i) {
        }

        /* renamed from: b */
        public int mo1340b() {
            return 0;
        }

        /* renamed from: b */
        public void mo1434b(View view, int i) {
        }

        /* renamed from: c */
        public abstract boolean mo1339c(View view, int i);

        /* renamed from: d */
        public int mo1338d(View view, int i) {
            return 0;
        }

        /* renamed from: e */
        public int mo1337e(View view, int i) {
            return 0;
        }
    }

    private C0799e(Context context, ViewGroup viewGroup, AbstractC0800a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (aVar != null) {
            this.f3301u = viewGroup;
            this.f3298r = aVar;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f3295o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f3282b = viewConfiguration.getScaledTouchSlop();
            this.f3293m = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f3294n = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f3297q = new OverScroller(context, f3280v);
        } else {
            throw new IllegalArgumentException("Callback may not be null");
        }
    }

    /* renamed from: a */
    private static float m8081a(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return 0.0f;
        }
        float f4 = f;
        if (abs > f3) {
            if (f > 0.0f) {
                return f3;
            }
            f4 = -f3;
        }
        return f4;
    }

    /* renamed from: a */
    private int m8076a(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.f3301u.getWidth();
        float f = width / 2;
        float b = m8066b(Math.min(1.0f, Math.abs(i) / width));
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs((f + (b * f)) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    /* renamed from: a */
    private int m8070a(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int b = m8062b(i3, (int) this.f3294n, (int) this.f3293m);
        int b2 = m8062b(i4, (int) this.f3294n, (int) this.f3293m);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(b);
        int abs4 = Math.abs(b2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        if (b != 0) {
            f2 = abs3;
            f = i5;
        } else {
            f2 = abs;
            f = i6;
        }
        float f5 = f2 / f;
        if (b2 != 0) {
            f3 = abs4;
            f4 = i5;
        } else {
            f3 = abs2;
            f4 = i6;
        }
        return (int) ((m8076a(i, b, this.f3298r.mo1435a(view)) * f5) + (m8076a(i2, b2, this.f3298r.mo1340b()) * (f3 / f4)));
    }

    /* renamed from: a */
    public static C0799e m8069a(ViewGroup viewGroup, float f, AbstractC0800a aVar) {
        C0799e a = m8068a(viewGroup, aVar);
        a.f3282b = (int) (a.f3282b * (1.0f / f));
        return a;
    }

    /* renamed from: a */
    public static C0799e m8068a(ViewGroup viewGroup, AbstractC0800a aVar) {
        return new C0799e(viewGroup.getContext(), viewGroup, aVar);
    }

    /* renamed from: a */
    private void m8082a(float f, float f2) {
        this.f3300t = true;
        this.f3298r.mo1342a(this.f3299s, f, f2);
        this.f3300t = false;
        if (this.f3281a == 1) {
            m8064b(0);
        }
    }

    /* renamed from: a */
    private void m8080a(float f, float f2, int i) {
        float[] fArr = this.f3284d;
        int i2 = 0;
        if (fArr == null || fArr.length <= i) {
            int i3 = i + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            float[] fArr6 = this.f3284d;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.f3285e;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.f3286f;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.f3287g;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.f3288h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f3289i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f3290j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f3284d = fArr2;
            this.f3285e = fArr3;
            this.f3286f = fArr4;
            this.f3287g = fArr5;
            this.f3288h = iArr;
            this.f3289i = iArr2;
            this.f3290j = iArr3;
        }
        float[] fArr10 = this.f3284d;
        this.f3286f[i] = f;
        fArr10[i] = f;
        float[] fArr11 = this.f3285e;
        this.f3287g[i] = f2;
        fArr11[i] = f2;
        int[] iArr7 = this.f3288h;
        int i4 = (int) f;
        int i5 = (int) f2;
        if (i4 < this.f3301u.getLeft() + this.f3295o) {
            i2 = 1;
        }
        int i6 = i2;
        if (i5 < this.f3301u.getTop() + this.f3295o) {
            i6 = i2 | 4;
        }
        int i7 = i6;
        if (i4 > this.f3301u.getRight() - this.f3295o) {
            i7 = i6 | 2;
        }
        int i8 = i7;
        if (i5 > this.f3301u.getBottom() - this.f3295o) {
            i8 = i7 | 8;
        }
        iArr7[i] = i8;
        this.f3291k |= 1 << i;
    }

    /* renamed from: a */
    private boolean m8079a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.f3288h[i] & i2) != i2 || (this.f3296p & i2) == 0 || (this.f3290j[i] & i2) == i2 || (this.f3289i[i] & i2) == i2) {
            return false;
        }
        int i3 = this.f3282b;
        return (abs > ((float) i3) || abs2 > ((float) i3)) && (this.f3289i[i] & i2) == 0 && abs > ((float) this.f3282b);
    }

    /* renamed from: a */
    private boolean m8075a(int i, int i2, int i3, int i4) {
        int left = this.f3299s.getLeft();
        int top = this.f3299s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f3297q.abortAnimation();
            m8064b(0);
            return false;
        }
        this.f3297q.startScroll(left, top, i5, i6, m8070a(this.f3299s, i5, i6, i3, i4));
        m8064b(2);
        return true;
    }

    /* renamed from: a */
    private boolean m8073a(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.f3298r.mo1435a(view) > 0;
        boolean z2 = this.f3298r.mo1340b() > 0;
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f3282b) : z2 && Math.abs(f2) > ((float) this.f3282b);
        }
        int i = this.f3282b;
        return (f * f) + (f2 * f2) > ((float) (i * i));
    }

    /* renamed from: b */
    private static float m8066b(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: b */
    private static int m8062b(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        int i4 = i;
        if (abs > i3) {
            if (i > 0) {
                return i3;
            }
            i4 = -i3;
        }
        return i4;
    }

    /* renamed from: b */
    private void m8065b(float f, float f2, int i) {
        boolean a = m8079a(f, f2, i, 1);
        boolean z = a;
        if (m8079a(f2, f, i, 4)) {
            z = a | true;
        }
        boolean z2 = z;
        if (m8079a(f, f2, i, 2)) {
            z2 = z | true;
        }
        boolean z3 = z2;
        if (m8079a(f2, f, i, 8)) {
            z3 = z2 | true;
        }
        if (z3) {
            int[] iArr = this.f3289i;
            int i2 = iArr[i];
            int i3 = z3 ? 1 : 0;
            char c = z3 ? 1 : 0;
            iArr[i] = i2 | i3;
            AbstractC0800a aVar = this.f3298r;
            int i4 = z3 ? 1 : 0;
            int i5 = z3 ? 1 : 0;
            aVar.mo6679a(i4, i);
        }
    }

    /* renamed from: b */
    private boolean m8060b(View view, int i) {
        if (view == this.f3299s && this.f3283c == i) {
            return true;
        }
        if (view == null || !this.f3298r.mo1339c(view, i)) {
            return false;
        }
        this.f3283c = i;
        m8072a(view, i);
        return true;
    }

    /* renamed from: b */
    public static boolean m8059b(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    /* renamed from: c */
    private void m8057c(int i) {
        if (this.f3284d != null && m8054d(i)) {
            this.f3284d[i] = 0.0f;
            this.f3285e[i] = 0.0f;
            this.f3286f[i] = 0.0f;
            this.f3287g[i] = 0.0f;
            this.f3288h[i] = 0;
            this.f3289i[i] = 0;
            this.f3290j[i] = 0;
            this.f3291k = ((1 << i) ^ (-1)) & this.f3291k;
        }
    }

    /* renamed from: c */
    private void m8056c(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m8052e(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f3286f[pointerId] = x;
                this.f3287g[pointerId] = y;
            }
        }
    }

    /* renamed from: d */
    private boolean m8054d(int i) {
        return (this.f3291k & (1 << i)) != 0;
    }

    /* renamed from: e */
    private boolean m8052e(int i) {
        if (m8054d(i)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    /* renamed from: i */
    private void m8048i() {
        this.f3292l.computeCurrentVelocity(1000, this.f3293m);
        m8082a(m8081a(this.f3292l.getXVelocity(this.f3283c), this.f3294n, this.f3293m), m8081a(this.f3292l.getYVelocity(this.f3283c), this.f3294n, this.f3293m));
    }

    /* renamed from: a */
    public final int m8084a() {
        return this.f3281a;
    }

    /* renamed from: a */
    public final void m8083a(float f) {
        this.f3294n = f;
    }

    /* renamed from: a */
    public final void m8078a(int i) {
        this.f3296p = i;
    }

    /* renamed from: a */
    public final void m8072a(View view, int i) {
        if (view.getParent() == this.f3301u) {
            this.f3299s = view;
            this.f3283c = i;
            this.f3298r.mo1434b(view, i);
            m8064b(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f3301u + ")");
    }

    /* renamed from: a */
    public final boolean m8077a(int i, int i2) {
        if (this.f3300t) {
            return m8075a(i, i2, (int) this.f3292l.getXVelocity(this.f3283c), (int) this.f3292l.getYVelocity(this.f3283c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0086, code lost:
        if ((r5.f3288h[r0] & r5.f3296p) != 0) goto L_0x0218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0183, code lost:
        if (r0 != r0) goto L_0x0197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0215, code lost:
        if ((r5.f3288h[r0] & r5.f3296p) != 0) goto L_0x0218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0218, code lost:
        r5.f3298r.mo8011a();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8074a(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.p039a.C0799e.m8074a(android.view.MotionEvent):boolean");
    }

    /* renamed from: a */
    public final boolean m8071a(View view, int i, int i2) {
        this.f3299s = view;
        this.f3283c = -1;
        boolean a = m8075a(i, i2, 0, 0);
        if (!a && this.f3281a == 0 && this.f3299s != null) {
            this.f3299s = null;
        }
        return a;
    }

    /* renamed from: b */
    public final int m8067b() {
        return this.f3295o;
    }

    /* renamed from: b */
    public final View m8063b(int i, int i2) {
        for (int childCount = this.f3301u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.f3301u.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m8064b(int i) {
        this.f3301u.removeCallbacks(this.f3302w);
        if (this.f3281a != i) {
            this.f3281a = i;
            this.f3298r.mo1343a(i);
            if (this.f3281a == 0) {
                this.f3299s = null;
            }
        }
    }

    /* renamed from: b */
    public final void m8061b(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m8053e();
        }
        if (this.f3292l == null) {
            this.f3292l = VelocityTracker.obtain();
        }
        this.f3292l.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View b = m8063b((int) x, (int) y);
            m8080a(x, y, pointerId);
            m8060b(b, pointerId);
            if ((this.f3288h[pointerId] & this.f3296p) != 0) {
                this.f3298r.mo8011a();
            }
        } else if (actionMasked == 1) {
            if (this.f3281a == 1) {
                m8048i();
            }
            m8053e();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f3281a == 1) {
                    m8082a(0.0f, 0.0f);
                }
                m8053e();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                m8080a(x2, y2, pointerId2);
                if (this.f3281a == 0) {
                    m8060b(m8063b((int) x2, (int) y2), pointerId2);
                    if ((this.f3288h[pointerId2] & this.f3296p) != 0) {
                        this.f3298r.mo8011a();
                        return;
                    }
                    return;
                }
                if (m8059b(this.f3299s, (int) x2, (int) y2)) {
                    m8060b(this.f3299s, pointerId2);
                }
            } else if (actionMasked == 6) {
                int pointerId3 = motionEvent.getPointerId(actionIndex);
                if (this.f3281a == 1 && pointerId3 == this.f3283c) {
                    int pointerCount = motionEvent.getPointerCount();
                    while (true) {
                        if (i2 >= pointerCount) {
                            i = -1;
                            break;
                        }
                        int pointerId4 = motionEvent.getPointerId(i2);
                        if (pointerId4 != this.f3283c) {
                            View b2 = m8063b((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                            View view = this.f3299s;
                            if (b2 == view && m8060b(view, pointerId4)) {
                                i = this.f3283c;
                                break;
                            }
                        }
                        i2++;
                    }
                    if (i == -1) {
                        m8048i();
                    }
                }
                m8057c(pointerId3);
            }
        } else if (this.f3281a != 1) {
            int pointerCount2 = motionEvent.getPointerCount();
            for (int i3 = 0; i3 < pointerCount2; i3++) {
                int pointerId5 = motionEvent.getPointerId(i3);
                if (m8052e(pointerId5)) {
                    float x3 = motionEvent.getX(i3);
                    float y3 = motionEvent.getY(i3);
                    float f = x3 - this.f3284d[pointerId5];
                    float f2 = y3 - this.f3285e[pointerId5];
                    m8065b(f, f2, pointerId5);
                    if (this.f3281a == 1) {
                        break;
                    }
                    View b3 = m8063b((int) x3, (int) y3);
                    if (m8073a(b3, f, f2) && m8060b(b3, pointerId5)) {
                        break;
                    }
                }
            }
            m8056c(motionEvent);
        } else if (m8052e(this.f3283c)) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f3283c);
            float x4 = motionEvent.getX(findPointerIndex);
            float y4 = motionEvent.getY(findPointerIndex);
            float[] fArr = this.f3286f;
            int i4 = this.f3283c;
            int i5 = (int) (x4 - fArr[i4]);
            int i6 = (int) (y4 - this.f3287g[i4]);
            int left = this.f3299s.getLeft() + i5;
            int top = this.f3299s.getTop();
            int left2 = this.f3299s.getLeft();
            int top2 = this.f3299s.getTop();
            int i7 = left;
            if (i5 != 0) {
                i7 = this.f3298r.mo1338d(this.f3299s, left);
                C0741t.m8330d(this.f3299s, i7 - left2);
            }
            if (i6 != 0) {
                C0741t.m8332c(this.f3299s, this.f3298r.mo1337e(this.f3299s, top + i6) - top2);
            }
            if (!(i5 == 0 && i6 == 0)) {
                this.f3298r.mo1341a(this.f3299s, i7);
            }
            m8056c(motionEvent);
        }
    }

    /* renamed from: c */
    public final View m8058c() {
        return this.f3299s;
    }

    /* renamed from: d */
    public final int m8055d() {
        return this.f3282b;
    }

    /* renamed from: e */
    public final void m8053e() {
        this.f3283c = -1;
        float[] fArr = this.f3284d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f3285e, 0.0f);
            Arrays.fill(this.f3286f, 0.0f);
            Arrays.fill(this.f3287g, 0.0f);
            Arrays.fill(this.f3288h, 0);
            Arrays.fill(this.f3289i, 0);
            Arrays.fill(this.f3290j, 0);
            this.f3291k = 0;
        }
        VelocityTracker velocityTracker = this.f3292l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f3292l = null;
        }
    }

    /* renamed from: f */
    public final void m8051f() {
        m8053e();
        if (this.f3281a == 2) {
            this.f3297q.getCurrX();
            this.f3297q.getCurrY();
            this.f3297q.abortAnimation();
            int currX = this.f3297q.getCurrX();
            this.f3297q.getCurrY();
            this.f3298r.mo1341a(this.f3299s, currX);
        }
        m8064b(0);
    }

    /* renamed from: g */
    public final boolean m8050g() {
        if (this.f3281a == 2) {
            boolean computeScrollOffset = this.f3297q.computeScrollOffset();
            int currX = this.f3297q.getCurrX();
            int currY = this.f3297q.getCurrY();
            int left = currX - this.f3299s.getLeft();
            int top = currY - this.f3299s.getTop();
            if (left != 0) {
                C0741t.m8330d(this.f3299s, left);
            }
            if (top != 0) {
                C0741t.m8332c(this.f3299s, top);
            }
            if (!(left == 0 && top == 0)) {
                this.f3298r.mo1341a(this.f3299s, currX);
            }
            boolean z = computeScrollOffset;
            if (computeScrollOffset) {
                z = computeScrollOffset;
                if (currX == this.f3297q.getFinalX()) {
                    z = computeScrollOffset;
                    if (currY == this.f3297q.getFinalY()) {
                        this.f3297q.abortAnimation();
                        z = false;
                    }
                }
            }
            if (!z) {
                this.f3301u.post(this.f3302w);
            }
        }
        return this.f3281a == 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005b A[LOOP:0: B:3:0x0008->B:14:0x005b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0059 A[SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8049h() {
        /*
            r4 = this;
            r0 = r4
            float[] r0 = r0.f3284d
            int r0 = r0.length
            r5 = r0
            r0 = 0
            r6 = r0
        L_0x0008:
            r0 = r6
            r1 = r5
            if (r0 >= r1) goto L_0x0061
            r0 = r4
            r1 = r6
            boolean r0 = r0.m8054d(r1)
            if (r0 == 0) goto L_0x0051
            r0 = r4
            float[] r0 = r0.f3286f
            r1 = r6
            r0 = r0[r1]
            r1 = r4
            float[] r1 = r1.f3284d
            r2 = r6
            r1 = r1[r2]
            float r0 = r0 - r1
            r7 = r0
            r0 = r4
            float[] r0 = r0.f3287g
            r1 = r6
            r0 = r0[r1]
            r1 = r4
            float[] r1 = r1.f3285e
            r2 = r6
            r1 = r1[r2]
            float r0 = r0 - r1
            r8 = r0
            r0 = r4
            int r0 = r0.f3282b
            r9 = r0
            r0 = r7
            r1 = r7
            float r0 = r0 * r1
            r1 = r8
            r2 = r8
            float r1 = r1 * r2
            float r0 = r0 + r1
            r1 = r9
            r2 = r9
            int r1 = r1 * r2
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0051
            r0 = 1
            r9 = r0
            goto L_0x0054
        L_0x0051:
            r0 = 0
            r9 = r0
        L_0x0054:
            r0 = r9
            if (r0 == 0) goto L_0x005b
            r0 = 1
            return r0
        L_0x005b:
            int r6 = r6 + 1
            goto L_0x0008
        L_0x0061:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.p039a.C0799e.m8049h():boolean");
    }
}
