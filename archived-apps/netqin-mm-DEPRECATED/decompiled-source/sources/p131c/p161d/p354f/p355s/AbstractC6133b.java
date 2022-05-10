package p131c.p161d.p354f.p355s;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: c.d.f.s.b */
/* loaded from: classes-dex2jar.jar:c/d/f/s/b.class */
public @interface AbstractC6133b {
    boolean nullSafe() default true;

    Class<?> value();
}
