package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue.class */
final class AutoValue_SchedulerConfig_ConfigValue extends SchedulerConfig.ConfigValue {

    /* renamed from: a */
    private final long f6716a;

    /* renamed from: b */
    private final long f6717b;

    /* renamed from: c */
    private final Set<SchedulerConfig.Flag> f6718c;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$Builder.class */
    static final class Builder extends SchedulerConfig.ConfigValue.Builder {

        /* renamed from: a */
        private Long f6719a;

        /* renamed from: b */
        private Long f6720b;

        /* renamed from: c */
        private Set<SchedulerConfig.Flag> f6721c;

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        /* renamed from: a */
        public SchedulerConfig.ConfigValue mo15329a() {
            String str = "";
            if (this.f6719a == null) {
                str = " delta";
            }
            String str2 = str;
            if (this.f6720b == null) {
                str2 = str + " maxAllowedDelay";
            }
            String str3 = str2;
            if (this.f6721c == null) {
                str3 = str2 + " flags";
            }
            if (str3.isEmpty()) {
                return new AutoValue_SchedulerConfig_ConfigValue(this.f6719a.longValue(), this.f6720b.longValue(), this.f6721c);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        /* renamed from: b */
        public SchedulerConfig.ConfigValue.Builder mo15328b(long j) {
            this.f6719a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        /* renamed from: c */
        public SchedulerConfig.ConfigValue.Builder mo15327c(Set<SchedulerConfig.Flag> set) {
            if (set != null) {
                this.f6721c = set;
                return this;
            }
            throw new NullPointerException("Null flags");
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        /* renamed from: d */
        public SchedulerConfig.ConfigValue.Builder mo15326d(long j) {
            this.f6720b = Long.valueOf(j);
            return this;
        }
    }

    private AutoValue_SchedulerConfig_ConfigValue(long j, long j2, Set<SchedulerConfig.Flag> set) {
        this.f6716a = j;
        this.f6717b = j2;
        this.f6718c = set;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    /* renamed from: b */
    long mo15332b() {
        return this.f6716a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    /* renamed from: c */
    Set<SchedulerConfig.Flag> mo15331c() {
        return this.f6718c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    /* renamed from: d */
    long mo15330d() {
        return this.f6717b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig.ConfigValue)) {
            return false;
        }
        SchedulerConfig.ConfigValue configValue = (SchedulerConfig.ConfigValue) obj;
        if (!(this.f6716a == configValue.mo15332b() && this.f6717b == configValue.mo15330d() && this.f6718c.equals(configValue.mo15331c()))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f6716a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f6717b;
        return this.f6718c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f6716a + ", maxAllowedDelay=" + this.f6717b + ", flags=" + this.f6718c + "}";
    }
}
