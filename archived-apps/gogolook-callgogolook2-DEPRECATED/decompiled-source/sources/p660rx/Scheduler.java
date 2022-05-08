package p660rx;

import java.util.concurrent.TimeUnit;
import p660rx.functions.Action0;
import p660rx.internal.schedulers.SchedulePeriodicHelper;
/* renamed from: rx.Scheduler */
/* loaded from: classes3-dex2jar.jar:rx/Scheduler.class */
public abstract class Scheduler {

    /* renamed from: rx.Scheduler$Worker */
    /* loaded from: classes3-dex2jar.jar:rx/Scheduler$Worker.class */
    public static abstract class Worker implements Subscription {
        public long now() {
            return System.currentTimeMillis();
        }

        public abstract Subscription schedule(Action0 action0);

        public abstract Subscription schedule(Action0 action0, long j, TimeUnit timeUnit);

        public Subscription schedulePeriodically(Action0 action0, long j, long j2, TimeUnit timeUnit) {
            return SchedulePeriodicHelper.schedulePeriodically(this, action0, j, j2, timeUnit, null);
        }
    }

    public abstract Worker createWorker();

    public long now() {
        return System.currentTimeMillis();
    }
}
