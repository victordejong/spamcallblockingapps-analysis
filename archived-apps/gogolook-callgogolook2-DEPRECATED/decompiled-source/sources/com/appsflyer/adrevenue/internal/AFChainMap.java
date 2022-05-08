package com.appsflyer.adrevenue.internal;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/internal/AFChainMap.class */
public class AFChainMap<K, V> extends HashMap<K, V> {
    public AFChainMap<K, V> place(K k, V v) {
        put(k, v);
        return this;
    }
}
