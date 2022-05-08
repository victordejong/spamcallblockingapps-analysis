package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
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
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.core.p036f.C0687f;
import androidx.p040d.p041a.p042a.C0806b;
/* renamed from: androidx.swiperefreshlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b.class */
public final class C1162b extends Drawable implements Animatable {

    /* renamed from: c */
    private static final Interpolator f5000c = new LinearInterpolator();

    /* renamed from: d */
    private static final Interpolator f5001d = new C0806b();

    /* renamed from: e */
    private static final int[] f5002e = {-16777216};

    /* renamed from: a */
    float f5003a;

    /* renamed from: b */
    boolean f5004b;

    /* renamed from: f */
    private final C1163a f5005f = new C1163a();

    /* renamed from: g */
    private float f5006g;

    /* renamed from: h */
    private Resources f5007h;

    /* renamed from: i */
    private Animator f5008i;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.swiperefreshlayout.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$a.class */
    public static final class C1163a {

        /* renamed from: i */
        int[] f5017i;

        /* renamed from: j */
        int f5018j;

        /* renamed from: k */
        float f5019k;

        /* renamed from: l */
        float f5020l;

        /* renamed from: m */
        float f5021m;

        /* renamed from: n */
        boolean f5022n;

        /* renamed from: o */
        Path f5023o;

        /* renamed from: q */
        float f5025q;

        /* renamed from: r */
        int f5026r;

        /* renamed from: s */
        int f5027s;

        /* renamed from: u */
        int f5029u;

        /* renamed from: a */
        final RectF f5009a = new RectF();

        /* renamed from: b */
        final Paint f5010b = new Paint();

        /* renamed from: c */
        final Paint f5011c = new Paint();

        /* renamed from: d */
        final Paint f5012d = new Paint();

        /* renamed from: e */
        float f5013e = 0.0f;

        /* renamed from: f */
        float f5014f = 0.0f;

        /* renamed from: g */
        float f5015g = 0.0f;

        /* renamed from: h */
        float f5016h = 5.0f;

        /* renamed from: p */
        float f5024p = 1.0f;

        /* renamed from: t */
        int f5028t = 255;

