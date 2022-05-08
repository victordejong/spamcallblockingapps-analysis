package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/f.class */
public final class f extends Drawable implements Animatable {
    private static final Interpolator c = new LinearInterpolator();
    private static final Interpolator d = new android.support.v4.view.b.a();

    /* renamed from: b  reason: collision with root package name */
    boolean f297b;
    private float g;
    private Resources h;
    private View i;
    private Animation j;
    private float k;
    private double l;
    private double m;
    private final int[] e = {-16777216};
    private final ArrayList<Animation> f = new ArrayList<>();
    private final Drawable.Callback n = new Drawable.Callback() { // from class: android.support.v4.widget.f.3
        @Override // android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
            f.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            f.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            f.this.unscheduleSelf(runnable);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final a f296a = new a(this.n);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/f$a.class */
    public static final class a {
        int[] i;
        int j;
        float k;
        float l;
        float m;
        boolean n;
        Path o;
        float p;
        double q;
        int r;
        int s;
        int t;
        int v;
        int w;
        private final Drawable.Callback x;

        /* renamed from: a  reason: collision with root package name */
        final RectF f303a = new RectF();

        /* renamed from: b  reason: collision with root package name */
        final Paint f304b = new Paint();
        final Paint c = new Paint();
        float d = 0.0f;
        float e = 0.0f;
        float f = 0.0f;
        float g = 5.0f;
        float h = 2.5f;
        final Paint u = new Paint(1);

        public a(Drawable.Callback callback) {
            this.x = callback;
            this.f304b.setStrokeCap(Paint.Cap.SQUARE);
            this.f304b.setAntiAlias(true);
            this.f304b.setStyle(Paint.Style.STROKE);
            this.c.setStyle(Paint.Style.FILL);
            this.c.setAntiAlias(true);
        }

        final int a() {
            return (this.j + 1) % this.i.length;
        }

        public final void a(float f) {
            this.d = f;
            d();
        }

        public final void a(int i) {
            this.j = i;
            this.w = this.i[this.j];
        }

        public final void a(boolean z) {
            if (this.n != z) {
                this.n = z;
                d();
            }
        }

        public final void a(int[] iArr) {
            this.i = iArr;
            a(0);
        }

        public final void b() {
            this.k = this.d;
            this.l = this.e;
            this.m = this.f;
        }

        public final void b(float f) {
            this.e = f;
            d();
        }

        public final void c() {
            this.k = 0.0f;
            this.l = 0.0f;
            this.m = 0.0f;
            a(0.0f);
            b(0.0f);
            c(0.0f);
        }

        public final void c(float f) {
            this.f = f;
            d();
        }

        final void d() {
            this.x.invalidateDrawable(null);
        }
    }

    public f(Context context, View view) {
        this.i = view;
        this.h = context.getResources();
        this.f296a.a(this.e);
        a(1);
        final a aVar = this.f296a;
        Animation animation = new Animation() { // from class: android.support.v4.widget.f.1
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                if (f.this.f297b) {
                    f.a(f, aVar);
                    return;
                }
                float b2 = f.b(aVar);
                float f2 = aVar.l;
                float f3 = aVar.k;
                float f4 = aVar.m;
                f.c(f, aVar);
                if (f <= 0.5f) {
                    aVar.a(f3 + (f.d.getInterpolation(f / 0.5f) * (0.8f - b2)));
                }
                if (f > 0.5f) {
                    aVar.b(((0.8f - b2) * f.d.getInterpolation((f - 0.5f) / 0.5f)) + f2);
                }
                aVar.c((0.25f * f) + f4);
                f.this.c((216.0f * f) + (1080.0f * (f.this.k / 5.0f)));
            }
        };
        animation.setRepeatCount(-1);
        animation.setRepeatMode(1);
        animation.setInterpolator(c);
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: android.support.v4.widget.f.2
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation2) {
                aVar.b();
                a aVar2 = aVar;
                aVar2.a(aVar2.a());
                aVar.a(aVar.e);
                if (f.this.f297b) {
                    f.this.f297b = false;
                    animation2.setDuration(1332L);
                    aVar.a(false);
                    return;
                }
                f.this.k = (f.this.k + 1.0f) % 5.0f;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation2) {
                f.this.k = 0.0f;
            }
        });
        this.j = animation;
    }

    private void a(double d2, double d3, double d4, double d5, float f, float f2) {
        float min;
        a aVar = this.f296a;
        float f3 = this.h.getDisplayMetrics().density;
        this.l = f3 * d2;
        this.m = f3 * d3;
        float f4 = ((float) d5) * f3;
        aVar.g = f4;
        aVar.f304b.setStrokeWidth(f4);
        aVar.d();
        aVar.q = f3 * d4;
        aVar.a(0);
        aVar.r = (int) (f * f3);
        aVar.s = (int) (f3 * f2);
        aVar.h = (aVar.q <= 0.0d || Math.min((int) this.l, (int) this.m) < 0.0f) ? (float) Math.ceil(aVar.g / 2.0f) : (float) ((min / 2.0f) - aVar.q);
    }

    static /* synthetic */ void a(float f, a aVar) {
        c(f, aVar);
        float floor = (float) (Math.floor(aVar.m / 0.8f) + 1.0d);
        float b2 = b(aVar);
        aVar.a((((aVar.l - b2) - aVar.k) * f) + aVar.k);
        aVar.b(aVar.l);
        aVar.c(((floor - aVar.m) * f) + aVar.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float b(a aVar) {
        return (float) Math.toRadians(aVar.g / (6.283185307179586d * aVar.q));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(float f, a aVar) {
        if (f > 0.75f) {
            float f2 = (f - 0.75f) / 0.25f;
            int i = aVar.i[aVar.j];
            int i2 = aVar.i[aVar.a()];
            int intValue = Integer.valueOf(i).intValue();
            int i3 = (intValue >> 24) & 255;
            int i4 = (intValue >> 16) & 255;
            int i5 = (intValue >> 8) & 255;
            int i6 = intValue & 255;
            int intValue2 = Integer.valueOf(i2).intValue();
            aVar.w = (((int) (f2 * ((intValue2 & 255) - i6))) + i6) | ((i3 + ((int) ((((intValue2 >> 24) & 255) - i3) * f2))) << 24) | ((i4 + ((int) ((((intValue2 >> 16) & 255) - i4) * f2))) << 16) | ((((int) ((((intValue2 >> 8) & 255) - i5) * f2)) + i5) << 8);
        }
    }

    public final void a(float f) {
        a aVar = this.f296a;
        if (f != aVar.p) {
            aVar.p = f;
            aVar.d();
        }
    }

    public final void a(int i) {
        if (i == 0) {
            a(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            a(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    public final void a(boolean z) {
        this.f296a.a(z);
    }

    public final void b(float f) {
        this.f296a.a(0.0f);
        this.f296a.b(f);
    }

    public final void b(int i) {
        this.f296a.v = i;
    }

    final void c(float f) {
        this.g = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.g, bounds.exactCenterX(), bounds.exactCenterY());
        a aVar = this.f296a;
        RectF rectF = aVar.f303a;
        rectF.set(bounds);
        rectF.inset(aVar.h, aVar.h);
        float f = 360.0f * (aVar.d + aVar.f);
        float f2 = ((aVar.e + aVar.f) * 360.0f) - f;
        aVar.f304b.setColor(aVar.w);
        canvas.drawArc(rectF, f, f2, false, aVar.f304b);
        if (aVar.n) {
            if (aVar.o == null) {
                aVar.o = new Path();
                aVar.o.setFillType(Path.FillType.EVEN_ODD);
            } else {
                aVar.o.reset();
            }
            float f3 = ((int) aVar.h) / 2;
            float f4 = aVar.p;
            float cos = (float) ((aVar.q * Math.cos(0.0d)) + bounds.exactCenterX());
            float sin = (float) ((aVar.q * Math.sin(0.0d)) + bounds.exactCenterY());
            aVar.o.moveTo(0.0f, 0.0f);
            aVar.o.lineTo(aVar.r * aVar.p, 0.0f);
            aVar.o.lineTo((aVar.r * aVar.p) / 2.0f, aVar.s * aVar.p);
            aVar.o.offset(cos - (f3 * f4), sin);
            aVar.o.close();
            aVar.c.setColor(aVar.w);
            canvas.rotate((f + f2) - 5.0f, bounds.exactCenterX(), bounds.exactCenterY());
            canvas.drawPath(aVar.o, aVar.c);
        }
        if (aVar.t < 255) {
            aVar.u.setColor(aVar.v);
            aVar.u.setAlpha(255 - aVar.t);
            canvas.drawCircle(bounds.exactCenterX(), bounds.exactCenterY(), bounds.width() / 2, aVar.u);
        }
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f296a.t;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.m;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return (int) this.l;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        boolean z;
        ArrayList<Animation> arrayList = this.f;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            }
            Animation animation = arrayList.get(i);
            if (animation.hasStarted() && !animation.hasEnded()) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f296a.t = i;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        a aVar = this.f296a;
        aVar.f304b.setColorFilter(colorFilter);
        aVar.d();
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.j.reset();
        this.f296a.b();
        if (this.f296a.e != this.f296a.d) {
            this.f297b = true;
            this.j.setDuration(666L);
            this.i.startAnimation(this.j);
            return;
        }
        this.f296a.a(0);
        this.f296a.c();
        this.j.setDuration(1332L);
        this.i.startAnimation(this.j);
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.i.clearAnimation();
        c(0.0f);
        this.f296a.a(false);
        this.f296a.a(0);
        this.f296a.c();
    }
}
