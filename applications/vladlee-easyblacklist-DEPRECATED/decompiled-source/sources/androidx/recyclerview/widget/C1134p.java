package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.p037g.C0741t;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.ConnectionResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p.class */
public final class C1134p extends RecyclerView.AbstractC1065h implements RecyclerView.AbstractC1070k {

    /* renamed from: k */
    private static final int[] f4850k = {16842919};

    /* renamed from: l */
    private static final int[] f4851l = new int[0];

    /* renamed from: a */
    final StateListDrawable f4857a;

    /* renamed from: b */
    final Drawable f4858b;

    /* renamed from: c */
    int f4859c;

    /* renamed from: d */
    int f4860d;

    /* renamed from: e */
    float f4861e;

    /* renamed from: f */
    int f4862f;

    /* renamed from: g */
    int f4863g;

    /* renamed from: h */
    float f4864h;

    /* renamed from: m */
    private final int f4867m;

    /* renamed from: n */
    private final int f4868n;

    /* renamed from: o */
    private final int f4869o;

    /* renamed from: p */
    private final int f4870p;

    /* renamed from: q */
    private final StateListDrawable f4871q;

    /* renamed from: r */
    private final Drawable f4872r;

    /* renamed from: s */
    private final int f4873s;

    /* renamed from: t */
    private final int f4874t;

    /* renamed from: w */
    private RecyclerView f4877w;

    /* renamed from: u */
    private int f4875u = 0;

    /* renamed from: v */
    private int f4876v = 0;

    /* renamed from: x */
    private boolean f4878x = false;

    /* renamed from: y */
    private boolean f4879y = false;

    /* renamed from: z */
    private int f4880z = 0;

    /* renamed from: A */
    private int f4852A = 0;

    /* renamed from: B */
    private final int[] f4853B = new int[2];

    /* renamed from: C */
    private final int[] f4854C = new int[2];

    /* renamed from: i */
    final ValueAnimator f4865i = ValueAnimator.ofFloat(0.0f, 1.0f);

    /* renamed from: j */
    int f4866j = 0;

    /* renamed from: D */
    private final Runnable f4855D = new RunnableC1137q(this);

    /* renamed from: E */
    private final RecyclerView.AbstractC1071l f4856E = new C1138r(this);

    /* renamed from: androidx.recyclerview.widget.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p$a.class */
    private final class C1135a extends AnimatorListenerAdapter {

        /* renamed from: b */
        private boolean f4882b = false;

