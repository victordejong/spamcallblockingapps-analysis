package p131c.p161d.p354f.p355s;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD, ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: c.d.f.s.c */
/* loaded from: classes-dex2jar.jar:c/d/f/s/c.class */
public @interface AbstractC6134c {
    String[] alternate() default {};

    String value();
}
