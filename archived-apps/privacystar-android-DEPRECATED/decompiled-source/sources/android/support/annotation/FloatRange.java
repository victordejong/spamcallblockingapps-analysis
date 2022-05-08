package android.support.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD, ElementType.PARAMETER, ElementType.FIELD, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:android/support/annotation/FloatRange.class */
public @interface FloatRange {
    double from() default Double.NEGATIVE_INFINITY;

    boolean fromInclusive() default true;

    /* renamed from: to */
    double m429to() default Double.POSITIVE_INFINITY;

    boolean toInclusive() default true;
}
