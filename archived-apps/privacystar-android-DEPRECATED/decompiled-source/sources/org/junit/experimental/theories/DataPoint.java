package org.junit.experimental.theories;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:org/junit/experimental/theories/DataPoint.class */
public @interface DataPoint {
    Class<? extends Throwable>[] ignoredExceptions() default {};

    String[] value() default {};
}
