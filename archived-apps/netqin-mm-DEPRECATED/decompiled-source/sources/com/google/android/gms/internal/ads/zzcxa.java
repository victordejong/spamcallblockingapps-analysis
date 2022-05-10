package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxa.class */
public class zzcxa extends zzcyc {

    /* renamed from: j */
    public zzcal f26697j;

    public zzcxa(zzbuc zzbucVar, zzbuu zzbuuVar, zzbvh zzbvhVar, zzbvr zzbvrVar, zzbuk zzbukVar, zzbyf zzbyfVar, zzcau zzcauVar, zzbwa zzbwaVar, zzcal zzcalVar, zzbxy zzbxyVar) {
        super(zzbucVar, zzbuuVar, zzbvhVar, zzbvrVar, zzbyfVar, zzbwaVar, zzcauVar, zzbxyVar, zzbukVar);
        this.f26697j = zzcalVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcyc, com.google.android.gms.internal.ads.zzanh
    /* renamed from: P1 */
    public final void mo13794P1() throws RemoteException {
        this.f26697j.mo14155o();
    }

    @Override // com.google.android.gms.internal.ads.zzcyc, com.google.android.gms.internal.ads.zzanh
    /* renamed from: X1 */
    public final void mo13793X1() {
        this.f26697j.mo14154p();
    }

    @Override // com.google.android.gms.internal.ads.zzcyc, com.google.android.gms.internal.ads.zzanh
    /* renamed from: a */
    public final void mo13788a(zzauv zzauvVar) {
        super.mo13788a(zzauvVar);
        this.f26697j.mo14156a(zzauvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcyc, com.google.android.gms.internal.ads.zzanh
    /* renamed from: a */
    public final void mo13787a(zzaux zzauxVar) throws RemoteException {
        super.mo13787a(zzauxVar);
        this.f26697j.mo14156a(new zzauv(zzauxVar.getType(), zzauxVar.mo16293y()));
    }

    @Override // com.google.android.gms.internal.ads.zzcyc, com.google.android.gms.internal.ads.zzanh
    /* renamed from: h0 */
    public final void mo13781h0() {
        this.f26697j.mo14155o();
    }
}
