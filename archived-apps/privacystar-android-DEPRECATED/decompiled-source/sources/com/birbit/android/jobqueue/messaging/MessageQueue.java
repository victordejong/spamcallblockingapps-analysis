package com.birbit.android.jobqueue.messaging;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/MessageQueue.class */
public interface MessageQueue {
    void cancelMessages(MessagePredicate messagePredicate);

    void clear();

    void consume(MessageQueueConsumer messageQueueConsumer);

    void post(Message message);

    void postAt(Message message, long j);

    void stop();
}
