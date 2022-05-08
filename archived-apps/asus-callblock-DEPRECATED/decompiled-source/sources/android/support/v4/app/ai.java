package android.support.v4.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/ai.class */
public abstract class ai {

    /* renamed from: b  reason: collision with root package name */
    static int f53b = 1048576;

    /* renamed from: a  reason: collision with root package name */
    Matrix f54a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bitmap a(Drawable drawable) {
        Bitmap bitmap;
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            bitmap = null;
        } else {
            float min = Math.min(1.0f, f53b / (intrinsicWidth * intrinsicHeight));
            if (!(drawable instanceof BitmapDrawable) || min != 1.0f) {
                int i = (int) (intrinsicWidth * min);
                int i2 = (int) (intrinsicHeight * min);
                Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                Rect bounds = drawable.getBounds();
                int i3 = bounds.left;
                int i4 = bounds.top;
                int i5 = bounds.right;
                int i6 = bounds.bottom;
                drawable.setBounds(0, 0, i, i2);
                drawable.draw(canvas);
                drawable.setBounds(i3, i4, i5, i6);
                bitmap = createBitmap;
            } else {
                bitmap = ((BitmapDrawable) drawable).getBitmap();
            }
        }
        return bitmap;
    }

    public static View a(Context context, Parcelable parcelable) {
        ImageView imageView = null;
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            Bitmap bitmap = (Bitmap) bundle.getParcelable("sharedElement:snapshot:bitmap");
            if (bitmap != null) {
                imageView = new ImageView(context);
                imageView.setImageBitmap(bitmap);
                imageView.setScaleType(ImageView.ScaleType.valueOf(bundle.getString("sharedElement:snapshot:imageScaleType")));
                if (imageView.getScaleType() == ImageView.ScaleType.MATRIX) {
                    float[] floatArray = bundle.getFloatArray("sharedElement:snapshot:imageMatrix");
                    Matrix matrix = new Matrix();
                    matrix.setValues(floatArray);
                    imageView.setImageMatrix(matrix);
                }
            }
        } else if (parcelable instanceof Bitmap) {
            imageView = new ImageView(context);
            imageView.setImageBitmap((Bitmap) parcelable);
        } else {
            imageView = null;
        }
        return imageView;
    }
}
