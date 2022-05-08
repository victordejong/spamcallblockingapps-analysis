package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import androidx.annotation.RequiresApi;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AutoValue_SchedulerConfig_ConfigValue;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.auto.value.AutoValue;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig.class */
public abstract class SchedulerConfig {

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private Clock f6727a;

        /* renamed from: b */
        private Map<Priority, ConfigValue> f6728b = new HashMap();

        /* renamed from: a */
        public Builder m15336a(Priority priority, ConfigValue configValue) {
            this.f6728b.put(priority, configValue);
            return this;
        }

        /* renamed from: b */
        public SchedulerConfig m15335b() {
            if (this.f6727a == null) {
                throw new NullPointerException("missing required property: clock");
            } else if (this.f6728b.keySet().size() >= Priority.values().length) {
                Map<Priority, ConfigValue> map = this.f6728b;
                this.f6728b = new HashMap();
                return SchedulerConfig.m15343d(this.f6727a, map);
            } else {
                throw new IllegalStateException("Not all priorities have been configured");
            }
        }

        /* renamed from: c */
        public Builder m15334c(Clock clock) {
            this.f6727a = clock;
            return this;
        }
    }

    @AutoValue
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$ConfigValue.class */
    public static abstract class ConfigValue {

        @AutoValue.Builder
        /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$ConfigValue$Builder.class */
        public static abstract class Builder {
            /* renamed from: a */
            public abstract ConfigValue mo15329a();

            /* renamed from: b */
            public abstract Builder mo15328b(long j);

            /* renamed from: c */
            public abstract Builder mo15327c(Set<Flag> set);

            /* renamed from: d */
            public abstract Builder mo15326d(long j);
        }

        /* renamed from: a */
        public static Builder m15333a() {
            AutoValue_SchedulerConfig_ConfigValue.Builder builder = new AutoValue_SchedulerConfig_ConfigValue.Builder();
            builder.mo15327c(Collections.emptySet());
            return builder;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public abstract long mo15332b();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public abstract Set<Flag> mo15331c();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: d */
        public abstract long mo15330d();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag.class */
    public enum Flag {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* renamed from: a */
    private long m15346a(int i, long j) {
        int i2;
        return (long) (Math.pow(3.0d, i - 1) * j * Math.max(1.0d, Math.log(10000.0d) / Math.log((j > 1 ? j : 2) * i2)));
    }

    /* renamed from: b */
    public static Builder m15345b() {
        return new Builder();
    }

    /* renamed from: d */
    static SchedulerConfig m15343d(Clock clock, Map<Priority, ConfigValue> map) {
        return new AutoValue_SchedulerConfig(clock, map);
    }

    /* renamed from: f */
    public static SchedulerConfig m15341f(Clock clock) {
        Builder b = m15345b();
        Priority priority = Priority.DEFAULT;
        ConfigValue.Builder a = ConfigValue.m15333a();
        a.mo15328b(30000L);
        a.mo15326d(86400000L);
        b.m15336a(priority, a.mo15329a());
        Priority priority2 = Priority.HIGHEST;
        ConfigValue.Builder a2 = ConfigValue.m15333a();
        a2.mo15328b(1000L);
        a2.mo15326d(86400000L);
        b.m15336a(priority2, a2.mo15329a());
        Priority priority3 = Priority.VERY_LOW;
        ConfigValue.Builder a3 = ConfigValue.m15333a();
        a3.mo15328b(86400000L);
        a3.mo15326d(86400000L);
        a3.mo15327c(m15338i(Flag.NETWORK_UNMETERED, Flag.DEVICE_IDLE));
        b.m15336a(priority3, a3.mo15329a());
        b.m15334c(clock);
        return b.m15335b();
    }

    /* renamed from: i */
    private static <T> Set<T> m15338i(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    @RequiresApi
    /* renamed from: j */
    private void m15337j(JobInfo.Builder builder, Set<Flag> set) {
        if (set.contains(Flag.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(Flag.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(Flag.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    @RequiresApi
    /* renamed from: c */
    public JobInfo.Builder m15344c(JobInfo.Builder builder, Priority priority, long j, int i) {
        builder.setMinimumLatency(m15340g(priority, j, i));
        m15337j(builder, mo15339h().get(priority).mo15331c());
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public abstract Clock mo15342e();

    /* renamed from: g */
    public long m15340g(Priority priority, long j, int i) {
        long a = mo15342e().mo15188a();
        ConfigValue configValue = mo15339h().get(priority);
        return Math.min(Math.max(m15346a(i, configValue.mo15332b()), j - a), configValue.mo15330d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public abstract Map<Priority, ConfigValue> mo15339h();
}
