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
import androidx.core.p037g.C0741t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.swiperefreshlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a.class */
public final class C1160a extends ImageView {

    /* renamed from: a */
    int f4995a;

    /* renamed from: b */
    private Animation.AnimationListener f4996b;

    /* renamed from: androidx.swiperefreshlayout.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a$a.class */
    private final class C1161a extends OvalShape {

        /* renamed from: b */
        private RadialGradient f4998b;

        /* renamed from: c */
        private Paint f4999c = new Paint();

        C1161a(int i) {
            C1160a.this.f4995a = i;
            m6657a((int) rect().width());
        }

        /* renamed from: a */
        private void m6657a(int i) {
            float f = i / 2;
            this.f4998b = new RadialGradient(f, f, C1160a.this.f4995a, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f4999c.setShader(this.f4998b);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public final void draw(Canvas canvas, Paint paint) {
            int width;
            float width2 = C1160a.this.getWidth() / 2;
            float height = C1160a.this.getHeight() / 2;
            canvas.drawCircle(width2, height, width2, this.f4999c);
            canvas.drawCircle(width2, height, width - C1160a.this.f4995a, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected final void onResize(float f, float f2) {
            super.onResize(f, f2);
            m6657a((int) f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1160a(Context context) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i = (int) (1.75f * f);
        int i2 = (int) (0.0f * f);
        this.f4995a = (int) (3.5f * f);
        if (m6659a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            C0741t.m8359a(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new C1161a(this.f4995a));
            setLayerType(1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f4995a, i2, i, 503316480);
            int i3 = this.f4995a;
            setPadding(i3, i3, i3, i3);
        }
        shapeDrawable.getPaint().setColor(-328966);
        C0741t.m8351a(this, shapeDrawable);
    }

    /* renamed from: a */
    private static boolean m6659a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: a */
    public final void m6658a(Animation.AnimationListener animationListener) {
        this.f4996b = animationListener;
    }

    @Override // android.view.View
    public final void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f4996b;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public final void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f4996b;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!m6659a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f4995a * 2), getMeasuredHeight() + (this.f4995a * 2));
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
