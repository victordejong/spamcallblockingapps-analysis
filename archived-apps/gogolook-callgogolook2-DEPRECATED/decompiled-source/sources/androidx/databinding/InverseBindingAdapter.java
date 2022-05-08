package androidx.databinding;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@Target({ElementType.METHOD, ElementType.ANNOTATION_TYPE})
/* loaded from: classes-dex2jar.jar:androidx/databinding/InverseBindingAdapter.class */
public @interface InverseBindingAdapter {
    String attribute();

    String event() default "";
}
