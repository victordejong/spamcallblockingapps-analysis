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
@ListenerClass(method = {@ListenerMethod(defaultReturn = "true", name = "onLongClick", parameters = {ExploreByTouchHelper.DEFAULT_CLASS_NAME}, returnType = "boolean")}, setter = "setOnLongClickListener", targetType = ExploreByTouchHelper.DEFAULT_CLASS_NAME, type = "android.view.View.OnLongClickListener")
/* loaded from: classes-dex2jar.jar:butterknife/OnLongClick.class */
public @interface OnLongClick {
    @IdRes
    int[] value() default {-1};
}
