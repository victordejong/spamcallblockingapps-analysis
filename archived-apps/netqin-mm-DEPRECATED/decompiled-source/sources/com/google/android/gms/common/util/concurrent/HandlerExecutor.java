package com.google.android.gms.common.util.concurrent;

import android.os.Handler;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.Executor;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/HandlerExecutor.class */
public class HandlerExecutor implements Executor {

    /* renamed from: a */
    public final Handler f23572a;

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f23572a.post(runnable);
    }
}
