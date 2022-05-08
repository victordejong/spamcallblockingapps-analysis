package androidx.transition;

import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
/* renamed from: androidx.transition.ak */
/* loaded from: classes-dex2jar.jar:androidx/transition/ak.class */
final class C1199ak {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static PropertyValuesHolder m6547a(Property<?, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? PropertyValuesHolder.ofObject(property, (TypeConverter) null, path) : PropertyValuesHolder.ofFloat(new C1198aj(property, path), 0.0f, 1.0f);
    }
}