        C1135a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f4882b = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f4882b) {
                this.f4882b = false;
                return;
            }
            float floatValue = ((Float) C1134p.this.f4865i.getAnimatedValue()).floatValue();
            C1134p pVar = C1134p.this;
            if (floatValue == 0.0f) {
                pVar.f4866j = 0;
                pVar.m6742a(0);
                return;
            }
            pVar.f4866j = 2;
            pVar.m6745a();
        }
    }

    /* renamed from: androidx.recyclerview.widget.p$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p$b.class */
    private final class C1136b implements ValueAnimator.AnimatorUpdateListener {
        C1136b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C1134p.this.f4857a.setAlpha(floatValue);
            C1134p.this.f4858b.setAlpha(floatValue);
            C1134p.this.m6745a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1134p(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        boolean z = false;
        this.f4857a = stateListDrawable;
        this.f4858b = drawable;
        this.f4871q = stateListDrawable2;
        this.f4872r = drawable2;
        this.f4869o = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f4870p = Math.max(i, drawable.getIntrinsicWidth());
        this.f4873s = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f4874t = Math.max(i, drawable2.getIntrinsicWidth());
        this.f4867m = i2;
        this.f4868n = i3;
        this.f4857a.setAlpha(255);
        this.f4858b.setAlpha(255);
        this.f4865i.addListener(new C1135a());
        this.f4865i.addUpdateListener(new C1136b());
        RecyclerView recyclerView2 = this.f4877w;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                if (recyclerView2.f4550n != null) {
                    recyclerView2.f4550n.mo6967a("Cannot remove item decoration during a scroll  or layout");
                }
                recyclerView2.f4551o.remove(this);
                if (recyclerView2.f4551o.isEmpty()) {
                    recyclerView2.setWillNotDraw(recyclerView2.getOverScrollMode() == 2 ? true : z);
                }
                recyclerView2.m7206h();
                recyclerView2.requestLayout();
                this.f4877w.m7231b(this);
                this.f4877w.m7230b(this.f4856E);
                m6733d();
            }
            this.f4877w = recyclerView;
            RecyclerView recyclerView3 = this.f4877w;
            if (recyclerView3 != null) {
                recyclerView3.m7253a((RecyclerView.AbstractC1065h) this);
                this.f4877w.m7251a((RecyclerView.AbstractC1070k) this);
                this.f4877w.m7250a(this.f4856E);
            }
        }
    }

    /* renamed from: a */
    private static int m6743a(float f, float f2, int[] iArr, int i, int i2, int i3) {
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
    private boolean m6744a(float f, float f2) {
        if (m6738b()) {
            if (f > this.f4869o / 2) {
                return false;
            }
        } else if (f < this.f4875u - this.f4869o) {
            return false;
        }
        int i = this.f4860d;
        int i2 = this.f4859c;
        return f2 >= ((float) (i - (i2 / 2))) && f2 <= ((float) (i + (i2 / 2)));
    }

    /* renamed from: b */
    private void m6736b(int i) {
        m6733d();
        this.f4877w.postDelayed(this.f4855D, i);
    }

    /* renamed from: b */
    private boolean m6738b() {
        return C0741t.m8325g(this.f4877w) == 1;
    }

    /* renamed from: b */
    private boolean m6737b(float f, float f2) {
        if (f2 < this.f4876v - this.f4873s) {
            return false;
        }
        int i = this.f4863g;
        int i2 = this.f4862f;
        return f >= ((float) (i - (i2 / 2))) && f <= ((float) (i + (i2 / 2)));
    }

    /* renamed from: c */
    private void m6734c() {
        int i = this.f4866j;
        if (i != 0) {
            if (i == 3) {
                this.f4865i.cancel();
            } else {
                return;
            }
        }
        this.f4866j = 1;
        ValueAnimator valueAnimator = this.f4865i;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f4865i.setDuration(500L);
        this.f4865i.setStartDelay(0L);
        this.f4865i.start();
    }

    /* renamed from: d */
    private void m6733d() {
        this.f4877w.removeCallbacks(this.f4855D);
    }

    /* renamed from: a */
    final void m6745a() {
        this.f4877w.invalidate();
    }

    /* renamed from: a */
    final void m6742a(int i) {
        int i2;
        if (i == 2 && this.f4880z != 2) {
            this.f4857a.setState(f4850k);
            m6733d();
        }
        if (i == 0) {
            this.f4877w.invalidate();
        } else {
            m6734c();
        }
        if (this.f4880z != 2 || i == 2) {
            if (i == 1) {
                i2 = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
            }
            this.f4880z = i;
        }
        this.f4857a.setState(f4851l);
        i2 = 1200;
        m6736b(i2);
        this.f4880z = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6741a(int i, int i2) {
        int computeVerticalScrollRange = this.f4877w.computeVerticalScrollRange();
        int i3 = this.f4876v;
        this.f4878x = computeVerticalScrollRange - i3 > 0 && i3 >= this.f4867m;
        int computeHorizontalScrollRange = this.f4877w.computeHorizontalScrollRange();
        int i4 = this.f4875u;
        this.f4879y = computeHorizontalScrollRange - i4 > 0 && i4 >= this.f4867m;
        if (this.f4878x || this.f4879y) {
            if (this.f4878x) {
                float f = i3;
                this.f4860d = (int) ((f * (i2 + (f / 2.0f))) / computeVerticalScrollRange);
                this.f4859c = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
            }
            if (this.f4879y) {
                float f2 = i4;
                this.f4863g = (int) ((f2 * (i + (f2 / 2.0f))) / computeHorizontalScrollRange);
                this.f4862f = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
            }
            int i5 = this.f4880z;
            if (i5 == 0 || i5 == 1) {
                m6742a(1);
            }
        } else if (this.f4880z != 0) {
            m6742a(0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1065h
    /* renamed from: a */
    public final void mo6740a(Canvas canvas, RecyclerView recyclerView) {
        if (this.f4875u != this.f4877w.getWidth() || this.f4876v != this.f4877w.getHeight()) {
            this.f4875u = this.f4877w.getWidth();
            this.f4876v = this.f4877w.getHeight();
            m6742a(0);
        } else if (this.f4866j != 0) {
            if (this.f4878x) {
                int i = this.f4875u;
                int i2 = this.f4869o;
                int i3 = i - i2;
                int i4 = this.f4860d;
                int i5 = this.f4859c;
                int i6 = i4 - (i5 / 2);
                this.f4857a.setBounds(0, 0, i2, i5);
                this.f4858b.setBounds(0, 0, this.f4870p, this.f4876v);
                if (m6738b()) {
                    this.f4858b.draw(canvas);
                    canvas.translate(this.f4869o, i6);
                    canvas.scale(-1.0f, 1.0f);
                    this.f4857a.draw(canvas);
                    canvas.scale(1.0f, 1.0f);
                    i3 = this.f4869o;
                } else {
                    canvas.translate(i3, 0.0f);
                    this.f4858b.draw(canvas);
                    canvas.translate(0.0f, i6);
                    this.f4857a.draw(canvas);
                }
                canvas.translate(-i3, -i6);
            }
            if (this.f4879y) {
                int i7 = this.f4876v;
                int i8 = this.f4873s;
                int i9 = i7 - i8;
                int i10 = this.f4863g;
                int i11 = this.f4862f;
                int i12 = i10 - (i11 / 2);
                this.f4871q.setBounds(0, 0, i11, i8);
                this.f4872r.setBounds(0, 0, this.f4875u, this.f4874t);
                canvas.translate(0.0f, i9);
                this.f4872r.draw(canvas);
                canvas.translate(i12, 0.0f);
                this.f4871q.draw(canvas);
                canvas.translate(-i12, -i9);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
        if (r0 == 2) goto L_0x007a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003c, code lost:
        if (r0 != false) goto L_0x003f;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1070k
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo6739a(android.view.MotionEvent r5) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f4880z
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            r1 = 1
            if (r0 != r1) goto L_0x0072
            r0 = r4
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.m6744a(r1, r2)
            r8 = r0
            r0 = r4
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.m6737b(r1, r2)
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r5
            int r0 = r0.getAction()
            if (r0 != 0) goto L_0x007d
            r0 = r8
            if (r0 != 0) goto L_0x003f
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007d
        L_0x003f:
            r0 = r9
            if (r0 == 0) goto L_0x0056
            r0 = r4
            r1 = 1
            r0.f4852A = r1
            r0 = r4
            r1 = r5
            float r1 = r1.getX()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f4864h = r1
            goto L_0x006a
        L_0x0056:
            r0 = r8
            if (r0 == 0) goto L_0x006a
            r0 = r4
            r1 = 2
            r0.f4852A = r1
            r0 = r4
            r1 = r5
            float r1 = r1.getY()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f4861e = r1
        L_0x006a:
            r0 = r4
            r1 = 2
            r0.m6742a(r1)
            goto L_0x007a
        L_0x0072:
            r0 = r7
            r10 = r0
            r0 = r6
            r1 = 2
            if (r0 != r1) goto L_0x007d
        L_0x007a:
            r0 = 1
            r10 = r0
        L_0x007d:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C1134p.mo6739a(android.view.MotionEvent):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1070k
    /* renamed from: b */
    public final void mo6735b(MotionEvent motionEvent) {
        if (this.f4880z != 0) {
            if (motionEvent.getAction() == 0) {
                boolean a = m6744a(motionEvent.getX(), motionEvent.getY());
                boolean b = m6737b(motionEvent.getX(), motionEvent.getY());
                if (a || b) {
                    if (b) {
                        this.f4852A = 1;
                        this.f4864h = (int) motionEvent.getX();
                    } else if (a) {
                        this.f4852A = 2;
                        this.f4861e = (int) motionEvent.getY();
                    }
                    m6742a(2);
                }
            } else if (motionEvent.getAction() == 1 && this.f4880z == 2) {
                this.f4861e = 0.0f;
                this.f4864h = 0.0f;
                m6742a(1);
                this.f4852A = 0;
            } else if (motionEvent.getAction() == 2 && this.f4880z == 2) {
                m6734c();
                if (this.f4852A == 1) {
                    float x = motionEvent.getX();
                    int[] iArr = this.f4854C;
                    int i = this.f4868n;
                    iArr[0] = i;
                    iArr[1] = this.f4875u - i;
                    float max = Math.max(iArr[0], Math.min(iArr[1], x));
                    if (Math.abs(this.f4863g - max) >= 2.0f) {
                        int a2 = m6743a(this.f4864h, max, iArr, this.f4877w.computeHorizontalScrollRange(), this.f4877w.computeHorizontalScrollOffset(), this.f4875u);
                        if (a2 != 0) {
                            this.f4877w.scrollBy(a2, 0);
                        }
                        this.f4864h = max;
                    }
                }
                if (this.f4852A == 2) {
                    float y = motionEvent.getY();
                    int[] iArr2 = this.f4853B;
                    int i2 = this.f4868n;
                    iArr2[0] = i2;
                    iArr2[1] = this.f4876v - i2;
                    float max2 = Math.max(iArr2[0], Math.min(iArr2[1], y));
                    if (Math.abs(this.f4860d - max2) >= 2.0f) {
                        int a3 = m6743a(this.f4861e, max2, iArr2, this.f4877w.computeVerticalScrollRange(), this.f4877w.computeVerticalScrollOffset(), this.f4876v);
                        if (a3 != 0) {
                            this.f4877w.scrollBy(0, a3);
                        }
                        this.f4861e = max2;
                    }
                }
            }
        }
    }
}
