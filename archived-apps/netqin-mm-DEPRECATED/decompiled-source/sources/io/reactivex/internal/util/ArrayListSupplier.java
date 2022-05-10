package io.reactivex.internal.util;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p530d.p541c.p542a0.AbstractC9645h;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/ArrayListSupplier.class */
public enum ArrayListSupplier implements Callable<List<Object>>, AbstractC9645h<Object, List<Object>> {
    INSTANCE;

    public static <T> Callable<List<T>> asCallable() {
        return INSTANCE;
    }

    public static <T, O> AbstractC9645h<O, List<T>> asFunction() {
        return INSTANCE;
    }

    @Override // p530d.p541c.p542a0.AbstractC9645h
    public List<Object> apply(Object obj) throws Exception {
        return new ArrayList();
    }

    @Override // java.util.concurrent.Callable
    public List<Object> call() throws Exception {
        return new ArrayList();
    }
}
