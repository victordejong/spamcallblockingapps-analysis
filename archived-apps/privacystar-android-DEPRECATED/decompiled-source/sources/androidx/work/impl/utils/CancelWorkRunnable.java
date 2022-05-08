package androidx.work.impl.utils;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.WorkerThread;
import androidx.work.Operation;
import androidx.work.WorkInfo;
import androidx.work.impl.OperationImpl;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpecDao;
import java.util.UUID;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/CancelWorkRunnable.class */
public abstract class CancelWorkRunnable implements Runnable {
    private final OperationImpl mOperation = new OperationImpl();

    public static CancelWorkRunnable forAll(@NonNull final WorkManagerImpl workManagerImpl) {
        return new CancelWorkRunnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable.4
            @Override // androidx.work.impl.utils.CancelWorkRunnable
            @WorkerThread
            void runInternal() {
                WorkDatabase workDatabase = WorkManagerImpl.this.getWorkDatabase();
                workDatabase.beginTransaction();
                try {
                    for (String str : workDatabase.workSpecDao().getAllUnfinishedWork()) {
                        cancel(WorkManagerImpl.this, str);
                    }
                    workDatabase.setTransactionSuccessful();
                    new Preferences(WorkManagerImpl.this.getApplicationContext()).setLastCancelAllTimeMillis(System.currentTimeMillis());
                } finally {
                    workDatabase.endTransaction();
                }
            }
        };
    }

    public static CancelWorkRunnable forId(@NonNull final UUID uuid, @NonNull final WorkManagerImpl workManagerImpl) {
        return new CancelWorkRunnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable.1
            @Override // androidx.work.impl.utils.CancelWorkRunnable
            @WorkerThread
            void runInternal() {
                cancel(WorkManagerImpl.this, uuid.toString());
                reschedulePendingWorkers(WorkManagerImpl.this);
            }
        };
    }

    public static CancelWorkRunnable forName(@NonNull final String str, @NonNull final WorkManagerImpl workManagerImpl, final boolean z) {
        return new CancelWorkRunnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable.3
            /* JADX WARN: Finally extract failed */
            @Override // androidx.work.impl.utils.CancelWorkRunnable
            @WorkerThread
            void runInternal() {
                WorkDatabase workDatabase = WorkManagerImpl.this.getWorkDatabase();
                workDatabase.beginTransaction();
                try {
                    for (String str2 : workDatabase.workSpecDao().getUnfinishedWorkWithName(str)) {
                        cancel(WorkManagerImpl.this, str2);
                    }
                    workDatabase.setTransactionSuccessful();
                    workDatabase.endTransaction();
                    if (z) {
                        reschedulePendingWorkers(WorkManagerImpl.this);
                    }
                } catch (Throwable th) {
                    workDatabase.endTransaction();
                    throw th;
                }
            }
        };
    }

    public static CancelWorkRunnable forTag(@NonNull final String str, @NonNull final WorkManagerImpl workManagerImpl) {
        return new CancelWorkRunnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable.2
            /* JADX WARN: Finally extract failed */
            @Override // androidx.work.impl.utils.CancelWorkRunnable
            @WorkerThread
            void runInternal() {
                WorkDatabase workDatabase = WorkManagerImpl.this.getWorkDatabase();
                workDatabase.beginTransaction();
                try {
                    for (String str2 : workDatabase.workSpecDao().getUnfinishedWorkWithTag(str)) {
                        cancel(WorkManagerImpl.this, str2);
                    }
                    workDatabase.setTransactionSuccessful();
                    workDatabase.endTransaction();
                    reschedulePendingWorkers(WorkManagerImpl.this);
                } catch (Throwable th) {
                    workDatabase.endTransaction();
                    throw th;
                }
            }
        };
    }

    private void recursivelyCancelWorkAndDependents(WorkDatabase workDatabase, String str) {
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        for (String str2 : workDatabase.dependencyDao().getDependentWorkIds(str)) {
            recursivelyCancelWorkAndDependents(workDatabase, str2);
        }
        WorkInfo.State state = workSpecDao.getState(str);
        if (!(state == WorkInfo.State.SUCCEEDED || state == WorkInfo.State.FAILED)) {
            workSpecDao.setState(WorkInfo.State.CANCELLED, str);
        }
    }

    void cancel(WorkManagerImpl workManagerImpl, String str) {
        recursivelyCancelWorkAndDependents(workManagerImpl.getWorkDatabase(), str);
        workManagerImpl.getProcessor().stopAndCancelWork(str);
        for (Scheduler scheduler : workManagerImpl.getSchedulers()) {
            scheduler.cancel(str);
        }
    }

    public Operation getOperation() {
        return this.mOperation;
    }

    void reschedulePendingWorkers(WorkManagerImpl workManagerImpl) {
        Schedulers.schedule(workManagerImpl.getConfiguration(), workManagerImpl.getWorkDatabase(), workManagerImpl.getSchedulers());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            runInternal();
            this.mOperation.setState(Operation.SUCCESS);
        } catch (Throwable th) {
            this.mOperation.setState(new Operation.State.FAILURE(th));
        }
    }

    abstract void runInternal();
}
