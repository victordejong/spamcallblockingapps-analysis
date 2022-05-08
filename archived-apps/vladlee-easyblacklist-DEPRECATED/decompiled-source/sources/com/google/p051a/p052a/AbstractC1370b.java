package com.google.p051a.p052a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: com.google.a.a.b */
/* loaded from: classes-dex2jar.jar:com/google/a/a/b.class */
public @interface AbstractC1370b {
    /* renamed from: a */
    Class<?> m6361a();

    /* renamed from: b */
    boolean m6360b() default true;
}
