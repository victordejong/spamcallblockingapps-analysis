package android.arch.persistence.room;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:android/arch/persistence/room/Entity.class */
public @interface Entity {
    ForeignKey[] foreignKeys() default {};

    Index[] indices() default {};

    boolean inheritSuperIndices() default false;

    String[] primaryKeys() default {};

    String tableName() default "";
}
