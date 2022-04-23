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
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.core.graphics.drawable.AbstractC0760c;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
/* renamed from: androidx.appcompat.widget.u */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/u.class */
class C0523u {

    /* renamed from: a */
    private static final int[] f2446a = {16843067, 16843068};

    /* renamed from: b */
    private final ProgressBar f2447b;

    /* renamed from: c */
    private Bitmap f2448c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0523u(ProgressBar progressBar) {
        this.f2447b = progressBar;
    }

    /* renamed from: a */
    private Drawable m8963a(Drawable drawable, boolean z) {
        if (drawable instanceof AbstractC0760c) {
            AbstractC0760c cVar = (AbstractC0760c) drawable;
            Drawable a = cVar.mo8238a();
            if (a != null) {
                cVar.mo8237a(m8963a(a, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m8963a(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f2448c == null) {
                this.f2448c = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Bitmap m8964a() {
        return this.f2448c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo8961a(AttributeSet attributeSet, int i) {
        C0484bm a = C0484bm.m9092a(this.f2447b.getContext(), attributeSet, f2446a, i, 0);
        Drawable b = a.m9091b(0);
        if (b != null) {
            ProgressBar progressBar = this.f2447b;
            AnimationDrawable animationDrawable = b;
            if (b instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable2 = (AnimationDrawable) b;
                int numberOfFrames = animationDrawable2.getNumberOfFrames();
                AnimationDrawable animationDrawable3 = new AnimationDrawable();
                animationDrawable3.setOneShot(animationDrawable2.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    Drawable a2 = m8963a(animationDrawable2.getFrame(i2), true);
                    a2.setLevel(AbstractC0007a.DEFAULT_TIMEOUT);
                    animationDrawable3.addFrame(a2, animationDrawable2.getDuration(i2));
                }
                animationDrawable3.setLevel(AbstractC0007a.DEFAULT_TIMEOUT);
                animationDrawable = animationDrawable3;
            }
            progressBar.setIndeterminateDrawable(animationDrawable);
        }
        Drawable b2 = a.m9091b(1);
        if (b2 != null) {
            this.f2447b.setProgressDrawable(m8963a(b2, false));
        }
        a.m9100a();
    }
}
