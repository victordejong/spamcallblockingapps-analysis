package androidx.annotation.experimental;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:androidx/annotation/experimental/Experimental.class */
public @interface Experimental {

    /* loaded from: classes-dex2jar.jar:androidx/annotation/experimental/Experimental$Level.class */
    public enum Level {
        WARNING,
        ERROR
    }
}
