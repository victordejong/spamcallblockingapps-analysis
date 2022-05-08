package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/SchedulingConfigModule_ConfigFactory.class */
public final class SchedulingConfigModule_ConfigFactory implements Factory<SchedulerConfig> {

    /* renamed from: a */
    private final Provider<Clock> f6703a;

    public SchedulingConfigModule_ConfigFactory(Provider<Clock> provider) {
        this.f6703a = provider;
    }

    /* renamed from: a */
    public static SchedulerConfig m15360a(Clock clock) {
        SchedulerConfig a = SchedulingConfigModule.m15361a(clock);
        Preconditions.m4632c(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: b */
    public static SchedulingConfigModule_ConfigFactory m15359b(Provider<Clock> provider) {
        return new SchedulingConfigModule_ConfigFactory(provider);
    }

    /* renamed from: c */
    public SchedulerConfig get() {
        return m15360a(this.f6703a.get());
    }
}
