package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgk.class */
public abstract class zzcgk implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    protected final zzazl<InputStream> f13111a = new zzazl<>();

    /* renamed from: b */
    protected final Object f13112b = new Object();

    /* renamed from: c */
    protected boolean f13113c = false;

    /* renamed from: d */
    protected boolean f13114d = false;

    /* renamed from: e */
    protected zzaqk f13115e;

    /* renamed from: f */
    protected zzaps f13116f;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m3779a() {
        synchronized (this.f13112b) {
            this.f13114d = true;
            if (this.f13116f.isConnected() || this.f13116f.isConnecting()) {
                this.f13116f.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    public void onConnectionFailed(ConnectionResult connectionResult) {
        zzavs.zzea("Disconnected from remote ad request service.");
        this.f13111a.setException(new zzcgr(0));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public void onConnectionSuspended(int i) {
        zzavs.zzea("Cannot connect to remote service, fallback to local instance.");
    }
}
