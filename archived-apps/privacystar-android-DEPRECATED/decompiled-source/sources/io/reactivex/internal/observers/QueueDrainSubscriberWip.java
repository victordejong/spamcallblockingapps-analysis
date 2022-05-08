package io.reactivex.internal.observers;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/QueueDrainSubscriberWip.class */
class QueueDrainSubscriberWip extends QueueDrainSubscriberPad0 {
    final AtomicInteger wip = new AtomicInteger();
}
