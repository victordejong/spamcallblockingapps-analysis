package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.iid.WakeLockHolder;
import com.google.firebase.iid.WithinAppServiceBinder;
import java.util.concurrent.ExecutorService;
@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/EnhancedIntentService.class */
public abstract class EnhancedIntentService extends Service {
    private Binder binder;
    private int lastStartId;
    @VisibleForTesting
    final ExecutorService executor = FcmExecutors.newIntentHandleExecutor();
    private final Object lock = new Object();
    private int runningTasks = 0;

    private void finishTask(Intent intent) {
        if (intent != null) {
            WakeLockHolder.completeWakefulIntent(intent);
        }
        synchronized (this.lock) {
            int i = this.runningTasks - 1;
            this.runningTasks = i;
            if (i == 0) {
                stopSelfResultHook(this.lastStartId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public Task<Void> processIntent(final Intent intent) {
        if (handleIntentOnMainThread(intent)) {
            return Tasks.m10820e(null);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.executor.execute(new Runnable(this, intent, taskCompletionSource) { // from class: com.google.firebase.messaging.EnhancedIntentService$$Lambda$0
            private final EnhancedIntentService arg$1;
            private final Intent arg$2;
            private final TaskCompletionSource arg$3;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = intent;
                this.arg$3 = taskCompletionSource;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.arg$1.lambda$processIntent$0$EnhancedIntentService(this.arg$2, this.arg$3);
            }
        });
        return taskCompletionSource.m10830a();
    }

    protected Intent getStartCommandIntent(Intent intent) {
        return intent;
    }

    public abstract void handleIntent(Intent intent);

    public boolean handleIntentOnMainThread(Intent intent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$onStartCommand$1$EnhancedIntentService(Intent intent, Task task) {
        finishTask(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$processIntent$0$EnhancedIntentService(Intent intent, TaskCompletionSource taskCompletionSource) {
        try {
            handleIntent(intent);
        } finally {
            taskCompletionSource.m10828c(false);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        Binder binder;
        synchronized (this) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "Service received bind request");
            }
            if (this.binder == null) {
                this.binder = new WithinAppServiceBinder(new WithinAppServiceBinder.IntentHandler() { // from class: com.google.firebase.messaging.EnhancedIntentService.1
                    @Override // com.google.firebase.iid.WithinAppServiceBinder.IntentHandler
                    @KeepForSdk
                    public Task<Void> handle(Intent intent2) {
                        return EnhancedIntentService.this.processIntent(intent2);
                    }
                });
            }
            binder = this.binder;
        }
        return binder;
    }

    @Override // android.app.Service
    @CallSuper
    public void onDestroy() {
        this.executor.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i, int i2) {
        synchronized (this.lock) {
            this.lastStartId = i2;
            this.runningTasks++;
        }
        Intent startCommandIntent = getStartCommandIntent(intent);
        if (startCommandIntent == null) {
            finishTask(intent);
            return 2;
        }
        Task<Void> processIntent = processIntent(startCommandIntent);
        if (processIntent.mo10783m()) {
            finishTask(intent);
            return 2;
        }
        processIntent.mo10793c(EnhancedIntentService$$Lambda$1.$instance, new OnCompleteListener(this, intent) { // from class: com.google.firebase.messaging.EnhancedIntentService$$Lambda$2
            private final EnhancedIntentService arg$1;
            private final Intent arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = intent;
            }

            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.arg$1.lambda$onStartCommand$1$EnhancedIntentService(this.arg$2, task);
            }
        });
        return 3;
    }

    boolean stopSelfResultHook(int i) {
        return stopSelfResult(i);
    }
}
