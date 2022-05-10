package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.ads.zzcqc;
import java.io.InputStream;
import p131c.p161d.p170b.p224d.p252g.p253a.C3998rm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqc.class */
public final class zzcqc extends zzcpv {

    /* renamed from: g */
    public String f26398g;

    /* renamed from: h */
    public int f26399h = C3998rm.f15030a;

    public zzcqc(Context context) {
        this.f26395f = new zzask(context, zzp.m17955q().m15947b(), this, this);
    }

    /* renamed from: a */
    public final zzdzc<InputStream> m13939a(zzatc zzatcVar) {
        synchronized (this.f26391b) {
            if (this.f26399h != C3998rm.f15030a && this.f26399h != C3998rm.f15031b) {
                return zzdyq.m12987a((Throwable) new zzcqm(zzdpg.INVALID_REQUEST));
            } else if (this.f26392c) {
                return this.f26390a;
            } else {
                this.f26399h = C3998rm.f15031b;
                this.f26392c = true;
                this.f26394e = zzatcVar;
                this.f26395f.m17350p();
                this.f26390a.mo12976a(new Runnable(this) { // from class: c.d.b.d.g.a.qm

                    /* renamed from: a */
                    public final zzcqc f14827a;

                    {
                        this.f14827a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f14827a.m13943a();
                    }
                }, zzbbz.f24769f);
                return this.f26390a;
            }
        }
    }

    /* renamed from: a */
    public final zzdzc<InputStream> m13938a(String str) {
        synchronized (this.f26391b) {
            if (this.f26399h != C3998rm.f15030a && this.f26399h != C3998rm.f15032c) {
                return zzdyq.m12987a((Throwable) new zzcqm(zzdpg.INVALID_REQUEST));
            } else if (this.f26392c) {
                return this.f26390a;
            } else {
                this.f26399h = C3998rm.f15032c;
                this.f26392c = true;
                this.f26398g = str;
                this.f26395f.m17350p();
                this.f26390a.mo12976a(new Runnable(this) { // from class: c.d.b.d.g.a.sm

                    /* renamed from: a */
                    public final zzcqc f15315a;

                    {
                        this.f15315a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f15315a.m13943a();
                    }
                }, zzbbz.f24769f);
                return this.f26390a;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.f26391b) {
            if (!this.f26393d) {
                this.f26393d = true;
                try {
                    if (this.f26399h == C3998rm.f15031b) {
                        this.f26395f.m16383H().mo13913c(this.f26394e, new zzcpy(this));
                    } else if (this.f26399h == C3998rm.f15032c) {
                        this.f26395f.m16383H().mo13917a(this.f26398g, new zzcpy(this));
                    } else {
                        this.f26390a.m15834a(new zzcqm(zzdpg.INTERNAL_ERROR));
                    }
                } catch (RemoteException | IllegalArgumentException e) {
                    this.f26390a.m15834a(new zzcqm(zzdpg.INTERNAL_ERROR));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcpv, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zzbbq.m15858a("Cannot connect to remote service, fallback to local instance.");
        this.f26390a.m15834a(new zzcqm(zzdpg.INTERNAL_ERROR));
    }
}
