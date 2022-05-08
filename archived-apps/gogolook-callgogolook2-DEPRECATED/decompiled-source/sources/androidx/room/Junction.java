package androidx.room;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:androidx/room/Junction.class */
public @interface Junction {
    String entityColumn() default "";

    String parentColumn() default "";

    Class<?> value();
}
