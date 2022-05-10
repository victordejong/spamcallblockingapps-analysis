package p012b.p125x.p126a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.view.animation.Animation;
import android.widget.ImageView;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.x.a.a */
/* loaded from: classes-dex2jar.jar:b/x/a/a.class */
public class C1948a extends ImageView {

    /* renamed from: a */
    public Animation.AnimationListener f7652a;

    /* renamed from: b */
    public int f7653b;

    /* renamed from: b.x.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/x/a/a$a.class */
    public class C1949a extends OvalShape {

        /* renamed from: a */
        public RadialGradient f7654a;

        /* renamed from: b */
        public Paint f7655b = new Paint();

        public C1949a(int i) {
            C1948a.this.f7653b = i;
            m31503a((int) rect().width());
        }

        /* renamed from: a */
        public final void m31503a(int i) {
            float f = i / 2;
            RadialGradient radialGradient = new RadialGradient(f, f, C1948a.this.f7653b, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f7654a = radialGradient;
            this.f7655b.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width;
            float width2 = C1948a.this.getWidth() / 2;
            float height = C1948a.this.getHeight() / 2;
            canvas.drawCircle(width2, height, width2, this.f7655b);
            canvas.drawCircle(width2, height, width - C1948a.this.f7653b, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void onResize(float f, float f2) {
            super.onResize(f, f2);
            m31503a((int) f);
        }
    }

    public C1948a(Context context, int i) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.f7653b = (int) (3.5f * f);
        if (m31505a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            C1002u.m35248a(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new C1949a(this.f7653b));
            setLayerType(1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f7653b, i3, i2, 503316480);
            int i4 = this.f7653b;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(i);
        C1002u.m35240a(this, shapeDrawable);
    }

    /* renamed from: a */
    public void m31504a(Animation.AnimationListener animationListener) {
        this.f7652a = animationListener;
    }

    /* renamed from: a */
    public final boolean m31505a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f7652a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f7652a;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!m31505a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f7653b * 2), getMeasuredHeight() + (this.f7653b * 2));
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
