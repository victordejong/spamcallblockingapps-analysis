package io.reactivex.internal.util;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/ExceptionHelper.class */
public final class ExceptionHelper {

    /* renamed from: a */
    public static final Throwable f38570a = new Termination();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/ExceptionHelper$Termination.class */
    public static final class Termination extends Throwable {
        public static final long serialVersionUID = -4649703670690200604L;

        public Termination() {
            super("No further exceptions");
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    /* renamed from: a */
    public static <E extends Throwable> Exception m225a(Throwable th) throws Throwable {
        if (th instanceof Exception) {
            return (Exception) th;
        }
        throw th;
    }

    /* renamed from: a */
    public static <T> Throwable m224a(AtomicReference<Throwable> atomicReference) {
        Throwable th = atomicReference.get();
        Throwable th2 = f38570a;
        Throwable th3 = th;
        if (th != th2) {
            th3 = atomicReference.getAndSet(th2);
        }
        return th3;
    }

    /* renamed from: a */
    public static <T> boolean m223a(AtomicReference<Throwable> atomicReference, Throwable th) {
        Throwable th2;
        do {
            th2 = atomicReference.get();
            if (th2 == f38570a) {
                return false;
            }
        } while (!atomicReference.compareAndSet(th2, th2 == null ? th : new CompositeException(th2, th)));
        return true;
    }

    /* renamed from: b */
    public static RuntimeException m222b(Throwable th) {
        if (!(th instanceof Error)) {
            return th instanceof RuntimeException ? (RuntimeException) th : new RuntimeException(th);
        }
        throw ((Error) th);
    }
}
