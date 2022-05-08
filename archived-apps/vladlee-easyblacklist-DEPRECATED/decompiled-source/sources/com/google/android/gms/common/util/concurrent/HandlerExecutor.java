package com.google.android.gms.common.util.concurrent;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.common.zze;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/HandlerExecutor.class */
public class HandlerExecutor implements Executor {

    /* renamed from: a */
    private final Handler f6999a;

    public HandlerExecutor(Looper looper) {
        this.f6999a = new zze(looper);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f6999a.post(runnable);
    }
}