        C1163a() {
            this.f5010b.setStrokeCap(Paint.Cap.SQUARE);
            this.f5010b.setAntiAlias(true);
            this.f5010b.setStyle(Paint.Style.STROKE);
            this.f5011c.setStyle(Paint.Style.FILL);
            this.f5011c.setAntiAlias(true);
            this.f5012d.setColor(0);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final int m6649a() {
            return (this.f5018j + 1) % this.f5017i.length;
        }

        /* renamed from: a */
        final void m6648a(float f) {
            this.f5016h = f;
            this.f5010b.setStrokeWidth(f);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m6647a(int i) {
            this.f5018j = i;
            this.f5029u = this.f5017i[this.f5018j];
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m6646a(boolean z) {
            if (this.f5022n != z) {
                this.f5022n = z;
            }
        }

        /* renamed from: b */
        final int m6645b() {
            return this.f5017i[this.f5018j];
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public final void m6644c() {
            this.f5019k = this.f5013e;
            this.f5020l = this.f5014f;
            this.f5021m = this.f5015g;
        }

        /* renamed from: d */
        final void m6643d() {
            this.f5019k = 0.0f;
            this.f5020l = 0.0f;
            this.f5021m = 0.0f;
            this.f5013e = 0.0f;
            this.f5014f = 0.0f;
            this.f5015g = 0.0f;
        }
    }

    public C1162b(Context context) {
        this.f5007h = ((Context) C0687f.m8549a(context)).getResources();
        C1163a aVar = this.f5005f;
        aVar.f5017i = f5002e;
        aVar.m6647a(0);
        this.f5005f.m6648a(2.5f);
        invalidateSelf();
        C1163a aVar2 = this.f5005f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C1164c(this, aVar2));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f5000c);
        ofFloat.addListener(new C1165d(this, aVar2));
        this.f5008i = ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6654a(float f, C1163a aVar) {
        int b;
        if (f > 0.75f) {
            float f2 = (f - 0.75f) / 0.25f;
            int b2 = aVar.m6645b();
            int i = aVar.f5017i[aVar.m6649a()];
            int i2 = (b2 >> 24) & 255;
            int i3 = (b2 >> 16) & 255;
            int i4 = (b2 >> 8) & 255;
            int i5 = b2 & 255;
            b = ((i2 + ((int) ((((i >> 24) & 255) - i2) * f2))) << 24) | ((i3 + ((int) ((((i >> 16) & 255) - i3) * f2))) << 16) | ((i4 + ((int) ((((i >> 8) & 255) - i4) * f2))) << 8) | (i5 + ((int) (f2 * ((i & 255) - i5))));
        } else {
            b = aVar.m6645b();
        }
        aVar.f5029u = b;
    }

    /* renamed from: a */
    public final void m6656a() {
        C1163a aVar = this.f5005f;
        float f = this.f5007h.getDisplayMetrics().density;
        aVar.m6648a(2.5f * f);
        aVar.f5025q = 7.5f * f;
        aVar.m6647a(0);
        aVar.f5026r = (int) (10.0f * f);
        aVar.f5027s = (int) (f * 5.0f);
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m6655a(float f) {
        C1163a aVar = this.f5005f;
        if (f != aVar.f5024p) {
            aVar.f5024p = f;
        }
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6653a(float f, C1163a aVar, boolean z) {
        float f2;
        float f3;
        if (this.f5004b) {
            m6654a(f, aVar);
            aVar.f5013e = aVar.f5019k + (((aVar.f5020l - 0.01f) - aVar.f5019k) * f);
            aVar.f5014f = aVar.f5020l;
            aVar.f5015g = aVar.f5021m + ((((float) (Math.floor(aVar.f5021m / 0.8f) + 1.0d)) - aVar.f5021m) * f);
        } else if (f != 1.0f || z) {
            float f4 = aVar.f5021m;
            if (f < 0.5f) {
                f3 = aVar.f5019k;
                f2 = (f5001d.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + f3;
            } else {
                f2 = aVar.f5019k + 0.79f;
                f3 = f2 - (((1.0f - f5001d.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f5 = this.f5003a;
            aVar.f5013e = f3;
            aVar.f5014f = f2;
            aVar.f5015g = f4 + (0.20999998f * f);
            this.f5006g = (f + f5) * 216.0f;
        }
    }

    /* renamed from: a */
    public final void m6652a(boolean z) {
        this.f5005f.m6646a(z);
        invalidateSelf();
    }

    /* renamed from: b */
    public final void m6651b(float f) {
        C1163a aVar = this.f5005f;
        aVar.f5013e = 0.0f;
        aVar.f5014f = f;
        invalidateSelf();
    }

    /* renamed from: c */
    public final void m6650c(float f) {
        this.f5005f.f5015g = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f5006g, bounds.exactCenterX(), bounds.exactCenterY());
        C1163a aVar = this.f5005f;
        RectF rectF = aVar.f5009a;
        float f = aVar.f5025q + (aVar.f5016h / 2.0f);
        if (aVar.f5025q <= 0.0f) {
            f = (Math.min(bounds.width(), bounds.height()) / 2.0f) - Math.max((aVar.f5026r * aVar.f5024p) / 2.0f, aVar.f5016h / 2.0f);
        }
        rectF.set(bounds.centerX() - f, bounds.centerY() - f, bounds.centerX() + f, bounds.centerY() + f);
        float f2 = (aVar.f5013e + aVar.f5015g) * 360.0f;
        float f3 = ((aVar.f5014f + aVar.f5015g) * 360.0f) - f2;
        aVar.f5010b.setColor(aVar.f5029u);
        aVar.f5010b.setAlpha(aVar.f5028t);
        float f4 = aVar.f5016h / 2.0f;
        rectF.inset(f4, f4);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, aVar.f5012d);
        float f5 = -f4;
        rectF.inset(f5, f5);
        canvas.drawArc(rectF, f2, f3, false, aVar.f5010b);
        if (aVar.f5022n) {
            if (aVar.f5023o == null) {
                aVar.f5023o = new Path();
                aVar.f5023o.setFillType(Path.FillType.EVEN_ODD);
            } else {
                aVar.f5023o.reset();
            }
            float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f6 = (aVar.f5026r * aVar.f5024p) / 2.0f;
            aVar.f5023o.moveTo(0.0f, 0.0f);
            aVar.f5023o.lineTo(aVar.f5026r * aVar.f5024p, 0.0f);
            aVar.f5023o.lineTo((aVar.f5026r * aVar.f5024p) / 2.0f, aVar.f5027s * aVar.f5024p);
            aVar.f5023o.offset((min + rectF.centerX()) - f6, rectF.centerY() + (aVar.f5016h / 2.0f));
            aVar.f5023o.close();
            aVar.f5011c.setColor(aVar.f5029u);
            aVar.f5011c.setAlpha(aVar.f5028t);
            canvas.save();
            canvas.rotate(f2 + f3, rectF.centerX(), rectF.centerY());
            canvas.drawPath(aVar.f5023o, aVar.f5011c);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f5005f.f5028t;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f5008i.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f5005f.f5028t = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f5005f.f5010b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Animator animator;
        long j;
        this.f5008i.cancel();
        this.f5005f.m6644c();
        if (this.f5005f.f5014f != this.f5005f.f5013e) {
            this.f5004b = true;
            animator = this.f5008i;
            j = 666;
        } else {
            this.f5005f.m6647a(0);
            this.f5005f.m6643d();
            animator = this.f5008i;
            j = 1332;
        }
        animator.setDuration(j);
        this.f5008i.start();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f5008i.cancel();
        this.f5006g = 0.0f;
        this.f5005f.m6646a(false);
        this.f5005f.m6647a(0);
        this.f5005f.m6643d();
        invalidateSelf();
    }
}
