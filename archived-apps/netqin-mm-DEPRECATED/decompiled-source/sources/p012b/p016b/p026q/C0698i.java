package p012b.p016b.p026q;

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
import p012b.p042i.p046j.p047m.AbstractC0909c;
/* renamed from: b.b.q.i */
/* loaded from: classes-dex2jar.jar:b/b/q/i.class */
public class C0698i {

    /* renamed from: c */
    public static final int[] f3440c = {16843067, 16843068};

    /* renamed from: a */
    public final ProgressBar f3441a;

    /* renamed from: b */
    public Bitmap f3442b;

    public C0698i(ProgressBar progressBar) {
        this.f3441a = progressBar;
    }

    /* renamed from: a */
    public final Drawable m36374a(Drawable drawable) {
        AnimationDrawable animationDrawable = drawable;
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable2 = (AnimationDrawable) drawable;
            int numberOfFrames = animationDrawable2.getNumberOfFrames();
            AnimationDrawable animationDrawable3 = new AnimationDrawable();
            animationDrawable3.setOneShot(animationDrawable2.isOneShot());
            for (int i = 0; i < numberOfFrames; i++) {
                Drawable a = m36373a(animationDrawable2.getFrame(i), true);
                a.setLevel(10000);
                animationDrawable3.addFrame(a, animationDrawable2.getDuration(i));
            }
            animationDrawable3.setLevel(10000);
            animationDrawable = animationDrawable3;
        }
        return animationDrawable;
    }

    /* renamed from: a */
    public final Drawable m36373a(Drawable drawable, boolean z) {
        if (drawable instanceof AbstractC0909c) {
            AbstractC0909c cVar = (AbstractC0909c) drawable;
            Drawable a = cVar.mo35513a();
            if (a != null) {
                cVar.mo35511a(m36373a(a, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m36373a(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f3442b == null) {
                this.f3442b = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(m36375a());
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

    /* renamed from: a */
    public final Shape m36375a() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    /* renamed from: a */
    public void mo36362a(AttributeSet attributeSet, int i) {
        C0691f0 a = C0691f0.m36414a(this.f3441a.getContext(), attributeSet, f3440c, i, 0);
        Drawable c = a.m36410c(0);
        if (c != null) {
            this.f3441a.setIndeterminateDrawable(m36374a(c));
        }
        Drawable c2 = a.m36410c(1);
        if (c2 != null) {
            this.f3441a.setProgressDrawable(m36373a(c2, false));
        }
        a.m36413b();
    }

    /* renamed from: b */
    public Bitmap m36372b() {
        return this.f3442b;
    }
}
