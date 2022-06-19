package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.p027r.ThreadFactoryC0977b;
import g.f.a.d.c.e.d;
import g.f.a.d.c.e.i;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.android.gms.common.api.internal.m1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/m1.class */
public final class C0855m1 {

    /* renamed from: a */
    private static final ExecutorService f3437a = d.a().b(new ThreadFactoryC0977b("GAC_Transform"), i.a);

    /* renamed from: a */
    public static ExecutorService m3539a() {
        return f3437a;
    }
}
