package androidx.swiperefreshlayout.widget;

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
import f.h.l.t;
/* renamed from: androidx.swiperefreshlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a.class */
public class C0444a extends ImageView {

    /* renamed from: f */
    private Animation.AnimationListener f2299f;

    /* renamed from: g */
    int f2300g;

    /* renamed from: androidx.swiperefreshlayout.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a$a.class */
    private class C0445a extends OvalShape {

        /* renamed from: f */
        private RadialGradient f2301f;

        /* renamed from: g */
        private Paint f2302g = new Paint();

        C0445a(int i) {
            C0444a.this = r5;
            r5.f2300g = i;
            m4730a((int) rect().width());
        }

        /* renamed from: a */
        private void m4730a(int i) {
            float f = i / 2;
            RadialGradient radialGradient = new RadialGradient(f, f, C0444a.this.f2300g, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f2301f = radialGradient;
            this.f2302g.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width;
            float width2 = C0444a.this.getWidth() / 2;
            float height = C0444a.this.getHeight() / 2;
            canvas.drawCircle(width2, height, width2, this.f2302g);
            canvas.drawCircle(width2, height, width - C0444a.this.f2300g, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f, float f2) {
            super.onResize(f, f2);
            m4730a((int) f);
        }
    }

    C0444a(Context context, int i) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.f2300g = (int) (3.5f * f);
        if (m4732a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            t.r0(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new C0445a(this.f2300g));
            setLayerType(1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f2300g, i3, i2, 503316480);
            int i4 = this.f2300g;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(i);
        t.n0(this, shapeDrawable);
    }

    /* renamed from: a */
    private boolean m4732a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: b */
    public void m4731b(Animation.AnimationListener animationListener) {
        this.f2299f = animationListener;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f2299f;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f2299f;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!m4732a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f2300g * 2), getMeasuredHeight() + (this.f2300g * 2));
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
