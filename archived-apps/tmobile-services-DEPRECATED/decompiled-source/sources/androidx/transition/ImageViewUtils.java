package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/transition/ImageViewUtils.class */
class ImageViewUtils {

    /* renamed from: a */
    private static boolean f5173a = true;

    /* renamed from: b */
    private static Field f5174b;

    /* renamed from: c */
    private static boolean f5175c;

    private ImageViewUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m16810a(@NonNull ImageView imageView, @Nullable Matrix matrix) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            imageView.animateTransform(matrix);
        } else if (matrix == null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable != null) {
                drawable.setBounds(0, 0, (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom());
                imageView.invalidate();
            }
        } else if (i >= 21) {
            m16808c(imageView, matrix);
        } else {
            Drawable drawable2 = imageView.getDrawable();
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
                Matrix matrix2 = null;
                matrix2 = null;
                m16809b();
                Field field = f5174b;
                if (field != null) {
                    try {
                        Matrix matrix3 = (Matrix) field.get(imageView);
                        if (matrix3 == null) {
                            try {
                                Matrix matrix4 = new Matrix();
                                matrix2 = matrix4;
                                f5174b.set(imageView, matrix4);
                                matrix2 = matrix4;
                            } catch (IllegalAccessException e) {
                            }
                        }
                        matrix2 = matrix3;
                    } catch (IllegalAccessException e2) {
                    }
                }
                if (matrix2 != null) {
                    matrix2.set(matrix);
                }
                imageView.invalidate();
            }
        }
    }

    /* renamed from: b */
    private static void m16809b() {
        if (!f5175c) {
            try {
                Field declaredField = ImageView.class.getDeclaredField("mDrawMatrix");
                f5174b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f5175c = true;
        }
    }

    @RequiresApi
    @SuppressLint({"NewApi"})
    /* renamed from: c */
    private static void m16808c(@NonNull ImageView imageView, @Nullable Matrix matrix) {
        if (f5173a) {
            try {
                imageView.animateTransform(matrix);
            } catch (NoSuchMethodError e) {
                f5173a = false;
            }
        }
    }
}
