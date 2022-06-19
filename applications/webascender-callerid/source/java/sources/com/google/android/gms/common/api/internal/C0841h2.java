package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.b;
import com.google.android.gms.tasks.C1647h;
import f.e.a;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.common.api.internal.h2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/h2.class */
public final class C0841h2 {

    /* renamed from: a */
    private final a<C0825b<?>, b> f3408a;

    /* renamed from: b */
    private final a<C0825b<?>, String> f3409b;

    /* renamed from: c */
    private final C1647h<Map<C0825b<?>, String>> f3410c;

    /* renamed from: d */
    private int f3411d;

    /* renamed from: e */
    private boolean f3412e;

    /* renamed from: a */
    public final Set<C0825b<?>> m3566a() {
        return this.f3408a.keySet();
    }

    /* renamed from: b */
    public final void m3565b(C0825b<?> c0825b, b bVar, String str) {
        this.f3408a.put(c0825b, bVar);
        this.f3409b.put(c0825b, str);
        this.f3411d--;
        if (!bVar.C1()) {
            this.f3412e = true;
        }
        if (this.f3411d == 0) {
            if (!this.f3412e) {
                this.f3410c.m1447c(this.f3409b);
                return;
            }
            this.f3410c.m1448b(new AvailabilityException(this.f3408a));
        }
    }
}
