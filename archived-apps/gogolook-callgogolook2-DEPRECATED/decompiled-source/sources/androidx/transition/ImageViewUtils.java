package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Matrix;
import android.os.Build;
import android.widget.ImageView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/transition/ImageViewUtils.class */
public class ImageViewUtils {
    public static final String TAG = "ImageViewUtils";
    public static Method sAnimateTransformMethod;
    public static boolean sAnimateTransformMethodFetched;

    public static void animateTransform(ImageView imageView, Matrix matrix) {
        if (Build.VERSION.SDK_INT < 21) {
            imageView.setImageMatrix(matrix);
            return;
        }
        fetchAnimateTransformMethod();
        Method method = sAnimateTransformMethod;
        if (method != null) {
            try {
                method.invoke(imageView, matrix);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    public static void fetchAnimateTransformMethod() {
        if (!sAnimateTransformMethodFetched) {
            try {
                sAnimateTransformMethod = ImageView.class.getDeclaredMethod("animateTransform", Matrix.class);
                sAnimateTransformMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            sAnimateTransformMethodFetched = true;
        }
    }

    public static void reserveEndAnimateTransform(final ImageView imageView, Animator animator) {
        if (Build.VERSION.SDK_INT < 21) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.ImageViewUtils.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    ImageView.ScaleType scaleType = (ImageView.ScaleType) imageView.getTag(C1148R.C1150id.save_scale_type);
                    imageView.setScaleType(scaleType);
                    imageView.setTag(C1148R.C1150id.save_scale_type, null);
                    if (scaleType == ImageView.ScaleType.MATRIX) {
                        ImageView imageView2 = imageView;
                        imageView2.setImageMatrix((Matrix) imageView2.getTag(C1148R.C1150id.save_image_matrix));
                        imageView.setTag(C1148R.C1150id.save_image_matrix, null);
                    }
                    animator2.removeListener(this);
                }
            });
        }
    }

    public static void startAnimateTransform(ImageView imageView) {
        if (Build.VERSION.SDK_INT < 21) {
            ImageView.ScaleType scaleType = imageView.getScaleType();
            imageView.setTag(C1148R.C1150id.save_scale_type, scaleType);
            ImageView.ScaleType scaleType2 = ImageView.ScaleType.MATRIX;
            if (scaleType == scaleType2) {
                imageView.setTag(C1148R.C1150id.save_image_matrix, imageView.getImageMatrix());
            } else {
                imageView.setScaleType(scaleType2);
            }
            imageView.setImageMatrix(MatrixUtils.IDENTITY_MATRIX);
        }
    }
}
