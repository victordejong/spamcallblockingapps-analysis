package io.reactivex.internal.util;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/AtomicThrowable.class */
public final class AtomicThrowable extends AtomicReference<Throwable> {
    public static final long serialVersionUID = 3949248817947090603L;

    public boolean addThrowable(Throwable th) {
        return ExceptionHelper.m223a(this, th);
    }

    public boolean isTerminated() {
        return get() == ExceptionHelper.f38570a;
    }

    public Throwable terminate() {
        return ExceptionHelper.m224a(this);
    }
}
