package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import dagger.internal.Factory;
import java.util.concurrent.Executor;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory.class */
public final class Uploader_Factory implements Factory<Uploader> {

    /* renamed from: a */
    private final Provider<Context> f6751a;

    /* renamed from: b */
    private final Provider<BackendRegistry> f6752b;

    /* renamed from: c */
    private final Provider<EventStore> f6753c;

    /* renamed from: d */
    private final Provider<WorkScheduler> f6754d;

    /* renamed from: e */
    private final Provider<Executor> f6755e;

    /* renamed from: f */
    private final Provider<SynchronizationGuard> f6756f;

    /* renamed from: g */
    private final Provider<Clock> f6757g;

    public Uploader_Factory(Provider<Context> provider, Provider<BackendRegistry> provider2, Provider<EventStore> provider3, Provider<WorkScheduler> provider4, Provider<Executor> provider5, Provider<SynchronizationGuard> provider6, Provider<Clock> provider7) {
        this.f6751a = provider;
        this.f6752b = provider2;
        this.f6753c = provider3;
        this.f6754d = provider4;
        this.f6755e = provider5;
        this.f6756f = provider6;
        this.f6757g = provider7;
    }

    /* renamed from: a */
    public static Uploader_Factory m15313a(Provider<Context> provider, Provider<BackendRegistry> provider2, Provider<EventStore> provider3, Provider<WorkScheduler> provider4, Provider<Executor> provider5, Provider<SynchronizationGuard> provider6, Provider<Clock> provider7) {
        return new Uploader_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    /* renamed from: b */
    public Uploader get() {
        return new Uploader(this.f6751a.get(), this.f6752b.get(), this.f6753c.get(), this.f6754d.get(), this.f6755e.get(), this.f6756f.get(), this.f6757g.get());
    }
}
