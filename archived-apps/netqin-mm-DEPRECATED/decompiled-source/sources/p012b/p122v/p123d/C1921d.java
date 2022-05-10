package p012b.p122v.p123d;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.v.d.d */
/* loaded from: classes-dex2jar.jar:b/v/d/d.class */
public class C1921d extends RecyclerView.AbstractC0510n implements RecyclerView.AbstractC0518r {

    /* renamed from: D */
    public static final int[] f7568D = {16842919};

    /* renamed from: E */
    public static final int[] f7569E = new int[0];

    /* renamed from: a */
    public final int f7573a;

    /* renamed from: b */
    public final int f7574b;

    /* renamed from: c */
    public final StateListDrawable f7575c;

    /* renamed from: d */
    public final Drawable f7576d;

    /* renamed from: e */
    public final int f7577e;

    /* renamed from: f */
    public final int f7578f;

    /* renamed from: g */
    public final StateListDrawable f7579g;

    /* renamed from: h */
    public final Drawable f7580h;

    /* renamed from: i */
    public final int f7581i;

    /* renamed from: j */
    public final int f7582j;

    /* renamed from: k */
    public int f7583k;

    /* renamed from: l */
    public int f7584l;

    /* renamed from: m */
    public float f7585m;

    /* renamed from: n */
    public int f7586n;

    /* renamed from: o */
    public int f7587o;

    /* renamed from: p */
    public float f7588p;

    /* renamed from: s */
    public RecyclerView f7591s;

    /* renamed from: q */
    public int f7589q = 0;

    /* renamed from: r */
    public int f7590r = 0;

    /* renamed from: t */
    public boolean f7592t = false;

    /* renamed from: u */
    public boolean f7593u = false;

    /* renamed from: v */
    public int f7594v = 0;

    /* renamed from: w */
    public int f7595w = 0;

    /* renamed from: x */
    public final int[] f7596x = new int[2];

    /* renamed from: y */
    public final int[] f7597y = new int[2];

    /* renamed from: z */
    public final ValueAnimator f7598z = ValueAnimator.ofFloat(0.0f, 1.0f);

    /* renamed from: A */
    public int f7570A = 0;

    /* renamed from: B */
    public final Runnable f7571B = new RunnableC1922a();

    /* renamed from: C */
    public final RecyclerView.AbstractC0519s f7572C = new C1923b();

