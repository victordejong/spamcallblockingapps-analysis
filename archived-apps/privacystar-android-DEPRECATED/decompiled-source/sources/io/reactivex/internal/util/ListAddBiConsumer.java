package io.reactivex.internal.util;

import io.reactivex.functions.BiFunction;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/ListAddBiConsumer.class */
public enum ListAddBiConsumer implements BiFunction<List, Object, List> {
    INSTANCE;

    public static <T> BiFunction<List<T>, T, List<T>> instance() {
        return INSTANCE;
    }

    public List apply(List list, Object obj) throws Exception {
        list.add(obj);
        return list;
    }
}
