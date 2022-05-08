package com.android.contacts.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusBitmapMerge.class */
public class AsusBitmapMerge {
    public static Bitmap createBitmap(Bitmap bitmap, Bitmap bitmap2, int i, int i2, int i3, int i4) {
        Bitmap bitmap3;
        if (bitmap == null) {
            bitmap3 = null;
        } else {
            bitmap3 = bitmap;
            if (bitmap2 != null) {
                bitmap3 = Bitmap.createBitmap(i, i, Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(bitmap3);
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                float max = Math.max(width / i, height / i2);
                int i5 = (int) (width / max);
                int i6 = (int) (height / max);
                int i7 = (i - i5) / 2;
                int i8 = (i2 - i6) / 2;
                canvas.drawBitmap(bitmap, new Rect(0, 0, width, height), new RectF(i7, i8, i5 + i7, i6 + i8), (Paint) null);
                canvas.drawBitmap(bitmap2, 0.0f, i4, (Paint) null);
                canvas.save(31);
                canvas.restore();
            }
        }
        return bitmap3;
    }
}
