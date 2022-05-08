package androidx.databinding;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE})
/* loaded from: classes-dex2jar.jar:androidx/databinding/InverseBindingMethod.class */
public @interface InverseBindingMethod {
    String attribute();

    String event() default "";

    String method() default "";

    Class type();
}
