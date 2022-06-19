package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.AbstractC0818e;
import com.google.android.gms.common.api.AbstractC0823i;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.C0822h;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.AbstractC1646g;
import com.google.android.gms.tasks.C1647h;
/* renamed from: com.google.android.gms.common.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/q.class */
public class C0928q {

    /* renamed from: a */
    private static final AbstractC0930b f3559a = new e0();

    /* renamed from: com.google.android.gms.common.internal.q$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/q$a.class */
    public interface AbstractC0929a<R extends AbstractC0823i, T> {
        /* renamed from: a */
        T m3320a(R r);
    }

    /* renamed from: com.google.android.gms.common.internal.q$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/q$b.class */
    public interface AbstractC0930b {
        /* renamed from: z */
        ApiException m3319z(Status status);
    }

    /* renamed from: a */
    public static <R extends AbstractC0823i, T extends C0822h<R>> AbstractC1646g<T> m3323a(AbstractC0818e<R> abstractC0818e, T t) {
        return m3322b(abstractC0818e, new g0(t));
    }

    /* renamed from: b */
    public static <R extends AbstractC0823i, T> AbstractC1646g<T> m3322b(AbstractC0818e<R> abstractC0818e, AbstractC0929a<R, T> abstractC0929a) {
        AbstractC0930b abstractC0930b = f3559a;
        C1647h c1647h = new C1647h();
        abstractC0818e.m3650a(new d0(abstractC0818e, c1647h, abstractC0929a, abstractC0930b));
        return c1647h.m1449a();
    }

    /* renamed from: c */
    public static <R extends AbstractC0823i> AbstractC1646g<Void> m3321c(AbstractC0818e<R> abstractC0818e) {
        return m3322b(abstractC0818e, new f0());
    }
}
