package org.simpleframework.xml;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/Default.class */
public @interface Default {
    boolean required() default true;

    DefaultType value() default DefaultType.FIELD;
}
