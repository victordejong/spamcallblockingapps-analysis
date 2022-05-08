package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.LambdaObserver;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.BlockingIgnoringReceiver;
import io.reactivex.internal.util.ExceptionHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBlockingSubscribe.class */
public final class ObservableBlockingSubscribe {
    private ObservableBlockingSubscribe() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void subscribe(ObservableSource<? extends T> observableSource) {
        BlockingIgnoringReceiver blockingIgnoringReceiver = new BlockingIgnoringReceiver();
        LambdaObserver lambdaObserver = new LambdaObserver(Functions.emptyConsumer(), blockingIgnoringReceiver, blockingIgnoringReceiver, Functions.emptyConsumer());
        observableSource.subscribe(lambdaObserver);
        BlockingHelper.awaitForComplete(blockingIgnoringReceiver, lambdaObserver);
        Throwable th = blockingIgnoringReceiver.error;
        if (th != null) {
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> void subscribe(io.reactivex.ObservableSource<? extends T> r4, io.reactivex.Observer<? super T> r5) {
        /*
            java.util.concurrent.LinkedBlockingQueue r0 = new java.util.concurrent.LinkedBlockingQueue
            r1 = r0
            r1.<init>()
            r6 = r0
            io.reactivex.internal.observers.BlockingObserver r0 = new io.reactivex.internal.observers.BlockingObserver
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r7 = r0
            r0 = r5
            r1 = r7
            r0.onSubscribe(r1)
            r0 = r4
            r1 = r7
            r0.subscribe(r1)
        L_0x001f:
            r0 = r7
            boolean r0 = r0.isDisposed()
            if (r0 == 0) goto L_0x0029
            goto L_0x0069
        L_0x0029:
            r0 = r6
            java.lang.Object r0 = r0.poll()
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0052
            r0 = r6
            java.lang.Object r0 = r0.take()     // Catch: InterruptedException -> 0x0045
            r9 = r0
            goto L_0x0052
        L_0x0045:
            r4 = move-exception
            r0 = r7
            r0.dispose()
            r0 = r5
            r1 = r4
            r0.onError(r1)
            return
        L_0x0052:
            r0 = r7
            boolean r0 = r0.isDisposed()
            if (r0 != 0) goto L_0x0069
            r0 = r4
            java.lang.Object r1 = io.reactivex.internal.observers.BlockingObserver.TERMINATED
            if (r0 == r1) goto L_0x0069
            r0 = r9
            r1 = r5
            boolean r0 = io.reactivex.internal.util.NotificationLite.acceptFull(r0, r1)
            if (r0 == 0) goto L_0x001f
        L_0x0069:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableBlockingSubscribe.subscribe(io.reactivex.ObservableSource, io.reactivex.Observer):void");
    }

    public static <T> void subscribe(ObservableSource<? extends T> observableSource, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        ObjectHelper.requireNonNull(consumer, "onNext is null");
        ObjectHelper.requireNonNull(consumer2, "onError is null");
        ObjectHelper.requireNonNull(action, "onComplete is null");
        subscribe(observableSource, new LambdaObserver(consumer, consumer2, action, Functions.emptyConsumer()));
    }
}
