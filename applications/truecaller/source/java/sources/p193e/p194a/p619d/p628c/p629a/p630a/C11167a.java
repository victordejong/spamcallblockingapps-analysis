package p193e.p194a.p619d.p628c.p629a.p630a;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathDashPathEffect;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.animation.OvershootInterpolator;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.C4781R;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.d0.j;
import s1.g;
import s1.n;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.c.a.a.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/a/a.class */
public final class C11167a extends Drawable {

    /* renamed from: a */
    public final g<C19235i0> f33023a;

    /* renamed from: b */
    public final Resources f33024b;

    /* renamed from: c */
    public final float f33025c;

    /* renamed from: d */
    public final float f33026d;

    /* renamed from: g */
    public final Path f33029g;

    /* renamed from: i */
    public boolean f33031i;

    /* renamed from: j */
    public final Paint f33032j;

    /* renamed from: k */
    public final Paint f33033k;

    /* renamed from: l */
    public float f33034l;

    /* renamed from: m */
    public float f33035m;

    /* renamed from: n */
    public final AnimatorSet f33036n;

    /* renamed from: o */
    public final AnimatorSet f33037o;

    /* renamed from: p */
    public final Context f33038p;

    /* renamed from: e */
    public final Path f33027e = new Path();

    /* renamed from: f */
    public final PathMeasure f33028f = new PathMeasure();

    /* renamed from: h */
    public final Path f33030h = new Path();

    /* renamed from: e.a.d.c.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/d/c/a/a/a$a.class */
    public static final class C11168a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ int f33039a;

        /* renamed from: b */
        public final /* synthetic */ Object f33040b;

