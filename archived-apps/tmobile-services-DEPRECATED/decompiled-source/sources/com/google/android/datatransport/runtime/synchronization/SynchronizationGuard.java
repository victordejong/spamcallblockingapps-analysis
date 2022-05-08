package com.google.android.datatransport.runtime.synchronization;

import androidx.annotation.WorkerThread;
@WorkerThread
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/synchronization/SynchronizationGuard.class */
public interface SynchronizationGuard {

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection.class */
    public interface CriticalSection<T> {
        T execute();
    }

    /* renamed from: a */
    <T> T mo15197a(CriticalSection<T> criticalSection);
}
