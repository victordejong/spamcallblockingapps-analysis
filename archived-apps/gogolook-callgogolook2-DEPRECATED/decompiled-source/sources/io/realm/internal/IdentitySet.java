package io.realm.internal;

import java.util.IdentityHashMap;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/IdentitySet.class */
public class IdentitySet<K> extends IdentityHashMap<K, Integer> {
    public static final Integer PLACE_HOLDER = 0;

    public void add(K k) {
        put(k, PLACE_HOLDER);
    }
}
