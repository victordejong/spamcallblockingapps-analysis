package com.facebook.stetho.json.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/json/annotation/JsonProperty.class */
public @interface JsonProperty {
    boolean required() default false;
}
