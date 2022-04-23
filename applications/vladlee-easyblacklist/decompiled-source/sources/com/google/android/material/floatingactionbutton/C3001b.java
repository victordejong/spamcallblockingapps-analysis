package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.content.C0646b;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.C0741t;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3024b;
import com.google.android.material.internal.C3047n;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.p060a.C2925a;
import com.google.android.material.p060a.C2926b;
import com.google.android.material.p060a.C2930f;
import com.google.android.material.p060a.C2931g;
import com.google.android.material.p060a.C2932h;
import com.google.android.material.p065f.C2997a;
import com.google.android.material.p066g.AbstractC3014b;
import com.google.android.material.p066g.C3013a;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.floatingactionbutton.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b.class */
public class C3001b {

    /* renamed from: a */
    static final TimeInterpolator f18244a = C2925a.f17812c;

    /* renamed from: p */
    static final int[] f18245p = {16842919, 16842910};

    /* renamed from: q */
    static final int[] f18246q = {16843623, 16842908, 16842910};

    /* renamed from: r */
    static final int[] f18247r = {16842908, 16842910};

    /* renamed from: s */
    static final int[] f18248s = {16843623, 16842910};

    /* renamed from: t */
    static final int[] f18249t = {16842910};

    /* renamed from: u */
    static final int[] f18250u = new int[0];

    /* renamed from: A */
    private float f18251A;

    /* renamed from: B */
    private ArrayList<Animator.AnimatorListener> f18252B;

    /* renamed from: C */
    private ArrayList<Animator.AnimatorListener> f18253C;

    /* renamed from: H */
    private ViewTreeObserver.OnPreDrawListener f18258H;

    /* renamed from: c */
    Animator f18260c;

    /* renamed from: d */
    C2932h f18261d;

    /* renamed from: e */
    C2932h f18262e;

    /* renamed from: f */
    C3013a f18263f;

    /* renamed from: g */
    Drawable f18264g;

    /* renamed from: h */
    Drawable f18265h;

    /* renamed from: i */
    C3024b f18266i;

    /* renamed from: j */
    Drawable f18267j;

    /* renamed from: k */
    float f18268k;

    /* renamed from: l */
    float f18269l;

    /* renamed from: m */
    float f18270m;

    /* renamed from: n */
    int f18271n;

    /* renamed from: v */
    final VisibilityAwareImageButton f18273v;

    /* renamed from: w */
    final AbstractC3014b f18274w;

    /* renamed from: x */
    private C2932h f18275x;

    /* renamed from: y */
    private C2932h f18276y;

    /* renamed from: b */
    int f18259b = 0;

    /* renamed from: o */
    float f18272o = 1.0f;

    /* renamed from: D */
    private final Rect f18254D = new Rect();

    /* renamed from: E */
    private final RectF f18255E = new RectF();

    /* renamed from: F */
    private final RectF f18256F = new RectF();

    /* renamed from: G */
    private final Matrix f18257G = new Matrix();

    /* renamed from: z */
    private final C3047n f18277z = new C3047n();

    /* renamed from: com.google.android.material.floatingactionbutton.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$a.class */
    private final class C3002a extends AbstractC3007f {
        C3002a() {
            super(C3001b.this, (byte) 0);
        }

