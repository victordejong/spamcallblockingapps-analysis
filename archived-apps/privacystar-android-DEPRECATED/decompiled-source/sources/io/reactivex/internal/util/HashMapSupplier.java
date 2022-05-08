package io.reactivex.internal.util;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/HashMapSupplier.class */
public enum HashMapSupplier implements Callable<Map<Object, Object>> {
    INSTANCE;

    public static <K, V> Callable<Map<K, V>> asCallable() {
        return INSTANCE;
    }

    @Override // java.util.concurrent.Callable
    public Map<Object, Object> call() throws Exception {
        return new HashMap();
    }
}
