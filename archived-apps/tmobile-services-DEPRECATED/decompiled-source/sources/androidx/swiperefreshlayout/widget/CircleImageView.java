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
import androidx.core.view.ViewCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/CircleImageView.class */
public class CircleImageView extends ImageView {

    /* renamed from: f */
    private Animation.AnimationListener f4970f;

    /* renamed from: g */
    int f4971g;

    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/CircleImageView$OvalShadow.class */
    private class OvalShadow extends OvalShape {

        /* renamed from: f */
        private RadialGradient f4972f;

        /* renamed from: g */
        private Paint f4973g = new Paint();

        OvalShadow(int i) {
            CircleImageView.this.f4971g = i;
            m16974a((int) rect().width());
        }

        /* renamed from: a */
        private void m16974a(int i) {
            float f = i / 2;
            RadialGradient radialGradient = new RadialGradient(f, f, CircleImageView.this.f4971g, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f4972f = radialGradient;
            this.f4973g.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width;
            float width2 = CircleImageView.this.getWidth() / 2;
            float height = CircleImageView.this.getHeight() / 2;
            canvas.drawCircle(width2, height, width2, this.f4973g);
            canvas.drawCircle(width2, height, width - CircleImageView.this.f4971g, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f, float f2) {
            super.onResize(f, f2);
            m16974a((int) f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CircleImageView(Context context, int i) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.f4971g = (int) (3.5f * f);
        if (m16976a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.m19169u0(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new OvalShadow(this.f4971g));
            setLayerType(1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f4971g, i3, i2, 503316480);
            int i4 = this.f4971g;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(i);
        ViewCompat.m19177q0(this, shapeDrawable);
    }

    /* renamed from: a */
    private boolean m16976a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: b */
    public void m16975b(Animation.AnimationListener animationListener) {
        this.f4970f = animationListener;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f4970f;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f4970f;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!m16976a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f4971g * 2), getMeasuredHeight() + (this.f4971g * 2));
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
