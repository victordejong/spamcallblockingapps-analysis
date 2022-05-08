package androidx.room;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:androidx/room/Update.class */
public @interface Update {
    Class<?> entity() default Object.class;

    @OnConflictStrategy
    int onConflict() default 3;
}
