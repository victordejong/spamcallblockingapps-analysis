package com.google.android.datatransport.runtime.time;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/time/TimeModule_EventClockFactory.class */
public final class TimeModule_EventClockFactory implements Factory<Clock> {

    /* renamed from: a */
    private static final TimeModule_EventClockFactory f6837a = new TimeModule_EventClockFactory();

    /* renamed from: a */
    public static TimeModule_EventClockFactory m15194a() {
        return f6837a;
    }

    /* renamed from: b */
    public static Clock m15193b() {
        Clock a = TimeModule.m15196a();
        Preconditions.m4632c(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: c */
    public Clock get() {
        return m15193b();
    }
}
