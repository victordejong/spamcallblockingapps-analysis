package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import p131c.p161d.p170b.p224d.p252g.p253a.BinderC3850np;
import p131c.p161d.p170b.p224d.p252g.p253a.C3739kp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvi.class */
public final class zzcvi implements zzcti<zzcbe, zzaph, zzcuu> {

    /* renamed from: a */
    public final Context f26591a;

    /* renamed from: b */
    public final zzcce f26592b;

    public zzcvi(Context context, zzcce zzcceVar) {
        this.f26591a = context;
        this.f26592b = zzcceVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: a */
    public final /* synthetic */ zzcbe mo13807a(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzaph, zzcuu> zzctcVar) throws zzdos, zzcwn {
        C3739kp kpVar = new C3739kp(zzdnvVar, zzctcVar.f26497b, false);
        zzcbg a = this.f26592b.mo14814a(new zzbre(zzdogVar, zzdnvVar, zzctcVar.f26496a), new zzcbf(kpVar));
        kpVar.m26708a(a.mo15160d());
        zzctcVar.f26498c.m13836a((zzanh) a.mo15157g());
        return a.mo14839j();
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: b */
    public final void mo13806b(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzaph, zzcuu> zzctcVar) throws zzdos {
        try {
            zzctcVar.f26497b.mo16465t(zzdnvVar.f27574U);
            zzctcVar.f26497b.mo16475a(zzdnvVar.f27568O, zzdnvVar.f27605u.toString(), zzdogVar.f27633a.f27632a.f27642d, ObjectWrapper.m17020a(this.f26591a), new BinderC3850np(this, zzctcVar), zzctcVar.f26498c);
        } catch (RemoteException e) {
            throw new zzdos(e);
        }
    }
}
