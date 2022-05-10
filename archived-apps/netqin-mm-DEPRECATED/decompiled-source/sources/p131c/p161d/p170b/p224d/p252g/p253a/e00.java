package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.internal.ads.zzduc;
import com.google.android.gms.internal.ads.zzdui;
import com.google.android.gms.internal.ads.zzduk;
/* renamed from: c.d.b.d.g.a.e00 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/e00.class */
public final class e00 implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    public final zzduk f12787a;

    /* renamed from: b */
    public final zzduc f12788b;

    /* renamed from: c */
    public final Object f12789c = new Object();

    /* renamed from: d */
    public boolean f12790d = false;

    /* renamed from: e */
    public boolean f12791e = false;

    public e00(Context context, Looper looper, zzduc zzducVar) {
        this.f12788b = zzducVar;
        this.f12787a = new zzduk(context, looper, this, this, 12800000);
    }

    /* renamed from: a */
    public final void m27062a() {
        synchronized (this.f12789c) {
            if (this.f12787a.m17365c() || this.f12787a.m17358g()) {
                this.f12787a.mo10491b();
            }
            Binder.flushPendingCommands();
        }
    }

    /* renamed from: b */
    public final void m27061b() {
        synchronized (this.f12789c) {
            if (!this.f12790d) {
                this.f12790d = true;
                this.f12787a.m17350p();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.f12789c) {
            if (!this.f12791e) {
                this.f12791e = true;
                try {
                    this.f12787a.m13160H().mo13157a(new zzdui(this.f12788b.mo12349c()));
                    m27062a();
                } catch (Exception e) {
                    m27062a();
                }
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
