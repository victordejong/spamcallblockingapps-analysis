package androidx.work.impl.utils;

import androidx.annotation.RestrictTo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/StartWorkRunnable.class */
public class StartWorkRunnable implements Runnable {
    public WorkerParameters.RuntimeExtras mRuntimeExtras;
    public WorkManagerImpl mWorkManagerImpl;
    public String mWorkSpecId;

    public StartWorkRunnable(WorkManagerImpl workManagerImpl, String str, WorkerParameters.RuntimeExtras runtimeExtras) {
        this.mWorkManagerImpl = workManagerImpl;
        this.mWorkSpecId = str;
        this.mRuntimeExtras = runtimeExtras;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.mWorkManagerImpl.getProcessor().startWork(this.mWorkSpecId, this.mRuntimeExtras);
    }
}
