package io.reactivex.internal.util;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.schedulers.NonBlockingThread;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/BlockingHelper.class */
public final class BlockingHelper {
    private BlockingHelper() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: a */
    public static void m3448a(CountDownLatch countDownLatch, Disposable disposable) {
        if (countDownLatch.getCount() != 0) {
            try {
                m3447b();
                countDownLatch.await();
            } catch (InterruptedException e) {
                disposable.dispose();
                Thread.currentThread().interrupt();
                throw new IllegalStateException("Interrupted while waiting for subscription to complete.", e);
            }
        }
    }

    /* renamed from: b */
    public static void m3447b() {
        if (!RxJavaPlugins.m3364j()) {
            return;
        }
        if ((Thread.currentThread() instanceof NonBlockingThread) || RxJavaPlugins.m3356r()) {
            throw new IllegalStateException("Attempt to block on a Scheduler " + Thread.currentThread().getName() + " that doesn't support blocking operators as they may lead to deadlock");
        }
    }
}
