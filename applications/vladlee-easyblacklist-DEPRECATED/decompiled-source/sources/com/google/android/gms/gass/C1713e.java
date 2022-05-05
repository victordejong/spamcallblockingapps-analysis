package com.google.android.gms.gass;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.gass.internal.zzb;
import com.google.android.gms.gass.internal.zzd;
import com.google.android.gms.internal.ads.zzddn;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.gass.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/e.class */
public final class C1713e implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    private final zzd f7085a;

    /* renamed from: b */
    private final zzddn f7086b;

    /* renamed from: c */
    private final Object f7087c = new Object();

    /* renamed from: d */
    private boolean f7088d = false;

    /* renamed from: e */
    private boolean f7089e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1713e(Context context, Looper looper, zzddn zzddnVar) {
        this.f7086b = zzddnVar;
        this.f7085a = new zzd(context, looper, this, this);
    }

    /* renamed from: b */
    private final void m5513b() {
        synchronized (this.f7087c) {
            if (this.f7085a.isConnected() || this.f7085a.isConnecting()) {
                this.f7085a.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5514a() {
        synchronized (this.f7087c) {
            if (!this.f7088d) {
                this.f7088d = true;
                this.f7085a.checkAvailabilityAndConnect();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.f7087c) {
            if (!this.f7089e) {
                this.f7089e = true;
                try {
                    this.f7085a.zzaqp().zza(new zzb(this.f7086b.toByteArray()));
                } catch (Exception e) {
                }
                m5513b();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
