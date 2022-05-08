package io.reactivex.android.plugins;

import io.reactivex.Scheduler;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/android/plugins/RxAndroidPlugins.class */
public final class RxAndroidPlugins {

    /* renamed from: a */
    private static volatile Function<Callable<Scheduler>, Scheduler> f15105a;

    /* renamed from: b */
    private static volatile Function<Scheduler, Scheduler> f15106b;

    private RxAndroidPlugins() {
        throw new AssertionError("No instances.");
    }

    /* renamed from: a */
    static <T, R> R m4455a(Function<T, R> function, T t) {
        try {
            return function.apply(t);
        } catch (Throwable th) {
            Exceptions.m4429a(th);
            throw null;
        }
    }

    /* renamed from: b */
    static Scheduler m4454b(Function<Callable<Scheduler>, Scheduler> function, Callable<Scheduler> callable) {
        Scheduler scheduler = (Scheduler) m4455a(function, callable);
        if (scheduler != null) {
            return scheduler;
        }
        throw new NullPointerException("Scheduler Callable returned null");
    }

    /* renamed from: c */
    static Scheduler m4453c(Callable<Scheduler> callable) {
        try {
            Scheduler call = callable.call();
            if (call != null) {
                return call;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            Exceptions.m4429a(th);
            throw null;
        }
    }

    /* renamed from: d */
    public static Scheduler m4452d(Callable<Scheduler> callable) {
        if (callable != null) {
            Function<Callable<Scheduler>, Scheduler> function = f15105a;
            return function == null ? m4453c(callable) : m4454b(function, callable);
        }
        throw new NullPointerException("scheduler == null");
    }

    /* renamed from: e */
    public static Scheduler m4451e(Scheduler scheduler) {
        if (scheduler != null) {
            Function<Scheduler, Scheduler> function = f15106b;
            return function == null ? scheduler : (Scheduler) m4455a(function, scheduler);
        }
        throw new NullPointerException("scheduler == null");
    }
}
