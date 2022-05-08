package com.google.android.datatransport.runtime.scheduling;

import android.content.Context;
import android.os.Build;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerScheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoScheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.time.Monotonic;
import dagger.Module;
import dagger.Provides;
@Module
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/SchedulingModule.class */
public abstract class SchedulingModule {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    /* renamed from: a */
    public static WorkScheduler m15357a(Context context, EventStore eventStore, SchedulerConfig schedulerConfig, @Monotonic Clock clock) {
        return Build.VERSION.SDK_INT >= 21 ? new JobInfoScheduler(context, eventStore, schedulerConfig) : new AlarmManagerScheduler(context, eventStore, clock, schedulerConfig);
    }
}
