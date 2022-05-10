package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpv.class */
public abstract class zzcpv implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    public final zzbcg<InputStream> f26390a = new zzbcg<>();

    /* renamed from: b */
    public final Object f26391b = new Object();

    /* renamed from: c */
    public boolean f26392c = false;

    /* renamed from: d */
    public boolean f26393d = false;

    /* renamed from: e */
    public zzatc f26394e;

    /* renamed from: f */
    public zzask f26395f;

    /* renamed from: a */
    public final void m13943a() {
        synchronized (this.f26391b) {
            this.f26393d = true;
            if (this.f26395f.m17365c() || this.f26395f.m17358g()) {
                this.f26395f.mo10491b();
            }
            Binder.flushPendingCommands();
        }
    }

    public void onConnectionFailed(ConnectionResult connectionResult) {
        zzbbq.m15858a("Disconnected from remote ad request service.");
        this.f26390a.m15834a(new zzcqm(zzdpg.INTERNAL_ERROR));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public void onConnectionSuspended(int i) {
        zzbbq.m15858a("Cannot connect to remote service, fallback to local instance.");
    }
}
