package p193e.p194a.p372b0.p417k;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
/* renamed from: e.a.b0.k.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/k/a.class */
public class C8491a {

    /* renamed from: c */
    public static final char[] f26258c = {64991};

    /* renamed from: a */
    public final Paint f26259a;

    /* renamed from: b */
    public final Rect f26260b;

    public C8491a() {
        Paint paint = new Paint();
        this.f26259a = paint;
        Rect rect = new Rect();
        this.f26260b = rect;
        paint.getTextBounds(f26258c, 0, 1, rect);
    }

    /* renamed from: a */
    public final void m28451a(char[] cArr, Bitmap bitmap) {
        bitmap.eraseColor(0);
        new Canvas(bitmap).drawText(cArr, 0, cArr.length, 0.0f, 0.0f, this.f26259a);
    }
}
