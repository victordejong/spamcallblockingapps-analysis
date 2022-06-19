package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.C0807a;
import com.google.android.gms.common.api.C0807a.AbstractC0808b;
import com.google.android.gms.common.api.internal.C0842i;
import com.google.android.gms.tasks.C1647h;
/* renamed from: com.google.android.gms.common.api.internal.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/t.class */
public abstract class AbstractC0872t<A extends C0807a.AbstractC0808b, L> {

    /* renamed from: a */
    private final C0842i.C0843a<L> f3450a;

    protected AbstractC0872t(C0842i.C0843a<L> c0843a) {
        this.f3450a = c0843a;
    }

    /* renamed from: a */
    public C0842i.C0843a<L> m3507a() {
        return this.f3450a;
    }

    /* renamed from: b */
    protected abstract void m3506b(A a, C1647h<Boolean> c1647h) throws RemoteException;
}
