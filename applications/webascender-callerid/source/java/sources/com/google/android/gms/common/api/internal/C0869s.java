package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.AbstractC1646g;
import com.google.android.gms.tasks.C1647h;
/* renamed from: com.google.android.gms.common.api.internal.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/s.class */
public class C0869s {
    /* renamed from: a */
    public static void m3511a(Status status, C1647h<Void> c1647h) {
        m3510b(status, null, c1647h);
    }

    /* renamed from: b */
    public static <TResult> void m3510b(Status status, TResult tresult, C1647h<TResult> c1647h) {
        if (status.B1()) {
            c1647h.m1447c(tresult);
        } else {
            c1647h.m1448b(new ApiException(status));
        }
    }

    @Deprecated
    /* renamed from: c */
    public static AbstractC1646g<Void> m3509c(AbstractC1646g<Boolean> abstractC1646g) {
        return abstractC1646g.m1461j(new v1());
    }
}
