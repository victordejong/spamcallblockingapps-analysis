package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcik.class */
public final class zzcik extends zzagd {

    /* renamed from: a */
    public final String f26072a;

    /* renamed from: b */
    public final zzcdx f26073b;

    /* renamed from: c */
    public final zzcei f26074c;

    public zzcik(String str, zzcdx zzcdxVar, zzcei zzceiVar) {
        this.f26072a = str;
        this.f26073b = zzcdxVar;
        this.f26074c = zzceiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: A1 */
    public final List<?> mo14207A1() throws RemoteException {
        return mo14196a1() ? this.f26074c.m14687j() : Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: C */
    public final String mo14206C() throws RemoteException {
        return this.f26074c.m14703b();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: D */
    public final String mo14205D() throws RemoteException {
        return this.f26074c.m14684m();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: Z */
    public final void mo14204Z() {
        this.f26073b.m14733p();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: Z1 */
    public final void mo14203Z1() {
        this.f26073b.m14740i();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final String mo14202a() throws RemoteException {
        return this.f26072a;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final void mo14201a(Bundle bundle) throws RemoteException {
        this.f26073b.m14763a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final void mo14200a(zzafz zzafzVar) throws RemoteException {
        this.f26073b.m14757a(zzafzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final void mo14199a(zzxz zzxzVar) throws RemoteException {
        this.f26073b.m14755a(zzxzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final void mo14198a(zzyd zzydVar) throws RemoteException {
        this.f26073b.m14754a(zzydVar);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final void mo14197a(zzyi zzyiVar) throws RemoteException {
        this.f26073b.m14753a(zzyiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a1 */
    public final boolean mo14196a1() throws RemoteException {
        return !this.f26074c.m14687j().isEmpty() && this.f26074c.m14679r() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: b */
    public final boolean mo14195b(Bundle bundle) throws RemoteException {
        return this.f26073b.m14745c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: b0 */
    public final void mo14194b0() throws RemoteException {
        this.f26073b.m14742g();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: d */
    public final zzadw mo14193d() throws RemoteException {
        return this.f26074c.m14726A();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    public final void destroy() throws RemoteException {
        this.f26073b.mo14764a();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: e */
    public final String mo14192e() throws RemoteException {
        return this.f26074c.m14690g();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: e */
    public final void mo14191e(Bundle bundle) throws RemoteException {
        this.f26073b.m14748b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: f */
    public final String mo14190f() throws RemoteException {
        return this.f26074c.m14693d();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: g */
    public final String mo14189g() throws RemoteException {
        return this.f26074c.m14695c();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    public final Bundle getExtras() throws RemoteException {
        return this.f26074c.m14691f();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    public final double getStarRating() throws RemoteException {
        return this.f26074c.m14685l();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    public final zzyo getVideoController() throws RemoteException {
        return this.f26074c.m14683n();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: h */
    public final IObjectWrapper mo14188h() throws RemoteException {
        return this.f26074c.m14725B();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: i */
    public final List<?> mo14187i() throws RemoteException {
        return this.f26074c.m14689h();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: l */
    public final zzyn mo14186l() throws RemoteException {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23697J3)).booleanValue()) {
            return null;
        }
        return this.f26073b.m15166d();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: q */
    public final zzaee mo14185q() throws RemoteException {
        return this.f26074c.m14671z();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: s */
    public final String mo14184s() throws RemoteException {
        return this.f26074c.m14686k();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: t0 */
    public final boolean mo14183t0() {
        return this.f26073b.m14741h();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: u0 */
    public final zzadz mo14182u0() throws RemoteException {
        return this.f26073b.m14736m().m14731a();
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: v */
    public final IObjectWrapper mo14181v() throws RemoteException {
        return ObjectWrapper.m17020a(this.f26073b);
    }
}
