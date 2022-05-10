package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcid.class */
public final class zzcid extends zzaev {

    /* renamed from: a */
    public final String f26052a;

    /* renamed from: b */
    public final zzcdx f26053b;

    /* renamed from: c */
    public final zzcei f26054c;

    public zzcid(String str, zzcdx zzcdxVar, zzcei zzceiVar) {
        this.f26052a = str;
        this.f26053b = zzcdxVar;
        this.f26054c = zzceiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: C */
    public final String mo14238C() throws RemoteException {
        return this.f26054c.m14703b();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: a */
    public final String mo14237a() throws RemoteException {
        return this.f26052a;
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: a */
    public final void mo14236a(Bundle bundle) throws RemoteException {
        this.f26053b.m14763a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: b */
    public final boolean mo14235b(Bundle bundle) throws RemoteException {
        return this.f26053b.m14745c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: d */
    public final zzadw mo14234d() throws RemoteException {
        return this.f26054c.m14726A();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final void destroy() throws RemoteException {
        this.f26053b.mo14764a();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: e */
    public final String mo14233e() throws RemoteException {
        return this.f26054c.m14690g();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: e */
    public final void mo14232e(Bundle bundle) throws RemoteException {
        this.f26053b.m14748b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: f */
    public final String mo14231f() throws RemoteException {
        return this.f26054c.m14693d();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: g */
    public final String mo14230g() throws RemoteException {
        return this.f26054c.m14695c();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final Bundle getExtras() throws RemoteException {
        return this.f26054c.m14691f();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final zzyo getVideoController() throws RemoteException {
        return this.f26054c.m14683n();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: h */
    public final IObjectWrapper mo14229h() throws RemoteException {
        return this.f26054c.m14725B();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: i */
    public final List<?> mo14228i() throws RemoteException {
        return this.f26054c.m14689h();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: p0 */
    public final zzaee mo14227p0() throws RemoteException {
        return this.f26054c.m14724C();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    /* renamed from: v */
    public final IObjectWrapper mo14226v() throws RemoteException {
        return ObjectWrapper.m17020a(this.f26053b);
    }
}
