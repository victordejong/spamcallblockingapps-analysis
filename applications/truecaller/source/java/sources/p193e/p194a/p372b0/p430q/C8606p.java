package p193e.p194a.p372b0.p430q;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import s1.z.c.l;
/* renamed from: e.a.b0.q.p */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/p.class */
public final class C8606p extends AbstractC8575d {
    public C8606p() {
        super("com.truecaller.common.util.GradientTransformation");
    }

    /* renamed from: c */
    public Bitmap m28230c(AbstractC22303d abstractC22303d, Bitmap bitmap, int i, int i2) {
        l.e(abstractC22303d, "pool");
        l.e(bitmap, "toTransform");
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas = new Canvas(copy);
        float f = width / 2;
        LinearGradient linearGradient = new LinearGradient(f, height / 2, f, height, new int[]{Color.argb(0, 0, 0, 0), Color.argb(51, 0, 0, 0)}, (float[]) null, Shader.TileMode.CLAMP);
        Paint paint = new Paint(4);
        paint.setDither(true);
        paint.setFilterBitmap(true);
        paint.setShader(linearGradient);
        canvas.drawPaint(paint);
        l.d(copy, "gradientBitmap");
        return copy;
    }

    public boolean equals(Object obj) {
        return obj instanceof C8606p;
    }

    public int hashCode() {
        return this.f26394c.hashCode();
    }
}
