package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/DefaultScheduler$$Lambda$1.class */
final /* synthetic */ class DefaultScheduler$$Lambda$1 implements Runnable {

    /* renamed from: f */
    private final DefaultScheduler f6691f;

    /* renamed from: g */
    private final TransportContext f6692g;

    /* renamed from: h */
    private final TransportScheduleCallback f6693h;

    /* renamed from: i */
    private final EventInternal f6694i;

    private DefaultScheduler$$Lambda$1(DefaultScheduler defaultScheduler, TransportContext transportContext, TransportScheduleCallback transportScheduleCallback, EventInternal eventInternal) {
        this.f6691f = defaultScheduler;
        this.f6692g = transportContext;
        this.f6693h = transportScheduleCallback;
        this.f6694i = eventInternal;
    }

    /* renamed from: a */
    public static Runnable m15366a(DefaultScheduler defaultScheduler, TransportContext transportContext, TransportScheduleCallback transportScheduleCallback, EventInternal eventInternal) {
        return new DefaultScheduler$$Lambda$1(defaultScheduler, transportContext, transportScheduleCallback, eventInternal);
    }

    @Override // java.lang.Runnable
    public void run() {
        DefaultScheduler.m15367c(this.f6691f, this.f6692g, this.f6693h, this.f6694i);
    }
}
