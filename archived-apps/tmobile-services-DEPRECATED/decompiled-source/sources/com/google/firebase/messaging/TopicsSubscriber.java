package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.GmsRpc;
import com.google.firebase.iid.InstanceIdResult;
import com.google.firebase.iid.Metadata;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/TopicsSubscriber.class */
public class TopicsSubscriber {
    private static final long MAX_DELAY_SEC = TimeUnit.HOURS.toSeconds(8);
    private final Context context;
    private final FirebaseInstanceId iid;
    private final Metadata metadata;
    private final GmsRpc rpc;
    private final TopicsStore store;
    private final ScheduledExecutorService syncExecutor;
    @GuardedBy
    private final Map<String, ArrayDeque<TaskCompletionSource<Void>>> pendingOperations = new ArrayMap();
    @GuardedBy
    private boolean syncScheduledOrRunning = false;

    private TopicsSubscriber(FirebaseInstanceId firebaseInstanceId, Metadata metadata, TopicsStore topicsStore, GmsRpc gmsRpc, Context context, @NonNull ScheduledExecutorService scheduledExecutorService) {
        this.iid = firebaseInstanceId;
        this.metadata = metadata;
        this.store = topicsStore;
        this.rpc = gmsRpc;
        this.context = context;
        this.syncExecutor = scheduledExecutorService;
    }

    private void addToPendingOperations(TopicOperation topicOperation, TaskCompletionSource<Void> taskCompletionSource) {
        ArrayDeque<TaskCompletionSource<Void>> arrayDeque;
        synchronized (this.pendingOperations) {
            String serialize = topicOperation.serialize();
            if (this.pendingOperations.containsKey(serialize)) {
                arrayDeque = this.pendingOperations.get(serialize);
            } else {
                arrayDeque = new ArrayDeque<>();
                this.pendingOperations.put(serialize, arrayDeque);
            }
            arrayDeque.add(taskCompletionSource);
        }
    }

    @WorkerThread
    private static <T> T awaitTask(Task<T> task) throws IOException {
        Throwable e;
        try {
            return (T) Tasks.m10823b(task, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            throw new IOException(GmsRpc.ERROR_SERVICE_NOT_AVAILABLE, e);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            } else if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else {
                throw new IOException(e3);
            }
        } catch (TimeoutException e4) {
            e = e4;
            throw new IOException(GmsRpc.ERROR_SERVICE_NOT_AVAILABLE, e);
        }
    }

    @WorkerThread
    private void blockingSubscribeToTopic(String str) throws IOException {
        InstanceIdResult instanceIdResult = (InstanceIdResult) awaitTask(this.iid.getInstanceId());
        awaitTask(this.rpc.subscribeToTopic(instanceIdResult.getId(), instanceIdResult.getToken(), str));
    }