    /* renamed from: b.v.d.d$a */
    /* loaded from: classes-dex2jar.jar:b/v/d/d$a.class */
    public class RunnableC1922a implements Runnable {
        public RunnableC1922a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1921d.this.m31654a(500);
        }
    }

    /* renamed from: b.v.d.d$b */
    /* loaded from: classes-dex2jar.jar:b/v/d/d$b.class */
    public class C1923b extends RecyclerView.AbstractC0519s {
        public C1923b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0519s
        /* renamed from: a */
        public void mo31634a(RecyclerView recyclerView, int i, int i2) {
            C1921d.this.m31653a(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    /* renamed from: b.v.d.d$c */
    /* loaded from: classes-dex2jar.jar:b/v/d/d$c.class */
    public class C1924c extends AnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f7601a = false;

        public C1924c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f7601a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f7601a) {
                this.f7601a = false;
            } else if (((Float) C1921d.this.f7598z.getAnimatedValue()).floatValue() == 0.0f) {
                C1921d dVar = C1921d.this;
                dVar.f7570A = 0;
                dVar.m31640c(0);
            } else {
                C1921d dVar2 = C1921d.this;
                dVar2.f7570A = 2;
                dVar2.m31637f();
            }
        }
    }

    /* renamed from: b.v.d.d$d */
    /* loaded from: classes-dex2jar.jar:b/v/d/d$d.class */
    public class C1925d implements ValueAnimator.AnimatorUpdateListener {
        public C1925d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C1921d.this.f7575c.setAlpha(floatValue);
            C1921d.this.f7576d.setAlpha(floatValue);
            C1921d.this.m31637f();
        }
    }

    public C1921d(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        this.f7575c = stateListDrawable;
        this.f7576d = drawable;
        this.f7579g = stateListDrawable2;
        this.f7580h = drawable2;
        this.f7577e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f7578f = Math.max(i, drawable.getIntrinsicWidth());
        this.f7581i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f7582j = Math.max(i, drawable2.getIntrinsicWidth());
        this.f7573a = i2;
        this.f7574b = i3;
        this.f7575c.setAlpha(255);
        this.f7576d.setAlpha(255);
        this.f7598z.addListener(new C1924c());
        this.f7598z.addUpdateListener(new C1925d());
        m31651a(recyclerView);
    }

    /* renamed from: a */
    public final int m31655a(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        float f3 = (f2 - f) / i4;
        int i5 = i - i3;
        int i6 = (int) (f3 * i5);
        int i7 = i2 + i6;
        if (i7 >= i5 || i7 < 0) {
            return 0;
        }
        return i6;
    }

    /* renamed from: a */
    public final void m31658a() {
        this.f7591s.removeCallbacks(this.f7571B);
    }

    /* renamed from: a */
    public final void m31657a(float f) {
        int[] c = m31641c();
        float max = Math.max(c[0], Math.min(c[1], f));
        if (Math.abs(this.f7587o - max) >= 2.0f) {
            int a = m31655a(this.f7588p, max, c, this.f7591s.computeHorizontalScrollRange(), this.f7591s.computeHorizontalScrollOffset(), this.f7589q);
            if (a != 0) {
                this.f7591s.scrollBy(a, 0);
            }
            this.f7588p = max;
        }
    }

    /* renamed from: a */
    public void m31654a(int i) {
        int i2 = this.f7570A;
        if (i2 == 1) {
            this.f7598z.cancel();
        } else if (i2 != 2) {
            return;
        }
        this.f7570A = 3;
        ValueAnimator valueAnimator = this.f7598z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.f7598z.setDuration(i);
        this.f7598z.start();
    }

    /* renamed from: a */
    public void m31653a(int i, int i2) {
        int computeVerticalScrollRange = this.f7591s.computeVerticalScrollRange();
        int i3 = this.f7590r;
        this.f7592t = computeVerticalScrollRange - i3 > 0 && i3 >= this.f7573a;
        int computeHorizontalScrollRange = this.f7591s.computeHorizontalScrollRange();
        int i4 = this.f7589q;
        boolean z = computeHorizontalScrollRange - i4 > 0 && i4 >= this.f7573a;
        this.f7593u = z;
        if (this.f7592t || z) {
            if (this.f7592t) {
                float f = i3;
                this.f7584l = (int) ((f * (i2 + (f / 2.0f))) / computeVerticalScrollRange);
                this.f7583k = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
            }
            if (this.f7593u) {
                float f2 = i4;
                this.f7587o = (int) ((f2 * (i + (f2 / 2.0f))) / computeHorizontalScrollRange);
                this.f7586n = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
            }
            int i5 = this.f7594v;
            if (i5 == 0 || i5 == 1) {
                m31640c(1);
            }
        } else if (this.f7594v != 0) {
            m31640c(0);
        }
    }

    /* renamed from: a */
    public final void m31652a(Canvas canvas) {
        int i = this.f7590r;
        int i2 = this.f7581i;
        int i3 = i - i2;
        int i4 = this.f7587o;
        int i5 = this.f7586n;
        int i6 = i4 - (i5 / 2);
        this.f7579g.setBounds(0, 0, i5, i2);
        this.f7580h.setBounds(0, 0, this.f7589q, this.f7582j);
        canvas.translate(0.0f, i3);
        this.f7580h.draw(canvas);
        canvas.translate(i6, 0.0f);
        this.f7579g.draw(canvas);
        canvas.translate(-i6, -i3);
    }

    /* renamed from: a */
    public void m31651a(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f7591s;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                m31648b();
            }
            this.f7591s = recyclerView;
            if (recyclerView != null) {
                m31636g();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0518r
    /* renamed from: a */
    public void mo31650a(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f7594v != 0) {
            if (motionEvent.getAction() == 0) {
                boolean b = m31646b(motionEvent.getX(), motionEvent.getY());
                boolean a = m31656a(motionEvent.getX(), motionEvent.getY());
                if (b || a) {
                    if (a) {
                        this.f7595w = 1;
                        this.f7588p = (int) motionEvent.getX();
                    } else if (b) {
                        this.f7595w = 2;
                        this.f7585m = (int) motionEvent.getY();
                    }
                    m31640c(2);
                }
            } else if (motionEvent.getAction() == 1 && this.f7594v == 2) {
                this.f7585m = 0.0f;
                this.f7588p = 0.0f;
                m31640c(1);
                this.f7595w = 0;
            } else if (motionEvent.getAction() == 2 && this.f7594v == 2) {
                m31635h();
                if (this.f7595w == 1) {
                    m31657a(motionEvent.getX());
                }
                if (this.f7595w == 2) {
                    m31647b(motionEvent.getY());
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0518r
    /* renamed from: a */
    public void mo31649a(boolean z) {
    }

    /* renamed from: a */
    public boolean m31656a(float f, float f2) {
        boolean z;
        if (f2 >= this.f7590r - this.f7581i) {
            int i = this.f7587o;
            int i2 = this.f7586n;
            if (f >= i - (i2 / 2) && f <= i + (i2 / 2)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    public final void m31648b() {
        this.f7591s.m37464b((RecyclerView.AbstractC0510n) this);
        this.f7591s.m37463b((RecyclerView.AbstractC0518r) this);
        this.f7591s.m37462b(this.f7572C);
        m31658a();
    }

    /* renamed from: b */
    public final void m31647b(float f) {
        int[] d = m31639d();
        float max = Math.max(d[0], Math.min(d[1], f));
        if (Math.abs(this.f7584l - max) >= 2.0f) {
            int a = m31655a(this.f7585m, max, d, this.f7591s.computeVerticalScrollRange(), this.f7591s.computeVerticalScrollOffset(), this.f7590r);
            if (a != 0) {
                this.f7591s.scrollBy(0, a);
            }
            this.f7585m = max;
        }
    }

    /* renamed from: b */
    public final void m31645b(int i) {
        m31658a();
        this.f7591s.postDelayed(this.f7571B, i);
    }

    /* renamed from: b */
    public final void m31644b(Canvas canvas) {
        int i = this.f7589q;
        int i2 = this.f7577e;
        int i3 = i - i2;
        int i4 = this.f7584l;
        int i5 = this.f7583k;
        int i6 = i4 - (i5 / 2);
        this.f7575c.setBounds(0, 0, i2, i5);
        this.f7576d.setBounds(0, 0, this.f7578f, this.f7590r);
        if (m31638e()) {
            this.f7576d.draw(canvas);
            canvas.translate(this.f7577e, i6);
            canvas.scale(-1.0f, 1.0f);
            this.f7575c.draw(canvas);
            canvas.scale(1.0f, 1.0f);
            canvas.translate(-this.f7577e, -i6);
            return;
        }
        canvas.translate(i3, 0.0f);
        this.f7576d.draw(canvas);
        canvas.translate(0.0f, i6);
        this.f7575c.draw(canvas);
        canvas.translate(-i3, -i6);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0510n
    /* renamed from: b */
    public void mo31643b(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0526y yVar) {
        if (this.f7589q != this.f7591s.getWidth() || this.f7590r != this.f7591s.getHeight()) {
            this.f7589q = this.f7591s.getWidth();
            this.f7590r = this.f7591s.getHeight();
            m31640c(0);
        } else if (this.f7570A != 0) {
            if (this.f7592t) {
                m31644b(canvas);
            }
            if (this.f7593u) {
                m31652a(canvas);
            }
        }
    }

    /* renamed from: b */
    public boolean m31646b(float f, float f2) {
        boolean z;
        if (!m31638e() ? f >= this.f7589q - this.f7577e : f <= this.f7577e / 2) {
            int i = this.f7584l;
            int i2 = this.f7583k;
            if (f2 >= i - (i2 / 2) && f2 <= i + (i2 / 2)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007b, code lost:
        if (r0 == 2) goto L_0x007e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003f, code lost:
        if (r0 != false) goto L_0x0042;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0518r
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo31642b(androidx.recyclerview.widget.RecyclerView r5, android.view.MotionEvent r6) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f7594v
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0075
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            r2 = r6
            float r2 = r2.getY()
            boolean r0 = r0.m31646b(r1, r2)
            r9 = r0
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            r2 = r6
            float r2 = r2.getY()
            boolean r0 = r0.m31656a(r1, r2)
            r10 = r0
            r0 = r8
            r11 = r0
            r0 = r6
            int r0 = r0.getAction()
            if (r0 != 0) goto L_0x0081
            r0 = r9
            if (r0 != 0) goto L_0x0042
            r0 = r8
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0081
        L_0x0042:
            r0 = r10
            if (r0 == 0) goto L_0x0059
            r0 = r4
            r1 = 1
            r0.f7595w = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f7588p = r1
            goto L_0x006d
        L_0x0059:
            r0 = r9
            if (r0 == 0) goto L_0x006d
            r0 = r4
            r1 = 2
            r0.f7595w = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getY()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f7585m = r1
        L_0x006d:
            r0 = r4
            r1 = 2
            r0.m31640c(r1)
            goto L_0x007e
        L_0x0075:
            r0 = r8
            r11 = r0
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L_0x0081
        L_0x007e:
            r0 = 1
            r11 = r0
        L_0x0081:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p122v.p123d.C1921d.mo31642b(androidx.recyclerview.widget.RecyclerView, android.view.MotionEvent):boolean");
    }

    /* renamed from: c */
    public void m31640c(int i) {
        if (i == 2 && this.f7594v != 2) {
            this.f7575c.setState(f7568D);
            m31658a();
        }
        if (i == 0) {
            m31637f();
        } else {
            m31635h();
        }
        if (this.f7594v == 2 && i != 2) {
            this.f7575c.setState(f7569E);
            m31645b(1200);
        } else if (i == 1) {
            m31645b(1500);
        }
        this.f7594v = i;
    }

    /* renamed from: c */
    public final int[] m31641c() {
        int[] iArr = this.f7597y;
        int i = this.f7574b;
        iArr[0] = i;
        iArr[1] = this.f7589q - i;
        return iArr;
    }

    /* renamed from: d */
    public final int[] m31639d() {
        int[] iArr = this.f7596x;
        int i = this.f7574b;
        iArr[0] = i;
        iArr[1] = this.f7590r - i;
        return iArr;
    }

    /* renamed from: e */
    public final boolean m31638e() {
        boolean z = true;
        if (C1002u.m35208n(this.f7591s) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public void m31637f() {
        this.f7591s.invalidate();
    }

    /* renamed from: g */
    public final void m31636g() {
        this.f7591s.m37483a((RecyclerView.AbstractC0510n) this);
        this.f7591s.m37481a((RecyclerView.AbstractC0518r) this);
        this.f7591s.m37480a(this.f7572C);
    }

    /* renamed from: h */
    public void m31635h() {
        int i = this.f7570A;
        if (i != 0) {
            if (i == 3) {
                this.f7598z.cancel();
            } else {
                return;
            }
        }
        this.f7570A = 1;
        ValueAnimator valueAnimator = this.f7598z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f7598z.setDuration(500L);
        this.f7598z.setStartDelay(0L);
        this.f7598z.start();
    }
}
