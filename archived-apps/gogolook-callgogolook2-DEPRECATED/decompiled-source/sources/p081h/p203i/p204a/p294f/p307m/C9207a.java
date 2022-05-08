package p081h.p203i.p204a.p294f.p307m;

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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$animator;
import com.google.android.material.R$color;
import com.google.android.material.internal.VisibilityAwareImageButton;
import java.util.ArrayList;
import java.util.Iterator;
import p081h.p203i.p204a.p294f.p295a.C9167a;
import p081h.p203i.p204a.p294f.p295a.C9168b;
import p081h.p203i.p204a.p294f.p295a.C9172f;
import p081h.p203i.p204a.p294f.p295a.C9173g;
import p081h.p203i.p204a.p294f.p295a.C9174h;
import p081h.p203i.p204a.p294f.p308n.C9219a;
import p081h.p203i.p204a.p294f.p308n.C9240i;
import p081h.p203i.p204a.p294f.p311q.C9252a;
import p081h.p203i.p204a.p294f.p312r.AbstractC9254b;
import p081h.p203i.p204a.p294f.p312r.C9253a;
/* renamed from: h.i.a.f.m.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/m/a.class */
public class C9207a {

    /* renamed from: B */
    public static final TimeInterpolator f21026B = C9167a.f20881c;

    /* renamed from: C */
    public static final int[] f21027C = {16842919, 16842910};

    /* renamed from: D */
    public static final int[] f21028D = {16843623, 16842908, 16842910};

    /* renamed from: E */
    public static final int[] f21029E = {16842908, 16842910};

    /* renamed from: F */
    public static final int[] f21030F = {16843623, 16842910};

    /* renamed from: G */
    public static final int[] f21031G = {16842910};

    /* renamed from: H */
    public static final int[] f21032H = new int[0];

    /* renamed from: A */
    public ViewTreeObserver.OnPreDrawListener f21033A;
    @Nullable

    /* renamed from: b */
    public Animator f21035b;
    @Nullable

    /* renamed from: c */
    public C9174h f21036c;
    @Nullable

    /* renamed from: d */
    public C9174h f21037d;
    @Nullable

    /* renamed from: e */
    public C9174h f21038e;
    @Nullable

    /* renamed from: f */
    public C9174h f21039f;

    /* renamed from: h */
    public C9253a f21041h;

    /* renamed from: i */
    public float f21042i;

    /* renamed from: j */
    public Drawable f21043j;

    /* renamed from: k */
    public Drawable f21044k;

    /* renamed from: l */
    public C9219a f21045l;

    /* renamed from: m */
    public Drawable f21046m;

    /* renamed from: n */
    public float f21047n;

    /* renamed from: o */
    public float f21048o;

    /* renamed from: p */
    public float f21049p;

    /* renamed from: q */
    public int f21050q;

    /* renamed from: s */
    public ArrayList<Animator.AnimatorListener> f21052s;

    /* renamed from: t */
    public ArrayList<Animator.AnimatorListener> f21053t;

    /* renamed from: u */
    public final VisibilityAwareImageButton f21054u;

    /* renamed from: v */
    public final AbstractC9254b f21055v;

    /* renamed from: a */
    public int f21034a = 0;

    /* renamed from: r */
    public float f21051r = 1.0f;

    /* renamed from: w */
    public final Rect f21056w = new Rect();

    /* renamed from: x */
    public final RectF f21057x = new RectF();

    /* renamed from: y */
    public final RectF f21058y = new RectF();

    /* renamed from: z */
    public final Matrix f21059z = new Matrix();

    /* renamed from: g */
    public final C9240i f21040g = new C9240i();

    /* renamed from: h.i.a.f.m.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/m/a$a.class */
    public class C9208a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f21060a;

        /* renamed from: b */
        public final /* synthetic */ boolean f21061b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC9214g f21062c;

