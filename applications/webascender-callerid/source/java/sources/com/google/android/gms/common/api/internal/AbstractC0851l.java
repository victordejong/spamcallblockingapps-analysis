package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.C0807a;
import com.google.android.gms.common.api.C0807a.AbstractC0808b;
import com.google.android.gms.common.api.internal.C0842i;
import com.google.android.gms.common.d;
import com.google.android.gms.tasks.C1647h;
/* renamed from: com.google.android.gms.common.api.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/l.class */
public abstract class AbstractC0851l<A extends C0807a.AbstractC0808b, L> {

    /* renamed from: a */
    private final C0842i<L> f3423a;

    /* renamed from: b */
    private final d[] f3424b;

    /* renamed from: c */
    private final boolean f3425c;

    protected AbstractC0851l(C0842i<L> c0842i, d[] dVarArr, boolean z) {
        this.f3423a = c0842i;
        this.f3424b = dVarArr;
        this.f3425c = z;
    }

    /* renamed from: a */
    public void m3551a() {
        this.f3423a.m3564a();
    }

    /* renamed from: b */
    public C0842i.C0843a<L> m3550b() {
        return this.f3423a.m3563b();
    }

    /* renamed from: c */
    public d[] m3549c() {
        return this.f3424b;
    }

    /* renamed from: d */
    protected abstract void m3548d(A a, C1647h<Void> c1647h) throws RemoteException;

    /* renamed from: e */
    public final boolean m3547e() {
        return this.f3425c;
    }
}
