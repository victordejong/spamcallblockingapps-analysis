package org.simpleframework.xml.transform;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/Transform.class */
public interface Transform<T> {
    T read(String str) throws Exception;

    String write(T t) throws Exception;
}