        public C11168a(int i, Object obj) {
            this.f33039a = i;
            this.f33040b = obj;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int i = this.f33039a;
            if (i == 0) {
                l.d(valueAnimator, "it");
                Object animatedValue = valueAnimator.getAnimatedValue();
                Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                float floatValue = ((Float) animatedValue).floatValue();
                C11167a.m25083a((C11167a) this.f33040b, floatValue);
                if (floatValue < 0.5f) {
                    return;
                }
                C11167a c11167a = (C11167a) this.f33040b;
                Objects.requireNonNull(c11167a);
                c11167a.f33035m = j.c(floatValue - 0.5f, 0.0f, 1.0f);
                Drawable.Callback callback = c11167a.getCallback();
                if (callback != null) {
                    callback.invalidateDrawable(c11167a);
                }
                ((C11167a) this.f33040b).m25078f();
            } else if (i == 1) {
                l.d(valueAnimator, "it");
                Object animatedValue2 = valueAnimator.getAnimatedValue();
                Objects.requireNonNull(animatedValue2, "null cannot be cast to non-null type kotlin.Float");
                C11167a.m25083a((C11167a) this.f33040b, ((Float) animatedValue2).floatValue());
            } else if (i != 2) {
                if (i != 3) {
                    throw null;
                }
                l.d(valueAnimator, "it");
                Object animatedValue3 = valueAnimator.getAnimatedValue();
                Objects.requireNonNull(animatedValue3, "null cannot be cast to non-null type kotlin.Float");
                C11167a.m25083a((C11167a) this.f33040b, ((Float) animatedValue3).floatValue());
            } else {
                l.d(valueAnimator, "it");
                Object animatedValue4 = valueAnimator.getAnimatedValue();
                Objects.requireNonNull(animatedValue4, "null cannot be cast to non-null type kotlin.Float");
                float floatValue2 = ((Float) animatedValue4).floatValue();
                C11167a.m25083a((C11167a) this.f33040b, floatValue2);
                if (floatValue2 < 0.5f) {
                    return;
                }
                ((C11167a) this.f33040b).m25081c();
            }
        }
    }

    /* renamed from: e.a.d.c.a.a.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/a/a$b.class */
    public static final class C11169b extends m implements a<C19235i0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11169b() {
            super(0);
            C11167a.this = r4;
        }

        public Object invoke() {
            return new C19235i0(C11167a.this.f33038p);
        }
    }

    public C11167a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f33038p = context;
        n m3978P1 = C25225a.m3978P1(new C11169b());
        this.f33023a = m3978P1;
        Resources resources = context.getResources();
        this.f33024b = resources;
        float dimension = resources.getDimension(((C19235i0) m3978P1.getValue()).mo13765e(C4781R.attr.voip_ring_width_size));
        this.f33025c = dimension;
        float dimension2 = resources.getDimension(C4781R.dimen.voip_call_state_avatar_ring_dot_radius);
        this.f33026d = dimension2;
        Path path = new Path();
        path.addCircle(0.0f, 0.0f, dimension2, Path.Direction.CW);
        this.f33029g = path;
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(dimension);
        paint.setColor(0);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT));
        this.f33032j = paint;
        Paint paint2 = new Paint(1);
        paint2.setColor(0);
        paint2.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f33033k = paint2;
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 0.5f);
        ofFloat.setDuration(800L);
        ofFloat.setInterpolator(new OvershootInterpolator());
        ofFloat.addUpdateListener(new C11168a(0, this));
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.5f, 0.0f);
        ofFloat2.setDuration(800L);
        ofFloat2.setInterpolator(new OvershootInterpolator());
        ofFloat2.addUpdateListener(new C11168a(1, this));
        animatorSet.playSequentially(ofFloat, ofFloat2);
        this.f33036n = animatorSet;
        AnimatorSet animatorSet2 = new AnimatorSet();
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 0.5f);
        ofFloat3.setDuration(800L);
        ofFloat3.setInterpolator(new OvershootInterpolator());
        ofFloat3.addUpdateListener(new C11168a(2, this));
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(0.5f, 0.0f);
        ofFloat4.setDuration(800L);
        ofFloat4.setInterpolator(new OvershootInterpolator());
        ofFloat4.addUpdateListener(new C11168a(3, this));
        animatorSet2.playSequentially(ofFloat3, ofFloat4);
        this.f33037o = animatorSet2;
    }

    /* renamed from: a */
    public static final void m25083a(C11167a c11167a, float f) {
        Objects.requireNonNull(c11167a);
        c11167a.f33034l = j.c(f, 0.0f, 1.0f);
        Drawable.Callback callback = c11167a.getCallback();
        if (callback != null) {
            callback.invalidateDrawable(c11167a);
        }
    }

    /* renamed from: b */
    public final int m25082b(int i) {
        return C19291g.m13612L(((C19235i0) this.f33023a.getValue()).f53605a, i);
    }

    /* renamed from: c */
    public final void m25081c() {
        if (this.f33030h.isEmpty()) {
            return;
        }
        this.f33030h.reset();
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    /* renamed from: d */
    public final void m25080d() {
        this.f33036n.cancel();
        this.f33037o.cancel();
        m25081c();
        this.f33034l = j.c(0.0f, 0.0f, 1.0f);
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
        this.f33035m = j.c(0.0f, 0.0f, 1.0f);
        Drawable.Callback callback2 = getCallback();
        if (callback2 != null) {
            callback2.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        float length = this.f33028f.getLength();
        float f = this.f33034l;
        float f2 = this.f33035m;
        canvas.drawPath(this.f33027e, this.f33032j);
        if (!this.f33029g.isEmpty()) {
            this.f33033k.setPathEffect(new PathDashPathEffect(this.f33029g, length, (((1.0f - f) + 0.125f) % 1.0f) * length, PathDashPathEffect.Style.TRANSLATE));
            canvas.drawPath(this.f33027e, this.f33033k);
        }
        if (!this.f33030h.isEmpty()) {
            this.f33033k.setPathEffect(new PathDashPathEffect(this.f33030h, length, (((1.0f - f2) + 0.625f) % 1.0f) * length, PathDashPathEffect.Style.TRANSLATE));
            canvas.drawPath(this.f33027e, this.f33033k);
        }
    }

    /* renamed from: e */
    public final void m25079e(int i) {
        this.f33032j.setColor(i);
        this.f33033k.setColor(i);
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    /* renamed from: f */
    public final void m25078f() {
        if (!this.f33030h.isEmpty()) {
            return;
        }
        this.f33030h.addCircle(0.0f, 0.0f, this.f33026d, Path.Direction.CW);
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    /* renamed from: g */
    public final void m25077g() {
        m25079e(m25082b(C4781R.attr.voip_call_status_ok_color));
        if (!this.f33030h.isEmpty()) {
            return;
        }
        if (!this.f33031i) {
            m25078f();
            return;
        }
        m25080d();
        this.f33036n.start();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: h */
    public final void m25076h() {
        m25079e(m25082b(C4781R.attr.voip_call_status_error_color));
        if (this.f33030h.isEmpty()) {
            return;
        }
        m25080d();
        m25078f();
        this.f33037o.start();
    }

    /* renamed from: i */
    public final void m25075i() {
        this.f33027e.reset();
        Path path = this.f33027e;
        float f = (getBounds().bottom - getBounds().top) / 2.0f;
        path.addCircle(f, f, f - this.f33026d, Path.Direction.CW);
        this.f33028f.setPath(this.f33027e, false);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f33033k.setAlpha(i);
        this.f33032j.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        m25075i();
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(Rect rect) {
        l.e(rect, "bounds");
        super.setBounds(rect);
        m25075i();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f33033k.setColorFilter(colorFilter);
    }
}
