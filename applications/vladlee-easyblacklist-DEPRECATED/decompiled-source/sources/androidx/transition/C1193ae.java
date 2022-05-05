package androidx.transition;

import android.graphics.Matrix;
import android.os.Build;
import android.util.Log;
import android.widget.ImageView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.ae */
/* loaded from: classes-dex2jar.jar:androidx/transition/ae.class */
final class C1193ae {

    /* renamed from: a */
    private static Method f5191a;

    /* renamed from: b */
    private static boolean f5192b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6550a(ImageView imageView, Matrix matrix) {
        if (Build.VERSION.SDK_INT < 21) {
            imageView.setImageMatrix(matrix);
            return;
        }
        if (!f5192b) {
            try {
                Method declaredMethod = ImageView.class.getDeclaredMethod("animateTransform", Matrix.class);
                f5191a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ImageViewUtils", "Failed to retrieve animateTransform method", e);
            }
            f5192b = true;
        }
        Method method = f5191a;
        if (method != null) {
            try {
                method.invoke(imageView, matrix);
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
    }
}
