package com.aotter.net.gson;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/ExclusionStrategy.class */
public interface ExclusionStrategy {
    boolean shouldSkipClass(Class<?> cls);

    boolean shouldSkipField(FieldAttributes fieldAttributes);
}
