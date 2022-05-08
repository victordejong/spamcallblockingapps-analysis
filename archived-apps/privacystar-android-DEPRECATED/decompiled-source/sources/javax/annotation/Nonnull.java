package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.TypeQualifier;
import javax.annotation.meta.TypeQualifierValidator;
import javax.annotation.meta.When;
@TypeQualifier
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:javax/annotation/Nonnull.class */
public @interface Nonnull {

    /* loaded from: classes2-dex2jar.jar:javax/annotation/Nonnull$Checker.class */
    public static class Checker implements TypeQualifierValidator<Nonnull> {
        public When forConstantValue(Nonnull nonnull, Object obj) {
            return obj == null ? When.NEVER : When.ALWAYS;
        }
    }

    When when() default When.ALWAYS;
}
