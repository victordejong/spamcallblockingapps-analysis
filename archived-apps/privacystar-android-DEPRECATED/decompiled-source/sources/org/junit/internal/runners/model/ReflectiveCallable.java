package org.junit.internal.runners.model;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/model/ReflectiveCallable.class */
public abstract class ReflectiveCallable {
    public Object run() throws Throwable {
        try {
            return runReflectiveCall();
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        }
    }

    protected abstract Object runReflectiveCall() throws Throwable;
}
