package com.google.android.gms.common.p025m;

import java.util.concurrent.ScheduledExecutorService;
@Deprecated
/* renamed from: com.google.android.gms.common.m.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/m/a.class */
public class C0946a {

    /* renamed from: a */
    private static AbstractC0947a f3573a;

    /* renamed from: com.google.android.gms.common.m.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/m/a$a.class */
    public interface AbstractC0947a {
        @Deprecated
        /* renamed from: a */
        ScheduledExecutorService m3211a();
    }

    @Deprecated
    /* renamed from: a */
    public static AbstractC0947a m3212a() {
        AbstractC0947a abstractC0947a;
        synchronized (C0946a.class) {
            try {
                if (f3573a == null) {
                    f3573a = new b();
                }
                abstractC0947a = f3573a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC0947a;
    }
}