        @Override // com.google.android.material.floatingactionbutton.C3001b.AbstractC3007f
        /* renamed from: a */
        protected final float mo1122a() {
            return 0.0f;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$b.class */
    private final class C3003b extends AbstractC3007f {
        C3003b() {
            super(C3001b.this, (byte) 0);
        }

        @Override // com.google.android.material.floatingactionbutton.C3001b.AbstractC3007f
        /* renamed from: a */
        protected final float mo1122a() {
            return C3001b.this.f18268k + C3001b.this.f18269l;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$c.class */
    private final class C3004c extends AbstractC3007f {
        C3004c() {
            super(C3001b.this, (byte) 0);
        }

        @Override // com.google.android.material.floatingactionbutton.C3001b.AbstractC3007f
        /* renamed from: a */
        protected final float mo1122a() {
            return C3001b.this.f18268k + C3001b.this.f18270m;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.b$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$d.class */
    public interface AbstractC3005d {
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$e.class */
    private final class C3006e extends AbstractC3007f {
        C3006e() {
            super(C3001b.this, (byte) 0);
        }

        @Override // com.google.android.material.floatingactionbutton.C3001b.AbstractC3007f
        /* renamed from: a */
        protected final float mo1122a() {
            return C3001b.this.f18268k;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b$f.class */
    private abstract class AbstractC3007f extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        private boolean f18282a;

        /* renamed from: c */
        private float f18284c;

        /* renamed from: d */
        private float f18285d;

        private AbstractC3007f() {
        }

        /* synthetic */ AbstractC3007f(C3001b bVar, byte b) {
            this();
        }

        /* renamed from: a */
        protected abstract float mo1122a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C3001b.this.f18263f.m1111a(this.f18285d);
            this.f18282a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f18282a) {
                this.f18284c = C3001b.this.f18263f.m1105c();
                this.f18285d = mo1122a();
                this.f18282a = true;
            }
            C3013a aVar = C3001b.this.f18263f;
            float f = this.f18284c;
            aVar.m1111a(f + ((this.f18285d - f) * valueAnimator.getAnimatedFraction()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3001b(VisibilityAwareImageButton visibilityAwareImageButton, AbstractC3014b bVar) {
        this.f18273v = visibilityAwareImageButton;
        this.f18274w = bVar;
        this.f18277z.m968a(f18245p, m1134a((AbstractC3007f) new C3004c()));
        this.f18277z.m968a(f18246q, m1134a((AbstractC3007f) new C3003b()));
        this.f18277z.m968a(f18247r, m1134a((AbstractC3007f) new C3003b()));
        this.f18277z.m968a(f18248s, m1134a((AbstractC3007f) new C3003b()));
        this.f18277z.m968a(f18249t, m1134a((AbstractC3007f) new C3006e()));
        this.f18277z.m968a(f18250u, m1134a((AbstractC3007f) new C3002a()));
        this.f18251A = this.f18273v.getRotation();
    }

    /* renamed from: a */
    private AnimatorSet m1136a(C2932h hVar, float f, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f18273v, View.ALPHA, f);
        hVar.m1541a("opacity").m1537a((Animator) ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f18273v, View.SCALE_X, f2);
        hVar.m1541a("scale").m1537a((Animator) ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f18273v, View.SCALE_Y, f2);
        hVar.m1541a("scale").m1537a((Animator) ofFloat3);
        arrayList.add(ofFloat3);
        m1139a(f3, this.f18257G);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.f18273v, new C2930f(), new C2931g(), new Matrix(this.f18257G));
        hVar.m1541a("iconScale").m1537a((Animator) ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C2926b.m1547a(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: a */
    private static ValueAnimator m1134a(AbstractC3007f fVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f18244a);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(fVar);
        valueAnimator.addUpdateListener(fVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* renamed from: a */
    private void m1140a(float f) {
        this.f18272o = f;
        Matrix matrix = this.f18257G;
        m1139a(f, matrix);
        this.f18273v.setImageMatrix(matrix);
    }

    /* renamed from: a */
    private void m1139a(float f, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f18273v.getDrawable();
        if (drawable != null && this.f18271n != 0) {
            RectF rectF = this.f18255E;
            RectF rectF2 = this.f18256F;
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            int i = this.f18271n;
            rectF2.set(0.0f, 0.0f, i, i);
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            int i2 = this.f18271n;
            matrix.postScale(f, f, i2 / 2.0f, i2 / 2.0f);
        }
    }

    /* renamed from: l */
    private boolean m1123l() {
        return C0741t.m8373B(this.f18273v) && !this.f18273v.isInEditMode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C3024b m1138a(int i, ColorStateList colorStateList) {
        Context context = this.f18273v.getContext();
        C3024b g = mo1113g();
        g.m1058a(C0646b.m8612c(context, C2913a.C2916c.f17462i), C0646b.m8612c(context, C2913a.C2916c.f17461h), C0646b.m8612c(context, C2913a.C2916c.f17459f), C0646b.m8612c(context, C2913a.C2916c.f17460g));
        g.m1059a(i);
        g.m1057a(colorStateList);
        return g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1141a() {
        m1140a(this.f18272o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo1120a(float f, float f2, float f3) {
        C3013a aVar = this.f18263f;
        if (aVar != null) {
            aVar.m1110a(f, this.f18270m + f);
            m1131c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1137a(Animator.AnimatorListener animatorListener) {
        if (this.f18252B == null) {
            this.f18252B = new ArrayList<>();
        }
        this.f18252B.add(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo1119a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable[] drawableArr;
        this.f18264g = C0758a.m8241f(m1125i());
        C0758a.m8251a(this.f18264g, colorStateList);
        if (mode != null) {
            C0758a.m8248a(this.f18264g, mode);
        }
        this.f18265h = C0758a.m8241f(m1125i());
        C0758a.m8251a(this.f18265h, C2997a.m1180a(colorStateList2));
        if (i > 0) {
            this.f18266i = m1138a(i, colorStateList);
            drawableArr = new Drawable[]{this.f18266i, this.f18264g, this.f18265h};
        } else {
            this.f18266i = null;
            drawableArr = new Drawable[]{this.f18264g, this.f18265h};
        }
        this.f18267j = new LayerDrawable(drawableArr);
        Context context = this.f18273v.getContext();
        Drawable drawable = this.f18267j;
        float a = this.f18274w.mo1103a();
        float f = this.f18268k;
        this.f18263f = new C3013a(context, drawable, a, f, f + this.f18270m);
        this.f18263f.m1108b();
        this.f18274w.mo1101a(this.f18263f);
    }

    /* renamed from: a */
    void mo1118a(Rect rect) {
        this.f18263f.getPadding(rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1135a(AbstractC3005d dVar) {
        boolean z = true;
        if (this.f18273v.getVisibility() != 0 ? this.f18259b == 2 : this.f18259b != 1) {
            z = false;
        }
        if (!z) {
            Animator animator = this.f18260c;
            if (animator != null) {
                animator.cancel();
            }
            if (m1123l()) {
                C2932h hVar = this.f18262e;
                if (hVar == null) {
                    if (this.f18276y == null) {
                        this.f18276y = C2932h.m1544a(this.f18273v.getContext(), C2913a.C2914a.f17431a);
                    }
                    hVar = this.f18276y;
                }
                AnimatorSet a = m1136a(hVar, 0.0f, 0.0f, 0.0f);
                a.addListener(new C3008c(this, dVar));
                ArrayList<Animator.AnimatorListener> arrayList = this.f18253C;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        a.addListener(it.next());
                    }
                }
                a.start();
                return;
            }
            this.f18273v.m1062a(4, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo1117a(int[] iArr) {
        this.f18277z.m969a(iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void mo1116b() {
        this.f18277z.m970a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1133b(Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f18252B;
        if (arrayList != null) {
            arrayList.remove(animatorListener);
        }
    }

    /* renamed from: b */
    void mo1115b(Rect rect) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1132b(AbstractC3005d dVar) {
        if (!m1124k()) {
            Animator animator = this.f18260c;
            if (animator != null) {
                animator.cancel();
            }
            if (m1123l()) {
                if (this.f18273v.getVisibility() != 0) {
                    this.f18273v.setAlpha(0.0f);
                    this.f18273v.setScaleY(0.0f);
                    this.f18273v.setScaleX(0.0f);
                    m1140a(0.0f);
                }
                C2932h hVar = this.f18261d;
                if (hVar == null) {
                    if (this.f18275x == null) {
                        this.f18275x = C2932h.m1544a(this.f18273v.getContext(), C2913a.C2914a.f17432b);
                    }
                    hVar = this.f18275x;
                }
                AnimatorSet a = m1136a(hVar, 1.0f, 1.0f, 1.0f);
                a.addListener(new C3009d(this, dVar));
                ArrayList<Animator.AnimatorListener> arrayList = this.f18252B;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        a.addListener(it.next());
                    }
                }
                a.start();
                return;
            }
            this.f18273v.m1062a(0, false);
            this.f18273v.setAlpha(1.0f);
            this.f18273v.setScaleY(1.0f);
            this.f18273v.setScaleX(1.0f);
            m1140a(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m1131c() {
        Rect rect = this.f18254D;
        mo1118a(rect);
        mo1115b(rect);
        this.f18274w.mo1102a(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: c */
    public final void m1130c(Animator.AnimatorListener animatorListener) {
        if (this.f18253C == null) {
            this.f18253C = new ArrayList<>();
        }
        this.f18253C.add(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m1129d() {
        if (mo1114f()) {
            if (this.f18258H == null) {
                this.f18258H = new ViewTreeObserver$OnPreDrawListenerC3010e(this);
            }
            this.f18273v.getViewTreeObserver().addOnPreDrawListener(this.f18258H);
        }
    }

    /* renamed from: d */
    public final void m1128d(Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f18253C;
        if (arrayList != null) {
            arrayList.remove(animatorListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m1127e() {
        if (this.f18258H != null) {
            this.f18273v.getViewTreeObserver().removeOnPreDrawListener(this.f18258H);
            this.f18258H = null;
        }
    }

    /* renamed from: f */
    boolean mo1114f() {
        return true;
    }

    /* renamed from: g */
    C3024b mo1113g() {
        return new C3024b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m1126h() {
        VisibilityAwareImageButton visibilityAwareImageButton;
        int i;
        float rotation = this.f18273v.getRotation();
        if (this.f18251A != rotation) {
            this.f18251A = rotation;
            if (Build.VERSION.SDK_INT == 19) {
                if (this.f18251A % 90.0f != 0.0f) {
                    i = 1;
                    if (this.f18273v.getLayerType() != 1) {
                        visibilityAwareImageButton = this.f18273v;
                        visibilityAwareImageButton.setLayerType(i, null);
                    }
                } else if (this.f18273v.getLayerType() != 0) {
                    visibilityAwareImageButton = this.f18273v;
                    i = 0;
                    visibilityAwareImageButton.setLayerType(i, null);
                }
            }
            C3013a aVar = this.f18263f;
            if (aVar != null) {
                aVar.m1107b(-this.f18251A);
            }
            C3024b bVar = this.f18266i;
            if (bVar != null) {
                bVar.m1056b(-this.f18251A);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final GradientDrawable m1125i() {
        GradientDrawable j = mo1112j();
        j.setShape(1);
        j.setColor(-1);
        return j;
    }

    /* renamed from: j */
    GradientDrawable mo1112j() {
        return new GradientDrawable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public final boolean m1124k() {
        int visibility = this.f18273v.getVisibility();
        int i = this.f18259b;
        return visibility != 0 ? i == 2 : i != 1;
    }
}
