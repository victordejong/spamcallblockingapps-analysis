package com.birbit.android.jobqueue;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.CancelResult;
import com.birbit.android.jobqueue.callback.JobManagerCallback;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.MessageFactory;
import com.birbit.android.jobqueue.messaging.MessageQueueConsumer;
import com.birbit.android.jobqueue.messaging.SafeMessageQueue;
import com.birbit.android.jobqueue.messaging.Type;
import com.birbit.android.jobqueue.messaging.message.CallbackMessage;
import com.birbit.android.jobqueue.messaging.message.CancelResultMessage;
import com.birbit.android.jobqueue.messaging.message.CommandMessage;
import com.birbit.android.jobqueue.messaging.message.PublicQueryMessage;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/CallbackManager.class */
public class CallbackManager {
    private final MessageFactory factory;
    final SafeMessageQueue messageQueue;
    private final Timer timer;
    private final AtomicInteger callbacksSize = new AtomicInteger(0);
    private final AtomicBoolean started = new AtomicBoolean(false);
    private final CopyOnWriteArrayList<JobManagerCallback> callbacks = new CopyOnWriteArrayList<>();

    public CallbackManager(MessageFactory messageFactory, Timer timer) {
        this.timer = timer;
        this.messageQueue = new SafeMessageQueue(timer, messageFactory, "jq_callback");
        this.factory = messageFactory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deliverCancelResult(@NonNull CancelResultMessage cancelResultMessage) {
        cancelResultMessage.getCallback().onCancelled(cancelResultMessage.getResult());
        startIfNeeded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deliverMessage(@NonNull CallbackMessage callbackMessage) {
        switch (callbackMessage.getWhat()) {
            case 1:
                notifyOnAddedListeners(callbackMessage.getJob());
                return;
            case 2:
                notifyOnRunListeners(callbackMessage.getJob(), callbackMessage.getResultCode());
                return;
            case 3:
                notifyOnCancelListeners(callbackMessage.getJob(), callbackMessage.isByUserRequest(), callbackMessage.getThrowable());
                return;
            case 4:
                notifyOnDoneListeners(callbackMessage.getJob());
                return;
            case 5:
                notifyAfterRunListeners(callbackMessage.getJob(), callbackMessage.getResultCode());
                return;
            default:
                return;
        }
    }

    private boolean hasAnyCallbacks() {
        return this.callbacksSize.get() > 0;
    }

    private void notifyAfterRunListeners(@NonNull Job job, int i) {
        Iterator<JobManagerCallback> it = this.callbacks.iterator();
        while (it.hasNext()) {
            it.next().onAfterJobRun(job, i);
        }
    }

    private void notifyOnAddedListeners(@NonNull Job job) {
        Iterator<JobManagerCallback> it = this.callbacks.iterator();
        while (it.hasNext()) {
            it.next().onJobAdded(job);
        }
    }

    private void notifyOnCancelListeners(@NonNull Job job, boolean z, @Nullable Throwable th) {
        Iterator<JobManagerCallback> it = this.callbacks.iterator();
        while (it.hasNext()) {
            it.next().onJobCancelled(job, z, th);
        }
    }

    private void notifyOnDoneListeners(@NonNull Job job) {
        Iterator<JobManagerCallback> it = this.callbacks.iterator();
        while (it.hasNext()) {
            it.next().onDone(job);
        }
    }

    private void notifyOnRunListeners(@NonNull Job job, int i) {
        Iterator<JobManagerCallback> it = this.callbacks.iterator();
        while (it.hasNext()) {
            it.next().onJobRun(job, i);
        }
    }

    private void start() {
        new Thread(new Runnable() { // from class: com.birbit.android.jobqueue.CallbackManager.2
            @Override // java.lang.Runnable
            public void run() {
                CallbackManager.this.messageQueue.consume(new MessageQueueConsumer() { // from class: com.birbit.android.jobqueue.CallbackManager.2.1
                    long lastDelivery = Long.MIN_VALUE;

                    @Override // com.birbit.android.jobqueue.messaging.MessageQueueConsumer
                    public void handleMessage(Message message) {
                        if (message.type == Type.CALLBACK) {
                            CallbackManager.this.deliverMessage((CallbackMessage) message);
                            this.lastDelivery = CallbackManager.this.timer.nanoTime();
                        } else if (message.type == Type.CANCEL_RESULT_CALLBACK) {
                            CallbackManager.this.deliverCancelResult((CancelResultMessage) message);
                            this.lastDelivery = CallbackManager.this.timer.nanoTime();
                        } else if (message.type == Type.COMMAND) {
                            CommandMessage commandMessage = (CommandMessage) message;
                            int what = commandMessage.getWhat();
                            if (what == 1) {
                                CallbackManager.this.messageQueue.stop();
                                CallbackManager.this.started.set(false);
                            } else if (what == 3) {
                                commandMessage.getRunnable().run();
                            }
                        } else if (message.type == Type.PUBLIC_QUERY) {
                            ((PublicQueryMessage) message).getCallback().onResult(0);
                        }
                    }

                    @Override // com.birbit.android.jobqueue.messaging.MessageQueueConsumer
                    public void onIdle() {
                    }

                    @Override // com.birbit.android.jobqueue.messaging.MessageQueueConsumer
                    public void onStart() {
                    }
                });
            }
        }, "job-manager-callbacks").start();
    }

    private void startIfNeeded() {
        if (!this.started.getAndSet(true)) {
            start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addCallback(@NonNull JobManagerCallback jobManagerCallback) {
        this.callbacks.add(jobManagerCallback);
        this.callbacksSize.incrementAndGet();
        startIfNeeded();
    }

    public void destroy() {
        if (this.started.get()) {
            CommandMessage commandMessage = (CommandMessage) this.factory.obtain(CommandMessage.class);
            commandMessage.set(1);
            this.messageQueue.post(commandMessage);
        }
    }

    public void notifyAfterRun(@NonNull Job job, int i) {
        if (hasAnyCallbacks()) {
            CallbackMessage callbackMessage = (CallbackMessage) this.factory.obtain(CallbackMessage.class);
            callbackMessage.set(job, 5, i);
            this.messageQueue.post(callbackMessage);
        }
    }

    public void notifyCancelResult(@NonNull CancelResult cancelResult, @NonNull CancelResult.AsyncCancelCallback asyncCancelCallback) {
        CancelResultMessage cancelResultMessage = (CancelResultMessage) this.factory.obtain(CancelResultMessage.class);
        cancelResultMessage.set(asyncCancelCallback, cancelResult);
        this.messageQueue.post(cancelResultMessage);
        startIfNeeded();
    }

    public void notifyOnAdded(@NonNull Job job) {
        if (hasAnyCallbacks()) {
            CallbackMessage callbackMessage = (CallbackMessage) this.factory.obtain(CallbackMessage.class);
            callbackMessage.set(job, 1);
            this.messageQueue.post(callbackMessage);
        }
    }

    public void notifyOnCancel(@NonNull Job job, boolean z, @Nullable Throwable th) {
        if (hasAnyCallbacks()) {
            CallbackMessage callbackMessage = (CallbackMessage) this.factory.obtain(CallbackMessage.class);
            callbackMessage.set(job, 3, z, th);
            this.messageQueue.post(callbackMessage);
        }
    }

    public void notifyOnDone(@NonNull Job job) {
        if (hasAnyCallbacks()) {
            CallbackMessage callbackMessage = (CallbackMessage) this.factory.obtain(CallbackMessage.class);
            callbackMessage.set(job, 4);
            this.messageQueue.post(callbackMessage);
        }
    }

    public void notifyOnRun(@NonNull Job job, int i) {
        if (hasAnyCallbacks()) {
            CallbackMessage callbackMessage = (CallbackMessage) this.factory.obtain(CallbackMessage.class);
            callbackMessage.set(job, 2, i);
            this.messageQueue.post(callbackMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean removeCallback(@NonNull JobManagerCallback jobManagerCallback) {
        boolean remove = this.callbacks.remove(jobManagerCallback);
        if (remove) {
            this.callbacksSize.decrementAndGet();
        }
        return remove;
    }

    public boolean waitUntilAllMessagesAreConsumed(int i) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        CommandMessage commandMessage = (CommandMessage) this.factory.obtain(CommandMessage.class);
        commandMessage.set(3);
        commandMessage.setRunnable(new Runnable() { // from class: com.birbit.android.jobqueue.CallbackManager.1
            @Override // java.lang.Runnable
            public void run() {
                countDownLatch.countDown();
            }
        });
        this.messageQueue.post(commandMessage);
        try {
            return countDownLatch.await(i, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            return false;
        }
    }
}
