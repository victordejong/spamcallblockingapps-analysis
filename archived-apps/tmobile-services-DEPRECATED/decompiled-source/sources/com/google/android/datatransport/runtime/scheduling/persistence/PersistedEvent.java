package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.auto.value.AutoValue;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent.class */
public abstract class PersistedEvent {
    /* renamed from: a */
    public static PersistedEvent m15279a(long j, TransportContext transportContext, EventInternal eventInternal) {
        return new AutoValue_PersistedEvent(j, transportContext, eventInternal);
    }

    /* renamed from: b */
    public abstract EventInternal mo15278b();

    /* renamed from: c */
    public abstract long mo15277c();

    /* renamed from: d */
    public abstract TransportContext mo15276d();
}
