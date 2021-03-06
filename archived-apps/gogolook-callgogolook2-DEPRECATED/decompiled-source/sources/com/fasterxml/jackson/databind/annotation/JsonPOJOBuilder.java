package com.fasterxml.jackson.databind.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/annotation/JsonPOJOBuilder.class */
public @interface JsonPOJOBuilder {

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value.class */
    public static class Value {
        public final String buildMethodName;
        public final String withPrefix;

        public Value(JsonPOJOBuilder jsonPOJOBuilder) {
            this.buildMethodName = jsonPOJOBuilder.buildMethodName();
            this.withPrefix = jsonPOJOBuilder.withPrefix();
        }
    }

    String buildMethodName() default "build";

    String withPrefix() default "with";
}
