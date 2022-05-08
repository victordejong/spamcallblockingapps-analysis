package com.aotter.net.gson;

import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/InstanceCreator.class */
public interface InstanceCreator<T> {
    T createInstance(Type type);
}
