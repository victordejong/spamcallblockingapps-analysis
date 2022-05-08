package androidx.work.impl.model;

import android.arch.core.util.Function;
import android.arch.persistence.room.ColumnInfo;
import android.arch.persistence.room.Embedded;
import android.arch.persistence.room.Entity;
import android.arch.persistence.room.Index;
import android.arch.persistence.room.PrimaryKey;
import android.arch.persistence.room.Relation;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
@Entity(indices = {@Index({"schedule_requested_at"})})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec.class */
public class WorkSpec {
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;
    private static final String TAG = Logger.tagWithPrefix("WorkSpec");
    public static final Function<List<WorkInfoPojo>, List<WorkInfo>> WORK_INFO_MAPPER = new Function<List<WorkInfoPojo>, List<WorkInfo>>() { // from class: androidx.work.impl.model.WorkSpec.1
        public List<WorkInfo> apply(List<WorkInfoPojo> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (WorkInfoPojo workInfoPojo : list) {
                arrayList.add(workInfoPojo.toWorkInfo());
            }
            return arrayList;
        }
    };
    @ColumnInfo(name = "backoff_delay_duration")
    public long backoffDelayDuration;
    @ColumnInfo(name = "backoff_policy")
    @NonNull
    public BackoffPolicy backoffPolicy;
    @Embedded
    @NonNull
    public Constraints constraints;
    @ColumnInfo(name = "flex_duration")
    public long flexDuration;
    @ColumnInfo(name = "id")
    @PrimaryKey
    @NonNull

    /* renamed from: id */
    public String f48id;
    @ColumnInfo(name = "initial_delay")
    public long initialDelay;
    @ColumnInfo(name = "input")
    @NonNull
    public Data input;
    @ColumnInfo(name = "input_merger_class_name")
    public String inputMergerClassName;
    @ColumnInfo(name = "interval_duration")
    public long intervalDuration;
    @ColumnInfo(name = "minimum_retention_duration")
    public long minimumRetentionDuration;
    @ColumnInfo(name = "output")
    @NonNull
    public Data output;
    @ColumnInfo(name = "period_start_time")
    public long periodStartTime;
    @ColumnInfo(name = "run_attempt_count")
    public int runAttemptCount;
    @ColumnInfo(name = "schedule_requested_at")
    public long scheduleRequestedAt;
    @ColumnInfo(name = "state")
    @NonNull
    public WorkInfo.State state;
    @ColumnInfo(name = "worker_class_name")
    @NonNull
    public String workerClassName;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec$IdAndState.class */
    public static class IdAndState {
        @ColumnInfo(name = "id")

        /* renamed from: id */
        public String f49id;
        @ColumnInfo(name = "state")
        public WorkInfo.State state;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            if (this.state != idAndState.state) {
                return false;
            }
            return this.f49id.equals(idAndState.f49id);
        }

        public int hashCode() {
            return (this.f49id.hashCode() * 31) + this.state.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpec$WorkInfoPojo.class */
    public static class WorkInfoPojo {
        @ColumnInfo(name = "id")

        /* renamed from: id */
        public String f50id;
        @ColumnInfo(name = "output")
        public Data output;
        @ColumnInfo(name = "state")
        public WorkInfo.State state;
        @Relation(entity = WorkTag.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {"tag"})
        public List<String> tags;

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) obj;
            if (this.f50id != null) {
                if (!this.f50id.equals(workInfoPojo.f50id)) {
                    return false;
                }
            } else if (workInfoPojo.f50id != null) {
                return false;
            }
            if (this.state != workInfoPojo.state) {
                return false;
            }
            if (this.output != null) {
                if (!this.output.equals(workInfoPojo.output)) {
                    return false;
                }
            } else if (workInfoPojo.output != null) {
                return false;
            }
            if (this.tags != null) {
                z = this.tags.equals(workInfoPojo.tags);
            } else if (workInfoPojo.tags != null) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = this.f50id != null ? this.f50id.hashCode() : 0;
            int hashCode2 = this.state != null ? this.state.hashCode() : 0;
            int hashCode3 = this.output != null ? this.output.hashCode() : 0;
            if (this.tags != null) {
                i = this.tags.hashCode();
            }
            return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
        }

