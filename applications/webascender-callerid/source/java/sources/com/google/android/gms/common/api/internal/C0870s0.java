package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.p027r.ThreadFactoryC0977b;
import g.f.a.d.c.e.d;
import g.f.a.d.c.e.i;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.android.gms.common.api.internal.s0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/s0.class */
public final class C0870s0 {

    /* renamed from: a */
    private static final ExecutorService f3449a = d.a().a(2, new ThreadFactoryC0977b("GAC_Executor"), i.b);

    /* renamed from: a */
    public static ExecutorService m3508a() {
        return f3449a;
    }
}
