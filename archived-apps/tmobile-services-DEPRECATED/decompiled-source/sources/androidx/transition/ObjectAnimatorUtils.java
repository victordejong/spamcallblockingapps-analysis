package androidx.transition;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
/* loaded from: classes-dex2jar.jar:androidx/transition/ObjectAnimatorUtils.class */
class ObjectAnimatorUtils {
    private ObjectAnimatorUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> ObjectAnimator m16806a(T t, Property<T, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? ObjectAnimator.ofObject(t, property, (TypeConverter) null, path) : ObjectAnimator.ofFloat(t, new PathProperty(property, path), 0.0f, 1.0f);
    }
}
