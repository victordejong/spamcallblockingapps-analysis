package com.revenuecat.purchases.common;

import com.revenuecat.purchases.PurchasesError;
import com.revenuecat.purchases.common.HTTPClient;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.r;
import kotlin.w.c.k;
import kotlin.z.c;
import kotlin.z.d;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/Dispatcher.class */
public class Dispatcher {
    private final ExecutorService executorService;

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/Dispatcher$AsyncCall.class */
    public static abstract class AsyncCall implements Runnable {
        public abstract HTTPClient.Result call() throws JSONException, IOException;

        public void onCompletion(HTTPClient.Result result) {
            k.f(result, "result");
        }

        public void onError(PurchasesError purchasesError) {
            k.f(purchasesError, "error");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                onCompletion(call());
            } catch (IOException e) {
                PurchasesError purchasesError = ErrorsKt.toPurchasesError(e);
                LogUtilsKt.errorLog(purchasesError);
                r rVar = r.a;
                onError(purchasesError);
            } catch (SecurityException e2) {
                PurchasesError purchasesError2 = ErrorsKt.toPurchasesError(e2);
                LogUtilsKt.errorLog(purchasesError2);
                r rVar2 = r.a;
                onError(purchasesError2);
            } catch (JSONException e3) {
                PurchasesError purchasesError3 = ErrorsKt.toPurchasesError(e3);
                LogUtilsKt.errorLog(purchasesError3);
                r rVar3 = r.a;
                onError(purchasesError3);
            }
        }
    }

    public Dispatcher(ExecutorService executorService) {
        k.f(executorService, "executorService");
        this.executorService = executorService;
    }

    public static /* synthetic */ void enqueue$default(Dispatcher dispatcher, Runnable runnable, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                z = false;
            }
            dispatcher.enqueue(runnable, z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: enqueue");
    }

    public void close() {
        synchronized (this.executorService) {
            this.executorService.shutdownNow();
        }
    }

    public void enqueue(Runnable runnable, boolean z) {
        k.f(runnable, "command");
        synchronized (this.executorService) {
            if (!this.executorService.isShutdown()) {
                if (!z || !(this.executorService instanceof ScheduledExecutorService)) {
                    this.executorService.execute(runnable);
                } else {
                    ((ScheduledExecutorService) this.executorService).schedule(runnable, d.h(new c(0, 5000), kotlin.y.c.b), TimeUnit.MILLISECONDS);
                }
            }
            r rVar = r.a;
        }
    }

    public boolean isClosed() {
        boolean isShutdown;
        synchronized (this.executorService) {
            isShutdown = this.executorService.isShutdown();
        }
        return isShutdown;
    }
}
