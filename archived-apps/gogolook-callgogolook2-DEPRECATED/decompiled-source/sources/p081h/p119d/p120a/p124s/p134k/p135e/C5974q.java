package p081h.p119d.p120a.p124s.p134k.p135e;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.util.Log;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
/* renamed from: h.d.a.s.k.e.q */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/q.class */
public final class C5974q {
    /* renamed from: a */
    public static int m24097a(int i) {
        int i2;
        switch (i) {
            case 3:
            case 4:
                i2 = 180;
                break;
            case 5:
            case 6:
                i2 = 90;
                break;
            case 7:
            case 8:
                i2 = 270;
                break;
            default:
                i2 = 0;
                break;
        }
        return i2;
    }

    /* renamed from: a */
    public static Bitmap.Config m24095a(Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    /* renamed from: a */
    public static Bitmap m24093a(Bitmap bitmap, Bitmap bitmap2, int i, int i2) {
        float f;
        float f2;
        if (bitmap2 == null) {
            return null;
        }
        if (bitmap2.getWidth() == i && bitmap2.getHeight() == i2) {
            return bitmap2;
        }
        Matrix matrix = new Matrix();
        float f3 = 0.0f;
        if (bitmap2.getWidth() * i2 > bitmap2.getHeight() * i) {
            f2 = i2 / bitmap2.getHeight();
            f = (i - (bitmap2.getWidth() * f2)) * 0.5f;
        } else {
            f2 = i / bitmap2.getWidth();
            f3 = (i2 - (bitmap2.getHeight() * f2)) * 0.5f;
            f = 0.0f;
        }
        matrix.setScale(f2, f2);
        matrix.postTranslate((int) (f + 0.5f), (int) (f3 + 0.5f));
        if (bitmap == null) {
            bitmap = Bitmap.createBitmap(i, i2, m24095a(bitmap2));
        }
        m24094a(bitmap2, bitmap);
        new Canvas(bitmap).drawBitmap(bitmap2, matrix, new Paint(6));
        return bitmap;
    }

    /* renamed from: a */
    public static Bitmap m24092a(Bitmap bitmap, AbstractC5856c cVar, int i) {
        Matrix matrix = new Matrix();
        m24096a(i, matrix);
        if (matrix.isIdentity()) {
            return bitmap;
        }
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        int round = Math.round(rectF.width());
        int round2 = Math.round(rectF.height());
        Bitmap.Config a = m24095a(bitmap);
        Bitmap a2 = cVar.mo24221a(round, round2, a);
        Bitmap bitmap2 = a2;
        if (a2 == null) {
            bitmap2 = Bitmap.createBitmap(round, round2, a);
        }
        matrix.postTranslate(-rectF.left, -rectF.top);
        new Canvas(bitmap2).drawBitmap(bitmap, matrix, new Paint(6));
        return bitmap2;
    }

    /* renamed from: a */
    public static Bitmap m24091a(Bitmap bitmap, AbstractC5856c cVar, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            Log.isLoggable("TransformationUtils", 2);
            return bitmap;
        }
        float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        int width = (int) (bitmap.getWidth() * min);
        int height = (int) (bitmap.getHeight() * min);
        if (bitmap.getWidth() == width && bitmap.getHeight() == height) {
            Log.isLoggable("TransformationUtils", 2);
            return bitmap;
        }
        Bitmap.Config a = m24095a(bitmap);
        Bitmap a2 = cVar.mo24221a(width, height, a);
        Bitmap bitmap2 = a2;
        if (a2 == null) {
            bitmap2 = Bitmap.createBitmap(width, height, a);
        }
        m24094a(bitmap, bitmap2);
        if (Log.isLoggable("TransformationUtils", 2)) {
            String str = "request: " + i + "x" + i2;
            String str2 = "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight();
            String str3 = "toReuse: " + bitmap2.getWidth() + "x" + bitmap2.getHeight();
            String str4 = "minPct:   " + min;
        }
        Canvas canvas = new Canvas(bitmap2);
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        canvas.drawBitmap(bitmap, matrix, new Paint(6));
        return bitmap2;
    }

    /* renamed from: a */
    public static void m24096a(int i, Matrix matrix) {
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
    }

    @TargetApi(12)
    /* renamed from: a */
    public static void m24094a(Bitmap bitmap, Bitmap bitmap2) {
        if (Build.VERSION.SDK_INT >= 12 && bitmap2 != null) {
            bitmap2.setHasAlpha(bitmap.hasAlpha());
        }
    }
}
