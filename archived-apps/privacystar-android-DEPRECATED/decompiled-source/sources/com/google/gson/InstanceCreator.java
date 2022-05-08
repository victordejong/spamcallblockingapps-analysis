package com.google.gson;

import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/google/gson/InstanceCreator.class */
public interface InstanceCreator<T> {
    T createInstance(Type type);
}