        public WorkInfo toWorkInfo() {
            return new WorkInfo(UUID.fromString(this.f50id), this.state, this.output, this.tags);
        }
    }

    public WorkSpec(@NonNull WorkSpec workSpec) {
        this.state = WorkInfo.State.ENQUEUED;
        this.input = Data.EMPTY;
        this.output = Data.EMPTY;
        this.constraints = Constraints.NONE;
        this.backoffPolicy = BackoffPolicy.EXPONENTIAL;
        this.backoffDelayDuration = 30000L;
        this.scheduleRequestedAt = -1L;
        this.f48id = workSpec.f48id;
        this.workerClassName = workSpec.workerClassName;
        this.state = workSpec.state;
        this.inputMergerClassName = workSpec.inputMergerClassName;
        this.input = new Data(workSpec.input);
        this.output = new Data(workSpec.output);
        this.initialDelay = workSpec.initialDelay;
        this.intervalDuration = workSpec.intervalDuration;
        this.flexDuration = workSpec.flexDuration;
        this.constraints = new Constraints(workSpec.constraints);
        this.runAttemptCount = workSpec.runAttemptCount;
        this.backoffPolicy = workSpec.backoffPolicy;
        this.backoffDelayDuration = workSpec.backoffDelayDuration;
        this.periodStartTime = workSpec.periodStartTime;
        this.minimumRetentionDuration = workSpec.minimumRetentionDuration;
        this.scheduleRequestedAt = workSpec.scheduleRequestedAt;
    }

    public WorkSpec(@NonNull String str, @NonNull String str2) {
        this.state = WorkInfo.State.ENQUEUED;
        this.input = Data.EMPTY;
        this.output = Data.EMPTY;
        this.constraints = Constraints.NONE;
        this.backoffPolicy = BackoffPolicy.EXPONENTIAL;
        this.backoffDelayDuration = 30000L;
        this.scheduleRequestedAt = -1L;
        this.f48id = str;
        this.workerClassName = str2;
    }

    public long calculateNextRunTime() {
        boolean z = false;
        boolean z2 = false;
        if (isBackedOff()) {
            if (this.backoffPolicy == BackoffPolicy.LINEAR) {
                z2 = true;
            }
            return this.periodStartTime + Math.min((long) WorkRequest.MAX_BACKOFF_MILLIS, z2 ? this.backoffDelayDuration * this.runAttemptCount : Math.scalb((float) this.backoffDelayDuration, this.runAttemptCount - 1));
        } else if (!isPeriodic()) {
            return this.periodStartTime + this.initialDelay;
        } else {
            if (Build.VERSION.SDK_INT > 22) {
                return (this.periodStartTime + this.intervalDuration) - this.flexDuration;
            }
            if (this.flexDuration != this.intervalDuration) {
                z = true;
            }
            if (!z) {
                return this.periodStartTime + this.intervalDuration;
            }
            return (this.periodStartTime == 0 ? System.currentTimeMillis() : this.periodStartTime) + this.intervalDuration + (this.periodStartTime == 0 ? (-1) * this.flexDuration : 0L);
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        if (this.initialDelay != workSpec.initialDelay || this.intervalDuration != workSpec.intervalDuration || this.flexDuration != workSpec.flexDuration || this.runAttemptCount != workSpec.runAttemptCount || this.backoffDelayDuration != workSpec.backoffDelayDuration || this.periodStartTime != workSpec.periodStartTime || this.minimumRetentionDuration != workSpec.minimumRetentionDuration || this.scheduleRequestedAt != workSpec.scheduleRequestedAt || !this.f48id.equals(workSpec.f48id) || this.state != workSpec.state || !this.workerClassName.equals(workSpec.workerClassName)) {
            return false;
        }
        if (this.inputMergerClassName != null) {
            if (!this.inputMergerClassName.equals(workSpec.inputMergerClassName)) {
                return false;
            }
        } else if (workSpec.inputMergerClassName != null) {
            return false;
        }
        if (!this.input.equals(workSpec.input) || !this.output.equals(workSpec.output) || !this.constraints.equals(workSpec.constraints)) {
            return false;
        }
        if (this.backoffPolicy != workSpec.backoffPolicy) {
            z = false;
        }
        return z;
    }

    public boolean hasConstraints() {
        return !Constraints.NONE.equals(this.constraints);
    }

    public int hashCode() {
        int hashCode = this.f48id.hashCode();
        int hashCode2 = this.state.hashCode();
        return (((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + this.workerClassName.hashCode()) * 31) + (this.inputMergerClassName != null ? this.inputMergerClassName.hashCode() : 0)) * 31) + this.input.hashCode()) * 31) + this.output.hashCode()) * 31) + ((int) (this.initialDelay ^ (this.initialDelay >>> 32)))) * 31) + ((int) (this.intervalDuration ^ (this.intervalDuration >>> 32)))) * 31) + ((int) (this.flexDuration ^ (this.flexDuration >>> 32)))) * 31) + this.constraints.hashCode()) * 31) + this.runAttemptCount) * 31) + this.backoffPolicy.hashCode()) * 31) + ((int) (this.backoffDelayDuration ^ (this.backoffDelayDuration >>> 32)))) * 31) + ((int) (this.periodStartTime ^ (this.periodStartTime >>> 32)))) * 31) + ((int) (this.minimumRetentionDuration ^ (this.minimumRetentionDuration >>> 32)))) * 31) + ((int) (this.scheduleRequestedAt ^ (this.scheduleRequestedAt >>> 32)));
    }

    public boolean isBackedOff() {
        return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
    }

    public boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setBackoffDelayDuration(long r6) {
        /*
            r5 = this;
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 18000000(0x112a880, double:8.8931816E-317)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x001d
            androidx.work.Logger r0 = androidx.work.Logger.get()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Backoff delay duration exceeds maximum value"
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.warning(r1, r2, r3)
            r0 = 18000000(0x112a880, double:8.8931816E-317)
            r8 = r0
        L_0x001d:
            r0 = r8
            r6 = r0
            r0 = r8
            r1 = 10000(0x2710, double:4.9407E-320)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x003a
            androidx.work.Logger r0 = androidx.work.Logger.get()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Backoff delay duration less than minimum value"
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.warning(r1, r2, r3)
            r0 = 10000(0x2710, double:4.9407E-320)
            r6 = r0
        L_0x003a:
            r0 = r5
            r1 = r6
            r0.backoffDelayDuration = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkSpec.setBackoffDelayDuration(long):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v2 */
    public void setPeriodic(long j) {
        long j2 = j;
        if (j < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, String.format("Interval duration lesser than minimum allowed value; Changed to %s", Long.valueOf((long) PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS)), new Throwable[0]);
            j2 = 900000;
        }
        setPeriodic(j2, j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setPeriodic(long r10, long r12) {
        /*
            r9 = this;
            r0 = r10
            r14 = r0
            r0 = r10
            r1 = 900000(0xdbba0, double:4.44659E-318)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x002f
            androidx.work.Logger r0 = androidx.work.Logger.get()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Interval duration lesser than minimum allowed value; Changed to %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = 900000(0xdbba0, double:4.44659E-318)
            java.lang.Long r6 = java.lang.Long.valueOf(r6)
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.warning(r1, r2, r3)
            r0 = 900000(0xdbba0, double:4.44659E-318)
            r14 = r0
        L_0x002f:
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = 300000(0x493e0, double:1.482197E-318)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x005c
            androidx.work.Logger r0 = androidx.work.Logger.get()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Flex duration lesser than minimum allowed value; Changed to %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = 300000(0x493e0, double:1.482197E-318)
            java.lang.Long r6 = java.lang.Long.valueOf(r6)
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.warning(r1, r2, r3)
            r0 = 300000(0x493e0, double:1.482197E-318)
            r10 = r0
        L_0x005c:
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0086
            androidx.work.Logger r0 = androidx.work.Logger.get()
            java.lang.String r1 = androidx.work.impl.model.WorkSpec.TAG
            java.lang.String r2 = "Flex duration greater than interval duration; Changed to %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r14
            java.lang.Long r6 = java.lang.Long.valueOf(r6)
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.warning(r1, r2, r3)
            r0 = r14
            r12 = r0
        L_0x0086:
            r0 = r9
            r1 = r14
            r0.intervalDuration = r1
            r0 = r9
            r1 = r12
            r0.flexDuration = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkSpec.setPeriodic(long, long):void");
    }

    public String toString() {
        return "{WorkSpec: " + this.f48id + "}";
    }
}
