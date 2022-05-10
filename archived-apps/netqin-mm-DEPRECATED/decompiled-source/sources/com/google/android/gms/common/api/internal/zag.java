package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.AbstractC3245b0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zag.class */
public final class zag extends AbstractC3245b0<Boolean> {

    /* renamed from: c */
    public final ListenerHolder.ListenerKey<?> f23277c;

    public zag(ListenerHolder.ListenerKey<?> listenerKey, TaskCompletionSource<Boolean> taskCompletionSource) {
        super(4, taskCompletionSource);
        this.f23277c = listenerKey;
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo17485a(zav zavVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zad
    /* renamed from: b */
    public final Feature[] mo17483b(GoogleApiManager.zaa<?> zaaVar) {
        zabs zabsVar = zaaVar.m17654c().get(this.f23277c);
        if (zabsVar == null) {
            return null;
        }
        return zabsVar.f23253a.m17601c();
    }

    @Override // com.google.android.gms.common.api.internal.zad
    /* renamed from: c */
    public final boolean mo17482c(GoogleApiManager.zaa<?> zaaVar) {
        zabs zabsVar = zaaVar.m17654c().get(this.f23277c);
        return zabsVar != null && zabsVar.f23253a.m17600d();
    }

    @Override // p131c.p161d.p170b.p224d.p238d.p239a.p240a.AbstractC3245b0
    /* renamed from: d */
    public final void mo17488d(GoogleApiManager.zaa<?> zaaVar) throws RemoteException {
        zabs remove = zaaVar.m17654c().remove(this.f23277c);
        if (remove != null) {
            remove.f23254b.m17593a(zaaVar.m17660b(), this.f11933b);
            remove.f23253a.m17604a();
            return;
        }
        this.f11933b.m8596b((TaskCompletionSource<T>) false);
    }
}
