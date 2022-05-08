package androidx.work.impl.background.systemalarm;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.Scheduler;
import androidx.work.impl.model.WorkSpec;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/SystemAlarmScheduler.class */
public class SystemAlarmScheduler implements Scheduler {
    public static final String TAG = Logger.tagWithPrefix("SystemAlarmScheduler");
    public final Context mContext;

    public SystemAlarmScheduler(@NonNull Context context) {
        this.mContext = context.getApplicationContext();
    }

    private void scheduleWorkSpec(@NonNull WorkSpec workSpec) {
        Logger.get().debug(TAG, String.format("Scheduling work with workSpecId %s", workSpec.f130id), new Throwable[0]);
        this.mContext.startService(CommandHandler.createScheduleWorkIntent(this.mContext, workSpec.f130id));
    }

    @Override // androidx.work.impl.Scheduler
    public void cancel(@NonNull String str) {
        this.mContext.startService(CommandHandler.createStopWorkIntent(this.mContext, str));
    }

    @Override // androidx.work.impl.Scheduler
    public boolean hasLimitedSchedulingSlots() {
        return true;
    }

    @Override // androidx.work.impl.Scheduler
    public void schedule(@NonNull WorkSpec... workSpecArr) {
        for (WorkSpec workSpec : workSpecArr) {
            scheduleWorkSpec(workSpec);
        }
    }
}
