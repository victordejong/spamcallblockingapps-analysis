package com.google.android.datatransport.runtime.backends;
/* renamed from: com.google.android.datatransport.runtime.backends.g */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/g.class */
public abstract class AbstractC0742g {

    /* renamed from: com.google.android.datatransport.runtime.backends.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/g$a.class */
    public enum EnumC0743a {
        OK,
        TRANSIENT_ERROR,
        FATAL_ERROR
    }

    /* renamed from: a */
    public static AbstractC0742g m3844a() {
        return new b(EnumC0743a.FATAL_ERROR, -1L);
    }

    /* renamed from: d */
    public static AbstractC0742g m3841d(long j) {
        return new b(EnumC0743a.OK, j);
    }

    /* renamed from: e */
    public static AbstractC0742g m3840e() {
        return new b(EnumC0743a.TRANSIENT_ERROR, -1L);
    }

    /* renamed from: b */
    public abstract long m3843b();

    /* renamed from: c */
    public abstract EnumC0743a m3842c();
}
