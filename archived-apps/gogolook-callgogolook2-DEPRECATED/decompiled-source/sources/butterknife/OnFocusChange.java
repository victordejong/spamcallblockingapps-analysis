package butterknife;

import androidx.annotation.IdRes;
import androidx.customview.widget.ExploreByTouchHelper;
import butterknife.internal.ListenerClass;
import butterknife.internal.ListenerMethod;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@ListenerClass(method = {@ListenerMethod(name = "onFocusChange", parameters = {ExploreByTouchHelper.DEFAULT_CLASS_NAME, "boolean"})}, setter = "setOnFocusChangeListener", targetType = ExploreByTouchHelper.DEFAULT_CLASS_NAME, type = "android.view.View.OnFocusChangeListener")
/* loaded from: classes-dex2jar.jar:butterknife/OnFocusChange.class */
public @interface OnFocusChange {
    @IdRes
    int[] value() default {-1};
}
