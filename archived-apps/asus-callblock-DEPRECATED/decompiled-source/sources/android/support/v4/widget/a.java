package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.support.v4.view.t;
import android.view.animation.Animation;
import android.widget.ImageView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/a.class */
public final class a extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    Animation.AnimationListener f289a;

    /* renamed from: b  reason: collision with root package name */
    private int f290b;

    /* renamed from: android.support.v4.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/a$a.class */
    private final class C0015a extends OvalShape {

        /* renamed from: b  reason: collision with root package name */
        private RadialGradient f292b;
        private Paint c = new Paint();
        private int d;

        public C0015a(int i, int i2) {
            a.this.f290b = i;
            this.d = i2;
            this.f292b = new RadialGradient(this.d / 2, this.d / 2, a.this.f290b, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.c.setShader(this.f292b);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public final void draw(Canvas canvas, Paint paint) {
            int width = a.this.getWidth();
            int height = a.this.getHeight();
            canvas.drawCircle(width / 2, height / 2, (this.d / 2) + a.this.f290b, this.c);
            canvas.drawCircle(width / 2, height / 2, this.d / 2, paint);
        }
    }

    public a(Context context) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i = (int) (20.0f * f * 2.0f);
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.f290b = (int) (3.5f * f);
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            t.c(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new C0015a(this.f290b, i));
            t.a(this, 1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f290b, i3, i2, 503316480);
            int i4 = this.f290b;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(-328966);
        setBackgroundDrawable(shapeDrawable);
    }

    private static boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.view.View
    public final void onAnimationEnd() {
        super.onAnimationEnd();
        if (this.f289a != null) {
            this.f289a.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public final void onAnimationStart() {
        super.onAnimationStart();
        if (this.f289a != null) {
            this.f289a.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f290b * 2), getMeasuredHeight() + (this.f290b * 2));
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
