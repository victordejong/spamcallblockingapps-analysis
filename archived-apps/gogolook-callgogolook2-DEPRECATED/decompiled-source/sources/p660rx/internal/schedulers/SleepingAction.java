package p660rx.internal.schedulers;

import p660rx.Scheduler;
import p660rx.exceptions.Exceptions;
import p660rx.functions.Action0;
/* renamed from: rx.internal.schedulers.SleepingAction */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/SleepingAction.class */
public class SleepingAction implements Action0 {
    public final long execTime;
    public final Scheduler.Worker innerScheduler;
    public final Action0 underlying;

    public SleepingAction(Action0 action0, Scheduler.Worker worker, long j) {
        this.underlying = action0;
        this.innerScheduler = worker;
        this.execTime = j;
    }

    @Override // p660rx.functions.Action0
    public void call() {
        if (!this.innerScheduler.isUnsubscribed()) {
            long now = this.execTime - this.innerScheduler.now();
            if (now > 0) {
                try {
                    Thread.sleep(now);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    Exceptions.propagate(e);
                }
            }
            if (!this.innerScheduler.isUnsubscribed()) {
                this.underlying.call();
            }
        }
    }
}
