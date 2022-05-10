package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbok.class */
public final class zzbok extends zzsf {

    /* renamed from: a */
    public final zzboh f25280a;

    /* renamed from: b */
    public final zzxc f25281b;

    /* renamed from: c */
    public final zzdkc f25282c;

    public zzbok(zzboh zzbohVar, zzxc zzxcVar, zzdkc zzdkcVar) {
        this.f25280a = zzbohVar;
        this.f25281b = zzxcVar;
        this.f25282c = zzdkcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzsg
    /* renamed from: a */
    public final void mo11477a(IObjectWrapper iObjectWrapper, zzsq zzsqVar) {
        try {
            this.f25282c.m13539a(zzsqVar);
            this.f25280a.m15238a((Activity) ObjectWrapper.m17021Q(iObjectWrapper), zzsqVar);
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsg
    /* renamed from: a */
    public final void mo11476a(zzsm zzsmVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzsg
    /* renamed from: e1 */
    public final zzxc mo11475e1() {
        return this.f25281b;
    }

    @Override // com.google.android.gms.internal.ads.zzsg
    /* renamed from: l */
    public final zzyn mo11474l() {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23697J3)).booleanValue()) {
            return null;
        }
        return this.f25280a.m15166d();
    }
}
