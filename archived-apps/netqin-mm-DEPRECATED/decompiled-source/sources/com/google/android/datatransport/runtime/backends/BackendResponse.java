package com.google.android.datatransport.runtime.backends;

import p131c.p161d.p170b.p173b.p176i.p179u.C2584b;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/BackendResponse.class */
public abstract class BackendResponse {

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/BackendResponse$Status.class */
    public enum Status {
        OK,
        TRANSIENT_ERROR,
        FATAL_ERROR
    }

    /* renamed from: a */
    public static BackendResponse m18741a(long j) {
        return new C2584b(Status.OK, j);
    }

    /* renamed from: c */
    public static BackendResponse m18739c() {
        return new C2584b(Status.FATAL_ERROR, -1L);
    }

    /* renamed from: d */
    public static BackendResponse m18738d() {
        return new C2584b(Status.TRANSIENT_ERROR, -1L);
    }

    /* renamed from: a */
    public abstract long mo18742a();

    /* renamed from: b */
    public abstract Status mo18740b();
}
