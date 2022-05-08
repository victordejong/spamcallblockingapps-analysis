package io.reactivex.internal.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/NewThreadScheduler.class */
public final class NewThreadScheduler extends Scheduler {

    /* renamed from: h */
    private static final RxThreadFactory f19290h = new RxThreadFactory("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())));

    /* renamed from: g */
    final ThreadFactory f19291g;

    public NewThreadScheduler() {
        this(f19290h);
    }

    public NewThreadScheduler(ThreadFactory threadFactory) {
        this.f19291g = threadFactory;
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: b */
    public Scheduler.Worker mo3232b() {
        return new NewThreadWorker(this.f19291g);
    }
}
