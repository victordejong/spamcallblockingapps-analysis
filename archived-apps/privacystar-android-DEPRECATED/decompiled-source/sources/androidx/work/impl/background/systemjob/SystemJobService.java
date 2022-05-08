package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.text.TextUtils;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.WorkManagerImpl;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
@RequiresApi(23)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/SystemJobService.class */
public class SystemJobService extends JobService implements ExecutionListener {
    private static final String TAG = Logger.tagWithPrefix("SystemJobService");
    private final Map<String, JobParameters> mJobParameters = new HashMap();
    private WorkManagerImpl mWorkManagerImpl;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mWorkManagerImpl = WorkManagerImpl.getInstance();
        if (this.mWorkManagerImpl != null) {
            this.mWorkManagerImpl.getProcessor().addExecutionListener(this);
        } else if (!Application.class.equals(getApplication().getClass())) {
            throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
        } else {
            Logger.get().warning(TAG, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.mWorkManagerImpl != null) {
            this.mWorkManagerImpl.getProcessor().removeExecutionListener(this);
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(@NonNull String str, boolean z) {
        JobParameters remove;
        Logger.get().debug(TAG, String.format("%s executed on JobScheduler", str), new Throwable[0]);
        synchronized (this.mJobParameters) {
            remove = this.mJobParameters.remove(str);
        }
        if (remove != null) {
            jobFinished(remove, z);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (this.mWorkManagerImpl == null) {
            Logger.get().debug(TAG, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            jobFinished(jobParameters, true);
            return false;
        }
        String string = jobParameters.getExtras().getString("EXTRA_WORK_SPEC_ID");
        if (TextUtils.isEmpty(string)) {
            Logger.get().error(TAG, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.mJobParameters) {
            if (this.mJobParameters.containsKey(string)) {
                Logger.get().debug(TAG, String.format("Job is already being executed by SystemJobService: %s", string), new Throwable[0]);
                return false;
            }
            Logger.get().debug(TAG, String.format("onStartJob for %s", string), new Throwable[0]);
            this.mJobParameters.put(string, jobParameters);
            WorkerParameters.RuntimeExtras runtimeExtras = null;
            if (Build.VERSION.SDK_INT >= 24) {
                WorkerParameters.RuntimeExtras runtimeExtras2 = new WorkerParameters.RuntimeExtras();
                if (jobParameters.getTriggeredContentUris() != null) {
                    runtimeExtras2.triggeredContentUris = Arrays.asList(jobParameters.getTriggeredContentUris());
                }
                if (jobParameters.getTriggeredContentAuthorities() != null) {
                    runtimeExtras2.triggeredContentAuthorities = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
                }
                runtimeExtras = runtimeExtras2;
                if (Build.VERSION.SDK_INT >= 28) {
                    runtimeExtras2.network = jobParameters.getNetwork();
                    runtimeExtras = runtimeExtras2;
                }
            }
            this.mWorkManagerImpl.startWork(string, runtimeExtras);
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        if (this.mWorkManagerImpl == null) {
            Logger.get().debug(TAG, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            return true;
        }
        String string = jobParameters.getExtras().getString("EXTRA_WORK_SPEC_ID");
        if (TextUtils.isEmpty(string)) {
            Logger.get().error(TAG, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        Logger.get().debug(TAG, String.format("onStopJob for %s", string), new Throwable[0]);
        synchronized (this.mJobParameters) {
            this.mJobParameters.remove(string);
        }
        this.mWorkManagerImpl.stopWork(string);
        return !this.mWorkManagerImpl.getProcessor().isCancelled(string);
    }
}
