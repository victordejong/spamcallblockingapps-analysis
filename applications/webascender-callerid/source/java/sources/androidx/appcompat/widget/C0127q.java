package androidx.appcompat.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.core.graphics.drawable.AbstractC0224c;
/* renamed from: androidx.appcompat.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/q.class */
class C0127q {

    /* renamed from: c */
    private static final int[] f564c = {16843067, 16843068};

    /* renamed from: a */
    private final ProgressBar f565a;

    /* renamed from: b */
    private Bitmap f566b;

    public C0127q(ProgressBar progressBar) {
        this.f565a = progressBar;
    }

    /* renamed from: a */
    private Shape m6494a() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    /* renamed from: d */
    private Drawable m6491d(Drawable drawable, boolean z) {
        if (drawable instanceof AbstractC0224c) {
            AbstractC0224c abstractC0224c = (AbstractC0224c) drawable;
            Drawable m5952b = abstractC0224c.m5952b();
            if (m5952b != null) {
                abstractC0224c.m5953a(m6491d(m5952b, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m6491d(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f566b == null) {
                this.f566b = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(m6494a());
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            Drawable drawable2 = shapeDrawable;
            if (z) {
                drawable2 = new ClipDrawable(shapeDrawable, 3, 1);
            }
            return drawable2;
        }
        return drawable;
    }

    /* renamed from: e */
    private Drawable m6490e(Drawable drawable) {
        AnimationDrawable animationDrawable = drawable;
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable2 = (AnimationDrawable) drawable;
            int numberOfFrames = animationDrawable2.getNumberOfFrames();
            AnimationDrawable animationDrawable3 = new AnimationDrawable();
            animationDrawable3.setOneShot(animationDrawable2.isOneShot());
            for (int i = 0; i < numberOfFrames; i++) {
                Drawable m6491d = m6491d(animationDrawable2.getFrame(i), true);
                m6491d.setLevel(10000);
                animationDrawable3.addFrame(m6491d, animationDrawable2.getDuration(i));
            }
            animationDrawable3.setLevel(10000);
            animationDrawable = animationDrawable3;
        }
        return animationDrawable;
    }

    /* renamed from: b */
    public Bitmap m6493b() {
        return this.f566b;
    }

    /* renamed from: c */
    public void m6492c(AttributeSet attributeSet, int i) {
        C0135v0 m6445v = C0135v0.m6445v(this.f565a.getContext(), attributeSet, f564c, i, 0);
        Drawable m6459h = m6445v.m6459h(0);
        if (m6459h != null) {
            this.f565a.setIndeterminateDrawable(m6490e(m6459h));
        }
        Drawable m6459h2 = m6445v.m6459h(1);
        if (m6459h2 != null) {
            this.f565a.setProgressDrawable(m6491d(m6459h2, false));
        }
        m6445v.m6444w();
    }
}