        public C9208a(boolean z, AbstractC9214g gVar) {
            this.f21061b = z;
            this.f21062c = gVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f21060a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C9207a aVar = C9207a.this;
            aVar.f21034a = 0;
            aVar.f21035b = null;
            if (!this.f21060a) {
                aVar.f21054u.m31326a(this.f21061b ? 8 : 4, this.f21061b);
                AbstractC9214g gVar = this.f21062c;
                if (gVar != null) {
                    gVar.mo15737b();
                }
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C9207a.this.f21054u.m31326a(0, this.f21061b);
            C9207a aVar = C9207a.this;
            aVar.f21034a = 1;
            aVar.f21035b = animator;
            this.f21060a = false;
        }
    }

    /* renamed from: h.i.a.f.m.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/m/a$b.class */
    public class C9209b extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ boolean f21064a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC9214g f21065b;

        public C9209b(boolean z, AbstractC9214g gVar) {
            this.f21064a = z;
            this.f21065b = gVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C9207a aVar = C9207a.this;
            aVar.f21034a = 0;
            aVar.f21035b = null;
            AbstractC9214g gVar = this.f21065b;
            if (gVar != null) {
                gVar.mo15738a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C9207a.this.f21054u.m31326a(0, this.f21064a);
            C9207a aVar = C9207a.this;
            aVar.f21034a = 2;
            aVar.f21035b = animator;
        }
    }

