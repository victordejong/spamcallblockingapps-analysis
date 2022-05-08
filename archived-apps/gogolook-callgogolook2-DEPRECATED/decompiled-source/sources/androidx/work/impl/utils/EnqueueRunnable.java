package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.Operation;
import androidx.work.impl.OperationImpl;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.Iterator;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/EnqueueRunnable.class */
public class EnqueueRunnable implements Runnable {
    public static final String TAG = Logger.tagWithPrefix("EnqueueRunnable");
    public final OperationImpl mOperation = new OperationImpl();
    public final WorkContinuationImpl mWorkContinuation;

    public EnqueueRunnable(@NonNull WorkContinuationImpl workContinuationImpl) {
        this.mWorkContinuation = workContinuationImpl;
    }

    public static boolean enqueueContinuation(@NonNull WorkContinuationImpl workContinuationImpl) {
        boolean enqueueWorkWithPrerequisites = enqueueWorkWithPrerequisites(workContinuationImpl.getWorkManagerImpl(), workContinuationImpl.getWork(), (String[]) WorkContinuationImpl.prerequisitesFor(workContinuationImpl).toArray(new String[0]), workContinuationImpl.getName(), workContinuationImpl.getExistingWorkPolicy());
        workContinuationImpl.markEnqueued();
        return enqueueWorkWithPrerequisites;
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x02a1, code lost:
        if (r25 != false) goto L_0x02a4;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x031d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean enqueueWorkWithPrerequisites(androidx.work.impl.WorkManagerImpl r8, @androidx.annotation.NonNull java.util.List<? extends androidx.work.WorkRequest> r9, java.lang.String[] r10, java.lang.String r11, androidx.work.ExistingWorkPolicy r12) {
        /*
            Method dump skipped, instructions count: 1117
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.EnqueueRunnable.enqueueWorkWithPrerequisites(androidx.work.impl.WorkManagerImpl, java.util.List, java.lang.String[], java.lang.String, androidx.work.ExistingWorkPolicy):boolean");
    }

    public static boolean processContinuation(@NonNull WorkContinuationImpl workContinuationImpl) {
        List<WorkContinuationImpl> parents = workContinuationImpl.getParents();
        boolean z = false;
        if (parents != null) {
            z = false;
            for (WorkContinuationImpl workContinuationImpl2 : parents) {
                if (!workContinuationImpl2.isEnqueued()) {
                    z |= processContinuation(workContinuationImpl2);
                } else {
                    Logger.get().warning(TAG, String.format("Already enqueued work ids (%s).", TextUtils.join(UserProfile.CARD_CATE_SEPARATOR, workContinuationImpl2.getIds())), new Throwable[0]);
                }
            }
        }
        return enqueueContinuation(workContinuationImpl) | z;
    }

    public static void tryDelegateConstrainedWorkSpec(WorkSpec workSpec) {
        Constraints constraints = workSpec.constraints;
        if (constraints.requiresBatteryNotLow() || constraints.requiresStorageNotLow()) {
            String str = workSpec.workerClassName;
            Data.Builder builder = new Data.Builder();
            builder.putAll(workSpec.input).putString(ConstraintTrackingWorker.ARGUMENT_CLASS_NAME, str);
            workSpec.workerClassName = ConstraintTrackingWorker.class.getName();
            workSpec.input = builder.build();
        }
    }

    public static boolean usesScheduler(@NonNull WorkManagerImpl workManagerImpl, @NonNull String str) {
        try {
            Class<?> cls = Class.forName(str);
            Iterator<Scheduler> it = workManagerImpl.getSchedulers().iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
            } while (!cls.isAssignableFrom(it.next().getClass()));
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    @VisibleForTesting
    public boolean addToDatabase() {
        WorkDatabase workDatabase = this.mWorkContinuation.getWorkManagerImpl().getWorkDatabase();
        workDatabase.beginTransaction();
        try {
            boolean processContinuation = processContinuation(this.mWorkContinuation);
            workDatabase.setTransactionSuccessful();
            return processContinuation;
        } finally {
            workDatabase.endTransaction();
        }
    }

    public Operation getOperation() {
        return this.mOperation;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (!this.mWorkContinuation.hasCycles()) {
                if (addToDatabase()) {
                    PackageManagerHelper.setComponentEnabled(this.mWorkContinuation.getWorkManagerImpl().getApplicationContext(), RescheduleReceiver.class, true);
                    scheduleWorkInBackground();
                }
                this.mOperation.setState(Operation.SUCCESS);
                return;
            }
            throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.mWorkContinuation));
        } catch (Throwable th) {
            this.mOperation.setState(new Operation.State.FAILURE(th));
        }
    }

    @VisibleForTesting
    public void scheduleWorkInBackground() {
        WorkManagerImpl workManagerImpl = this.mWorkContinuation.getWorkManagerImpl();
        Schedulers.schedule(workManagerImpl.getConfiguration(), workManagerImpl.getWorkDatabase(), workManagerImpl.getSchedulers());
    }
}
