package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.q;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.common.api.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/f.class */
public final class C0820f {
    /* renamed from: a */
    public static <R extends AbstractC0823i> AbstractC0818e<R> m3644a(R r, AbstractC0816d abstractC0816d) {
        C0931r.m3307l(r, "Result must not be null");
        C0931r.m3317b(!r.m3639i().B1(), "Status code must not be SUCCESS");
        a aVar = new a(abstractC0816d, r);
        aVar.i(r);
        return aVar;
    }

    /* renamed from: b */
    public static AbstractC0818e<Status> m3643b(Status status, AbstractC0816d abstractC0816d) {
        C0931r.m3307l(status, "Result must not be null");
        q qVar = new q(abstractC0816d);
        qVar.i(status);
        return qVar;
    }
}
