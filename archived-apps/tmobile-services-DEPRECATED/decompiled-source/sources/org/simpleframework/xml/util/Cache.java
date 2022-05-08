package org.simpleframework.xml.util;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/util/Cache.class */
public interface Cache<T> {
    void cache(Object obj, T t);

    boolean contains(Object obj);

    T fetch(Object obj);

    boolean isEmpty();

    T take(Object obj);
}
