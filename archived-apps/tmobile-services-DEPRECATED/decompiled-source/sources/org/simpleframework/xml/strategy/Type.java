package org.simpleframework.xml.strategy;

import java.lang.annotation.Annotation;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/strategy/Type.class */
public interface Type {
    <T extends Annotation> T getAnnotation(Class<T> cls);

    Class getType();

    String toString();
}
