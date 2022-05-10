package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import p131c.p161d.p170b.p224d.p252g.p253a.C3413by;
import p131c.p161d.p170b.p224d.p252g.p253a.C3451cy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnp.class */
public final class zzdnp extends zzauc {

    /* renamed from: a */
    public final zzdnb f27539a;

    /* renamed from: b */
    public final zzdmc f27540b;

    /* renamed from: c */
    public final zzdoj f27541c;

    /* renamed from: d */
    public zzcjg f27542d;

    /* renamed from: e */
    public boolean f27543e = false;

    public zzdnp(zzdnb zzdnbVar, zzdmc zzdmcVar, zzdoj zzdojVar) {
        this.f27539a = zzdnbVar;
        this.f27540b = zzdmcVar;
        this.f27541c = zzdojVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: A */
    public final void mo13476A(String str) throws RemoteException {
        synchronized (this) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23869p0)).booleanValue()) {
                Preconditions.m17286a("#008 Must be called on the main UI thread.: setCustomData");
                this.f27541c.f27638b = str;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: C */
    public final void mo13475C(IObjectWrapper iObjectWrapper) throws RemoteException {
        Activity activity;
        synchronized (this) {
            Preconditions.m17286a("showAd must be called on the main UI thread.");
            if (this.f27542d != null) {
                if (iObjectWrapper != null) {
                    Object Q = ObjectWrapper.m17021Q(iObjectWrapper);
                    if (Q instanceof Activity) {
                        activity = (Activity) Q;
                        this.f27542d.m14153a(this.f27543e, activity);
                    }
                }
                activity = null;
                this.f27542d.m14153a(this.f27543e, activity);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: E */
    public final void mo13474E(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.m17286a("pause must be called on the main UI thread.");
            if (this.f27542d != null) {
                this.f27542d.m15167c().m15030a(iObjectWrapper == null ? null : (Context) ObjectWrapper.m17021Q(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: G */
    public final Bundle mo13473G() {
        Preconditions.m17286a("getAdMetadata can only be called from the UI thread.");
        zzcjg zzcjgVar = this.f27542d;
        return zzcjgVar != null ? zzcjgVar.m14152g() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: O */
    public final void mo13472O(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.m17286a("destroy must be called on the main UI thread.");
            Context context = null;
            this.f27540b.m13509a((AdMetadataListener) null);
            if (this.f27542d != null) {
                if (iObjectWrapper != null) {
                    context = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
                }
                this.f27542d.m15167c().m15027d(context);
            }
        }
    }

    /* renamed from: Q1 */
    public final boolean m13471Q1() {
        boolean z;
        synchronized (this) {
            if (this.f27542d != null) {
                if (!this.f27542d.m14151h()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final String mo13470a() throws RemoteException {
        synchronized (this) {
            if (this.f27542d == null || this.f27542d.m15166d() == null) {
                return null;
            }
            return this.f27542d.m15166d().mo11114a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final void mo13469a(zzaub zzaubVar) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.f27540b.m13507a(zzaubVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final void mo13468a(zzaug zzaugVar) throws RemoteException {
        Preconditions.m17286a("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f27540b.m13506a(zzaugVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final void mo13467a(zzaum zzaumVar) throws RemoteException {
        synchronized (this) {
            Preconditions.m17286a("loadAd must be called on the main UI thread.");
            if (!zzabd.m16912a(zzaumVar.f24525b)) {
                if (m13471Q1()) {
                    if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23656B2)).booleanValue()) {
                        return;
                    }
                }
                zzdmy zzdmyVar = new zzdmy(null);
                this.f27542d = null;
                this.f27539a.m13493a(zzdoc.f27624a);
                this.f27539a.mo13489a(zzaumVar.f24524a, zzaumVar.f24525b, zzdmyVar, new C3413by(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final void mo13464a(zzxj zzxjVar) {
        Preconditions.m17286a("setAdMetadataListener can only be called from the UI thread.");
        if (zzxjVar == null) {
            this.f27540b.m13509a((AdMetadataListener) null);
        } else {
            this.f27540b.m13509a(new C3451cy(this, zzxjVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final void mo13463a(boolean z) {
        synchronized (this) {
            Preconditions.m17286a("setImmersiveMode must be called on the main UI thread.");
            this.f27543e = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: d */
    public final void mo13462d(String str) throws RemoteException {
        synchronized (this) {
            Preconditions.m17286a("setUserId must be called on the main UI thread.");
            this.f27541c.f27637a = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    public final void destroy() throws RemoteException {
        mo13472O(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    public final boolean isLoaded() throws RemoteException {
        Preconditions.m17286a("isLoaded must be called on the main UI thread.");
        return m13471Q1();
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: l */
    public final zzyn mo13461l() throws RemoteException {
        synchronized (this) {
            if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23697J3)).booleanValue()) {
                return null;
            }
            if (this.f27542d == null) {
                return null;
            }
            return this.f27542d.m15166d();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    public final void pause() {
        mo13474E(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    public final void resume() {
        mo13458z(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    public final void show() throws RemoteException {
        synchronized (this) {
            mo13475C(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: u */
    public final void mo13460u(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: v0 */
    public final boolean mo13459v0() {
        zzcjg zzcjgVar = this.f27542d;
        return zzcjgVar != null && zzcjgVar.m14148k();
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: z */
    public final void mo13458z(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.m17286a("resume must be called on the main UI thread.");
            if (this.f27542d != null) {
                this.f27542d.m15167c().m15028c(iObjectWrapper == null ? null : (Context) ObjectWrapper.m17021Q(iObjectWrapper));
            }
        }
    }
}
