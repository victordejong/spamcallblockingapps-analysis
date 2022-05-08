package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$4.class */
public final /* synthetic */ class Uploader$$Lambda$4 implements SynchronizationGuard.CriticalSection {

    /* renamed from: a */
    private final EventStore f6747a;

    private Uploader$$Lambda$4(EventStore eventStore) {
        this.f6747a = eventStore;
    }

    /* renamed from: a */
    public static SynchronizationGuard.CriticalSection m15315a(EventStore eventStore) {
        return new Uploader$$Lambda$4(eventStore);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        return Integer.valueOf(this.f6747a.mo15257f());
    }
}