    @WorkerThread
    private void blockingUnsubscribeFromTopic(String str) throws IOException {
        InstanceIdResult instanceIdResult = (InstanceIdResult) awaitTask(this.iid.getInstanceId());
        awaitTask(this.rpc.unsubscribeFromTopic(instanceIdResult.getId(), instanceIdResult.getToken(), str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Task<TopicsSubscriber> createInstance(FirebaseApp firebaseApp, FirebaseInstanceId firebaseInstanceId, Metadata metadata, UserAgentPublisher userAgentPublisher, HeartBeatInfo heartBeatInfo, FirebaseInstallationsApi firebaseInstallationsApi, Context context, @NonNull ScheduledExecutorService scheduledExecutorService) {
        return createInstance(firebaseInstanceId, metadata, new GmsRpc(firebaseApp, metadata, userAgentPublisher, heartBeatInfo, firebaseInstallationsApi), context, scheduledExecutorService);
    }

    @VisibleForTesting
    static Task<TopicsSubscriber> createInstance(final FirebaseInstanceId firebaseInstanceId, final Metadata metadata, final GmsRpc gmsRpc, final Context context, @NonNull final ScheduledExecutorService scheduledExecutorService) {
        return Tasks.m10822c(scheduledExecutorService, new Callable(context, scheduledExecutorService, firebaseInstanceId, metadata, gmsRpc) { // from class: com.google.firebase.messaging.TopicsSubscriber$$Lambda$0
            private final Context arg$1;
            private final ScheduledExecutorService arg$2;
            private final FirebaseInstanceId arg$3;
            private final Metadata arg$4;
            private final GmsRpc arg$5;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = context;
                this.arg$2 = scheduledExecutorService;
                this.arg$3 = firebaseInstanceId;
                this.arg$4 = metadata;
                this.arg$5 = gmsRpc;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return TopicsSubscriber.lambda$createInstance$0$TopicsSubscriber(this.arg$1, this.arg$2, this.arg$3, this.arg$4, this.arg$5);
            }
        });
    }

    static boolean isDebugLogEnabled() {
        if (!Log.isLoggable(Constants.TAG, 3)) {
            return Build.VERSION.SDK_INT == 23 && Log.isLoggable(Constants.TAG, 3);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ TopicsSubscriber lambda$createInstance$0$TopicsSubscriber(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseInstanceId firebaseInstanceId, Metadata metadata, GmsRpc gmsRpc) throws Exception {
        return new TopicsSubscriber(firebaseInstanceId, metadata, TopicsStore.getInstance(context, scheduledExecutorService), gmsRpc, context, scheduledExecutorService);
    }

    private void markCompletePendingOperation(TopicOperation topicOperation) {
        synchronized (this.pendingOperations) {
            String serialize = topicOperation.serialize();
            if (this.pendingOperations.containsKey(serialize)) {
                ArrayDeque<TaskCompletionSource<Void>> arrayDeque = this.pendingOperations.get(serialize);
                TaskCompletionSource<Void> poll = arrayDeque.poll();
                if (poll != null) {
                    poll.m10828c(null);
                }
                if (arrayDeque.isEmpty()) {
                    this.pendingOperations.remove(serialize);
                }
            }
        }
    }

    private void startSync() {
        if (!isSyncScheduledOrRunning()) {
            syncWithDelaySecondsInternal(0L);
        }
    }

    boolean hasPendingOperation() {
        return this.store.getNextTopicOperation() != null;
    }

    boolean isSyncScheduledOrRunning() {
        boolean z;
        synchronized (this) {
            z = this.syncScheduledOrRunning;
        }
        return z;
    }

    @WorkerThread
    boolean performTopicOperation(TopicOperation topicOperation) throws IOException {
        try {
            String operation = topicOperation.getOperation();
            char c = 65535;
            int hashCode = operation.hashCode();
            if (hashCode != 83) {
                if (hashCode == 85 && operation.equals("U")) {
                    c = 1;
                }
            } else if (operation.equals("S")) {
                c = 0;
            }
            if (c == 0) {
                blockingSubscribeToTopic(topicOperation.getTopic());
                if (!isDebugLogEnabled()) {
                    return true;
                }
                String topic = topicOperation.getTopic();
                StringBuilder sb = new StringBuilder(String.valueOf(topic).length() + 31);
                sb.append("Subscribe to topic: ");
                sb.append(topic);
                sb.append(" succeeded.");
                Log.d(Constants.TAG, sb.toString());
                return true;
            } else if (c == 1) {
                blockingUnsubscribeFromTopic(topicOperation.getTopic());
                if (!isDebugLogEnabled()) {
                    return true;
                }
                String topic2 = topicOperation.getTopic();
                StringBuilder sb2 = new StringBuilder(String.valueOf(topic2).length() + 35);
                sb2.append("Unsubscribe from topic: ");
                sb2.append(topic2);
                sb2.append(" succeeded.");
                Log.d(Constants.TAG, sb2.toString());
                return true;
            } else if (!isDebugLogEnabled()) {
                return true;
            } else {
                String valueOf = String.valueOf(topicOperation);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 24);
                sb3.append("Unknown topic operation");
                sb3.append(valueOf);
                sb3.append(".");
                Log.d(Constants.TAG, sb3.toString());
                return true;
            }
        } catch (IOException e) {
            if (GmsRpc.ERROR_SERVICE_NOT_AVAILABLE.equals(e.getMessage()) || GmsRpc.ERROR_INTERNAL_SERVER_ERROR.equals(e.getMessage())) {
                String message = e.getMessage();
                StringBuilder sb4 = new StringBuilder(String.valueOf(message).length() + 53);
                sb4.append("Topic operation failed: ");
                sb4.append(message);
                sb4.append(". Will retry Topic operation.");
                Log.e(Constants.TAG, sb4.toString());
                return false;
            } else if (e.getMessage() == null) {
                Log.e(Constants.TAG, "Topic operation failed without exception message. Will retry Topic operation.");
                return false;
            } else {
                throw e;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void scheduleSyncTaskWithDelaySeconds(Runnable runnable, long j) {
        this.syncExecutor.schedule(runnable, j, TimeUnit.SECONDS);
    }

    @VisibleForTesting
    Task<Void> scheduleTopicOperation(TopicOperation topicOperation) {
        this.store.addTopicOperation(topicOperation);
        TaskCompletionSource<Void> taskCompletionSource = new TaskCompletionSource<>();
        addToPendingOperations(topicOperation, taskCompletionSource);
        return taskCompletionSource.m10830a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSyncScheduledOrRunning(boolean z) {
        synchronized (this) {
            this.syncScheduledOrRunning = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startTopicsSyncIfNecessary() {
        if (hasPendingOperation()) {
            startSync();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<Void> subscribeToTopic(String str) {
        Task<Void> scheduleTopicOperation = scheduleTopicOperation(TopicOperation.subscribe(str));
        startTopicsSyncIfNecessary();
        return scheduleTopicOperation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (isDebugLogEnabled() == false) goto L_0x001d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
        android.util.Log.d(com.google.firebase.messaging.Constants.TAG, "topic sync succeeded");
     */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean syncTopics() throws java.io.IOException {
        /*
            r3 = this;
        L_0x0000:
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            com.google.firebase.messaging.TopicsStore r0 = r0.store     // Catch: all -> 0x003e
            com.google.firebase.messaging.TopicOperation r0 = r0.getNextTopicOperation()     // Catch: all -> 0x003e
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0021
            boolean r0 = isDebugLogEnabled()     // Catch: all -> 0x003e
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = "FirebaseMessaging"
            java.lang.String r1 = "topic sync succeeded"
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x003e
        L_0x001d:
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x003e
            r0 = 1
            return r0
        L_0x0021:
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x003e
            r0 = r3
            r1 = r4
            boolean r0 = r0.performTopicOperation(r1)
            if (r0 != 0) goto L_0x002d
            r0 = 0
            return r0
        L_0x002d:
            r0 = r3
            com.google.firebase.messaging.TopicsStore r0 = r0.store
            r1 = r4
            boolean r0 = r0.removeTopicOperation(r1)
            r0 = r3
            r1 = r4
            r0.markCompletePendingOperation(r1)
            goto L_0x0000
        L_0x003e:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x003e
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.TopicsSubscriber.syncTopics():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void syncWithDelaySecondsInternal(long j) {
        scheduleSyncTaskWithDelaySeconds(new TopicsSyncTask(this, this.context, this.metadata, Math.min(Math.max(30L, j << 1), MAX_DELAY_SEC)), j);
        setSyncScheduledOrRunning(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<Void> unsubscribeFromTopic(String str) {
        Task<Void> scheduleTopicOperation = scheduleTopicOperation(TopicOperation.unsubscribe(str));
        startTopicsSyncIfNecessary();
        return scheduleTopicOperation;
    }
}