    /* renamed from: h.i.a.f.m.a$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/m/a$c.class */
    public class ViewTreeObserver$OnPreDrawListenerC9210c implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC9210c() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            C9207a.this.m15743l();
            return true;
        }
    }

    /* renamed from: h.i.a.f.m.a$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/m/a$d.class */
    public class C9211d extends AbstractC9216i {
        public C9211d(C9207a aVar) {
            super(aVar, null);
        }

        @Override // p081h.p203i.p204a.p294f.p307m.C9207a.AbstractC9216i
        /* renamed from: a */
        public float mo15736a() {
            return 0.0f;
        }
    }

    /* renamed from: h.i.a.f.m.a$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/m/a$e.class */
    public class C9212e extends AbstractC9216i {
        public C9212e() {
            super(C9207a.this, null);
        }

        @Override // p081h.p203i.p204a.p294f.p307m.C9207a.AbstractC9216i
        /* renamed from: a */
        public float mo15736a() {
            C9207a aVar = C9207a.this;
            return aVar.f21047n + aVar.f21048o;
        }
    }

    /* renamed from: h.i.a.f.m.a$f */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/m/a$f.class */
    public class C9213f extends AbstractC9216i {
        public C9213f() {
            super(C9207a.this, null);
        }

        @Override // p081h.p203i.p204a.p294f.p307m.C9207a.AbstractC9216i
        /* renamed from: a */
        public float mo15736a() {
            C9207a aVar = C9207a.this;
            return aVar.f21047n + aVar.f21049p;
        }
    }

    /* renamed from: h.i.a.f.m.a$g */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/m/a$g.class */
    public interface AbstractC9214g {
        /* renamed from: a */
        void mo15738a();

        /* renamed from: b */
        void mo15737b();
    }

    /* renamed from: h.i.a.f.m.a$h */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/m/a$h.class */
    public class C9215h extends AbstractC9216i {
        public C9215h() {
            super(C9207a.this, null);
        }

        @Override // p081h.p203i.p204a.p294f.p307m.C9207a.AbstractC9216i
        /* renamed from: a */
        public float mo15736a() {
            return C9207a.this.f21047n;
        }
    }

    /* renamed from: h.i.a.f.m.a$i */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/m/a$i.class */
    public abstract class AbstractC9216i extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public boolean f21071a;

        /* renamed from: b */
        public float f21072b;

        /* renamed from: c */
        public float f21073c;

        public AbstractC9216i() {
        }

        public /* synthetic */ AbstractC9216i(C9207a aVar, C9208a aVar2) {
            this();
        }

        /* renamed from: a */
        public abstract float mo15736a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C9207a.this.f21041h.m15603b(this.f21073c);
            this.f21071a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f21071a) {
                this.f21072b = C9207a.this.f21041h.m15604b();
                this.f21073c = mo15736a();
                this.f21071a = true;
            }
            C9253a aVar = C9207a.this.f21041h;
            float f = this.f21072b;
            aVar.m15603b(f + ((this.f21073c - f) * valueAnimator.getAnimatedFraction()));
        }
    }

    public C9207a(VisibilityAwareImageButton visibilityAwareImageButton, AbstractC9254b bVar) {
        this.f21054u = visibilityAwareImageButton;
        this.f21055v = bVar;
        this.f21040g.m15646a(f21027C, m15759a((AbstractC9216i) new C9213f()));
        this.f21040g.m15646a(f21028D, m15759a((AbstractC9216i) new C9212e()));
        this.f21040g.m15646a(f21029E, m15759a((AbstractC9216i) new C9212e()));
        this.f21040g.m15646a(f21030F, m15759a((AbstractC9216i) new C9212e()));
        this.f21040g.m15646a(f21031G, m15759a((AbstractC9216i) new C9215h()));
        this.f21040g.m15646a(f21032H, m15759a((AbstractC9216i) new C9211d(this)));
        this.f21042i = this.f21054u.getRotation();
    }

    @NonNull
    /* renamed from: a */
    public final AnimatorSet m15761a(@NonNull C9174h hVar, float f, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f21054u, View.ALPHA, f);
        hVar.m15958a("opacity").m15953a((Animator) ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f21054u, View.SCALE_X, f2);
        hVar.m15958a("scale").m15953a((Animator) ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f21054u, View.SCALE_Y, f2);
        hVar.m15958a("scale").m15953a((Animator) ofFloat3);
        arrayList.add(ofFloat3);
        m15768a(f3, this.f21059z);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.f21054u, new C9172f(), new C9173g(), new Matrix(this.f21059z));
        hVar.m15958a("iconScale").m15953a((Animator) ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C9168b.m15972a(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: a */
    public final ValueAnimator m15759a(@NonNull AbstractC9216i iVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f21026B);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(iVar);
        valueAnimator.addUpdateListener(iVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* renamed from: a */
    public GradientDrawable m15770a() {
        GradientDrawable i = mo15727i();
        i.setShape(1);
        i.setColor(-1);
        return i;
    }

    /* renamed from: a */
    public C9219a m15766a(int i, ColorStateList colorStateList) {
        Context context = this.f21054u.getContext();
        C9219a h = mo15728h();
        h.m15722a(ContextCompat.getColor(context, R$color.design_fab_stroke_top_outer_color), ContextCompat.getColor(context, R$color.design_fab_stroke_top_inner_color), ContextCompat.getColor(context, R$color.design_fab_stroke_end_inner_color), ContextCompat.getColor(context, R$color.design_fab_stroke_end_outer_color));
        h.m15723a(i);
        h.m15721a(colorStateList);
        return h;
    }

    /* renamed from: a */
    public final void m15769a(float f) {
        if (this.f21047n != f) {
            this.f21047n = f;
            mo15734a(this.f21047n, this.f21048o, this.f21049p);
        }
    }

    /* renamed from: a */
    public void mo15734a(float f, float f2, float f3) {
        C9253a aVar = this.f21041h;
        if (aVar != null) {
            aVar.m15609a(f, this.f21049p + f);
            m15739q();
        }
    }

    /* renamed from: a */
    public final void m15768a(float f, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f21054u.getDrawable();
        if (drawable != null && this.f21050q != 0) {
            RectF rectF = this.f21057x;
            RectF rectF2 = this.f21058y;
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            int i = this.f21050q;
            rectF2.set(0.0f, 0.0f, i, i);
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            int i2 = this.f21050q;
            matrix.postScale(f, f, i2 / 2.0f, i2 / 2.0f);
        }
    }

    /* renamed from: a */
    public final void m15767a(int i) {
        if (this.f21050q != i) {
            this.f21050q = i;
            m15740p();
        }
    }

    /* renamed from: a */
    public void m15765a(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f21053t == null) {
            this.f21053t = new ArrayList<>();
        }
        this.f21053t.add(animatorListener);
    }

    /* renamed from: a */
    public void m15764a(ColorStateList colorStateList) {
        Drawable drawable = this.f21043j;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        }
        C9219a aVar = this.f21045l;
        if (aVar != null) {
            aVar.m15721a(colorStateList);
        }
    }

    /* renamed from: a */
    public void mo15733a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable[] drawableArr;
        this.f21043j = DrawableCompat.wrap(m15770a());
        DrawableCompat.setTintList(this.f21043j, colorStateList);
        if (mode != null) {
            DrawableCompat.setTintMode(this.f21043j, mode);
        }
        this.f21044k = DrawableCompat.wrap(m15770a());
        DrawableCompat.setTintList(this.f21044k, C9252a.m15613a(colorStateList2));
        if (i > 0) {
            this.f21045l = m15766a(i, colorStateList);
            drawableArr = new Drawable[]{this.f21045l, this.f21043j, this.f21044k};
        } else {
            this.f21045l = null;
            drawableArr = new Drawable[]{this.f21043j, this.f21044k};
        }
        this.f21046m = new LayerDrawable(drawableArr);
        Context context = this.f21054u.getContext();
        Drawable drawable = this.f21046m;
        float b = this.f21055v.mo15599b();
        float f = this.f21047n;
        this.f21041h = new C9253a(context, drawable, b, f, f + this.f21049p);
        this.f21041h.m15605a(false);
        this.f21055v.setBackgroundDrawable(this.f21041h);
    }

    /* renamed from: a */
    public void m15763a(PorterDuff.Mode mode) {
        Drawable drawable = this.f21043j;
        if (drawable != null) {
            DrawableCompat.setTintMode(drawable, mode);
        }
    }

    /* renamed from: a */
    public void mo15732a(Rect rect) {
        this.f21041h.getPadding(rect);
    }

    /* renamed from: a */
    public final void m15762a(@Nullable C9174h hVar) {
        this.f21037d = hVar;
    }

    /* renamed from: a */
    public void m15760a(@Nullable AbstractC9214g gVar, boolean z) {
        if (!m15747e()) {
            Animator animator = this.f21035b;
            if (animator != null) {
                animator.cancel();
            }
            if (m15742n()) {
                C9174h hVar = this.f21037d;
                if (hVar == null) {
                    hVar = m15753c();
                }
                AnimatorSet a = m15761a(hVar, 0.0f, 0.0f, 0.0f);
                a.addListener(new C9208a(z, gVar));
                ArrayList<Animator.AnimatorListener> arrayList = this.f21053t;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        a.addListener(it.next());
                    }
                }
                a.start();
                return;
            }
            this.f21054u.m31326a(z ? 8 : 4, z);
            if (gVar != null) {
                gVar.mo15737b();
            }
        }
    }

    /* renamed from: a */
    public void mo15731a(int[] iArr) {
        this.f21040g.m15647a(iArr);
    }

    /* renamed from: b */
    public final void m15758b() {
        if (this.f21033A == null) {
            this.f21033A = new ViewTreeObserver$OnPreDrawListenerC9210c();
        }
    }

    /* renamed from: b */
    public final void m15757b(float f) {
        if (this.f21048o != f) {
            this.f21048o = f;
            mo15734a(this.f21047n, this.f21048o, this.f21049p);
        }
    }

    /* renamed from: b */
    public void m15756b(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f21052s == null) {
            this.f21052s = new ArrayList<>();
        }
        this.f21052s.add(animatorListener);
    }

    /* renamed from: b */
    public void mo15730b(Rect rect) {
    }

    /* renamed from: b */
    public final void m15755b(@Nullable C9174h hVar) {
        this.f21036c = hVar;
    }

    /* renamed from: b */
    public void m15754b(@Nullable AbstractC9214g gVar, boolean z) {
        if (!m15746f()) {
            Animator animator = this.f21035b;
            if (animator != null) {
                animator.cancel();
            }
            if (m15742n()) {
                if (this.f21054u.getVisibility() != 0) {
                    this.f21054u.setAlpha(0.0f);
                    this.f21054u.setScaleY(0.0f);
                    this.f21054u.setScaleX(0.0f);
                    m15752c(0.0f);
                }
                C9174h hVar = this.f21036c;
                if (hVar == null) {
                    hVar = m15750d();
                }
                AnimatorSet a = m15761a(hVar, 1.0f, 1.0f, 1.0f);
                a.addListener(new C9209b(z, gVar));
                ArrayList<Animator.AnimatorListener> arrayList = this.f21052s;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        a.addListener(it.next());
                    }
                }
                a.start();
                return;
            }
            this.f21054u.m31326a(0, z);
            this.f21054u.setAlpha(1.0f);
            this.f21054u.setScaleY(1.0f);
            this.f21054u.setScaleX(1.0f);
            m15752c(1.0f);
            if (gVar != null) {
                gVar.mo15738a();
            }
        }
    }

    /* renamed from: c */
    public final C9174h m15753c() {
        if (this.f21039f == null) {
            this.f21039f = C9174h.m15961a(this.f21054u.getContext(), R$animator.design_fab_hide_motion_spec);
        }
        return this.f21039f;
    }

    /* renamed from: c */
    public final void m15752c(float f) {
        this.f21051r = f;
        Matrix matrix = this.f21059z;
        m15768a(f, matrix);
        this.f21054u.setImageMatrix(matrix);
    }

    /* renamed from: c */
    public void m15751c(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f21053t;
        if (arrayList != null) {
            arrayList.remove(animatorListener);
        }
    }

    /* renamed from: d */
    public final C9174h m15750d() {
        if (this.f21038e == null) {
            this.f21038e = C9174h.m15961a(this.f21054u.getContext(), R$animator.design_fab_show_motion_spec);
        }
        return this.f21038e;
    }

    /* renamed from: d */
    public final void m15749d(float f) {
        if (this.f21049p != f) {
            this.f21049p = f;
            mo15734a(this.f21047n, this.f21048o, this.f21049p);
        }
    }

    /* renamed from: d */
    public void m15748d(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f21052s;
        if (arrayList != null) {
            arrayList.remove(animatorListener);
        }
    }

    /* renamed from: e */
    public boolean m15747e() {
        boolean z = false;
        boolean z2 = false;
        if (this.f21054u.getVisibility() == 0) {
            if (this.f21034a == 1) {
                z2 = true;
            }
            return z2;
        }
        if (this.f21034a != 2) {
            z = true;
        }
        return z;
    }

    /* renamed from: f */
    public boolean m15746f() {
        boolean z = false;
        boolean z2 = false;
        if (this.f21054u.getVisibility() != 0) {
            if (this.f21034a == 2) {
                z2 = true;
            }
            return z2;
        }
        if (this.f21034a != 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: g */
    public void mo15729g() {
        this.f21040g.m15645b();
    }

    /* renamed from: h */
    public C9219a mo15728h() {
        return new C9219a();
    }

    /* renamed from: i */
    public GradientDrawable mo15727i() {
        return new GradientDrawable();
    }

    /* renamed from: j */
    public void m15745j() {
        if (mo15726m()) {
            m15758b();
            this.f21054u.getViewTreeObserver().addOnPreDrawListener(this.f21033A);
        }
    }

    /* renamed from: k */
    public void m15744k() {
        if (this.f21033A != null) {
            this.f21054u.getViewTreeObserver().removeOnPreDrawListener(this.f21033A);
            this.f21033A = null;
        }
    }

    /* renamed from: l */
    public void m15743l() {
        float rotation = this.f21054u.getRotation();
        if (this.f21042i != rotation) {
            this.f21042i = rotation;
            m15741o();
        }
    }

    /* renamed from: m */
    public boolean mo15726m() {
        return true;
    }

    /* renamed from: n */
    public final boolean m15742n() {
        return ViewCompat.isLaidOut(this.f21054u) && !this.f21054u.isInEditMode();
    }

    /* renamed from: o */
    public final void m15741o() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.f21042i % 90.0f != 0.0f) {
                if (this.f21054u.getLayerType() != 1) {
                    this.f21054u.setLayerType(1, null);
                }
            } else if (this.f21054u.getLayerType() != 0) {
                this.f21054u.setLayerType(0, null);
            }
        }
        C9253a aVar = this.f21041h;
        if (aVar != null) {
            aVar.m15610a(-this.f21042i);
        }
        C9219a aVar2 = this.f21045l;
        if (aVar2 != null) {
            aVar2.m15720b(-this.f21042i);
        }
    }

    /* renamed from: p */
    public final void m15740p() {
        m15752c(this.f21051r);
    }

    /* renamed from: q */
    public final void m15739q() {
        Rect rect = this.f21056w;
        mo15732a(rect);
        mo15730b(rect);
        this.f21055v.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }
}
