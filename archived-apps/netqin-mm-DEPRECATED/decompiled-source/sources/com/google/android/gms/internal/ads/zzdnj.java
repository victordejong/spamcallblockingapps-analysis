package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import p131c.p161d.p170b.p224d.p252g.p253a.C3372ay;
import p131c.p161d.p170b.p224d.p252g.p253a.C4306zx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnj.class */
public final class zzdnj extends zzavb {

    /* renamed from: a */
    public final zzdnb f27528a;

    /* renamed from: b */
    public final zzdmc f27529b;

    /* renamed from: c */
    public final String f27530c;

    /* renamed from: d */
    public final zzdoj f27531d;

    /* renamed from: e */
    public final Context f27532e;

    /* renamed from: f */
    public zzcjg f27533f;

    public zzdnj(String str, zzdnb zzdnbVar, Context context, zzdmc zzdmcVar, zzdoj zzdojVar) {
        this.f27530c = str;
        this.f27528a = zzdnbVar;
        this.f27529b = zzdmcVar;
        this.f27531d = zzdojVar;
        this.f27532e = context;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: G */
    public final Bundle mo10911G() {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzcjg zzcjgVar = this.f27533f;
        return zzcjgVar != null ? zzcjgVar.m14152g() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: R1 */
    public final zzaux mo10910R1() {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzcjg zzcjgVar = this.f27533f;
        if (zzcjgVar != null) {
            return zzcjgVar.m14149j();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final String mo10909a() throws RemoteException {
        synchronized (this) {
            if (this.f27533f == null || this.f27533f.m15166d() == null) {
                return null;
            }
            return this.f27533f.m15166d().mo11114a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10908a(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        synchronized (this) {
            Preconditions.m17286a("#008 Must be called on the main UI thread.");
            if (this.f27533f == null) {
                zzbbq.m15852d("Rewarded can not be shown before loaded");
                this.f27529b.mo13498b(zzdpe.m13339a(zzdpg.NOT_READY, null, null));
                return;
            }
            this.f27533f.m14153a(z, (Activity) ObjectWrapper.m17021Q(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10907a(zzavd zzavdVar) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        this.f27529b.m13505a(zzavdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10905a(zzavl zzavlVar) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        this.f27529b.m13503a(zzavlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10904a(zzavt zzavtVar) {
        synchronized (this) {
            Preconditions.m17286a("#008 Must be called on the main UI thread.");
            zzdoj zzdojVar = this.f27531d;
            zzdojVar.f27637a = zzavtVar.f24539a;
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23869p0)).booleanValue()) {
                zzdojVar.f27638b = zzavtVar.f24540b;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10903a(zzvg zzvgVar, zzavg zzavgVar) throws RemoteException {
        synchronized (this) {
            m13482a(zzvgVar, zzavgVar, zzdoc.f27625b);
        }
    }

    /* renamed from: a */
    public final void m13482a(zzvg zzvgVar, zzavg zzavgVar, int i) throws RemoteException {
        synchronized (this) {
            Preconditions.m17286a("#008 Must be called on the main UI thread.");
            this.f27529b.m13504a(zzavgVar);
            zzp.m17969c();
            if (zzayu.m16078p(this.f27532e) && zzvgVar.f29019s == null) {
                zzbbq.m15856b("Failed to load the ad because app ID is missing.");
                this.f27529b.mo13335a(zzdpe.m13339a(zzdpg.APP_ID_MISSING, null, null));
            } else if (this.f27533f == null) {
                zzdmy zzdmyVar = new zzdmy(null);
                this.f27528a.m13493a(i);
                this.f27528a.mo13489a(zzvgVar, this.f27530c, zzdmyVar, new C3372ay(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10902a(zzyh zzyhVar) {
        if (zzyhVar == null) {
            this.f27529b.m13509a((AdMetadataListener) null);
        } else {
            this.f27529b.m13509a(new C4306zx(this, zzyhVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10901a(zzyi zzyiVar) {
        Preconditions.m17286a("setOnPaidEventListener must be called on the main UI thread.");
        this.f27529b.m13499a(zzyiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: b */
    public final void mo10900b(zzvg zzvgVar, zzavg zzavgVar) throws RemoteException {
        synchronized (this) {
            m13482a(zzvgVar, zzavgVar, zzdoc.f27626c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final boolean isLoaded() {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzcjg zzcjgVar = this.f27533f;
        return zzcjgVar != null && !zzcjgVar.m14150i();
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: l */
    public final zzyn mo10899l() {
        zzcjg zzcjgVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23697J3)).booleanValue() && (zzcjgVar = this.f27533f) != null) {
            return zzcjgVar.m15166d();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: m */
    public final void mo10898m(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            mo10908a(iObjectWrapper, false);
        }
    }
}
