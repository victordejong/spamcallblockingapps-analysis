package com.google.android.gms.gass;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.gass.internal.zzd;
import com.google.android.gms.gass.internal.zzg;
import com.google.android.gms.gass.internal.zzm;
import com.google.android.gms.gass.internal.zzo;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.gass.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/d.class */
public final class C1712d implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    private zzd f7077a;

    /* renamed from: b */
    private final String f7078b;

    /* renamed from: c */
    private final String f7079c;

    /* renamed from: g */
    private final AdShield2Logger f7083g;

    /* renamed from: d */
    private final int f7080d = 1;

    /* renamed from: f */
    private final HandlerThread f7082f = new HandlerThread("GassDGClient");

    /* renamed from: h */
    private final long f7084h = System.currentTimeMillis();

    /* renamed from: e */
    private final LinkedBlockingQueue<zzo> f7081e = new LinkedBlockingQueue<>();

    public C1712d(Context context, String str, String str2, AdShield2Logger adShield2Logger) {
        this.f7078b = str;
        this.f7079c = str2;
        this.f7083g = adShield2Logger;
        this.f7082f.start();
        this.f7077a = new zzd(context, this.f7082f.getLooper(), this, this);
        this.f7077a.checkAvailabilityAndConnect();
    }

    /* renamed from: a */
    private final void m5518a(int i, long j, Exception exc) {
        AdShield2Logger adShield2Logger = this.f7083g;
        if (adShield2Logger != null) {
            adShield2Logger.logException(i, System.currentTimeMillis() - j, exc);
        }
    }

    /* renamed from: b */
    private final zzg m5517b() {
        try {
            return this.f7077a.zzaqp();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: c */
    private final void m5516c() {
        zzd zzdVar = this.f7077a;
        if (zzdVar == null) {
            return;
        }
        if (zzdVar.isConnected() || this.f7077a.isConnecting()) {
            this.f7077a.disconnect();
        }
    }

    /* renamed from: d */
    private static zzo m5515d() {
        return new zzo(null);
    }

    /* renamed from: a */
    public final zzo m5519a() {
        zzo zzoVar;
        try {
            zzoVar = this.f7081e.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            m5518a(AdShield2Logger.EVENTID_GASSDGCLIENT_EXCEPTION, this.f7084h, e);
            zzoVar = null;
        }
        m5518a(AdShield2Logger.EVENTID_LATENCY_GASSDGCLIENT_GET_PROGRAM, this.f7084h, null);
        return zzoVar == null ? m5515d() : zzoVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzg b = m5517b();
        if (b != null) {
            try {
                this.f7081e.put(b.zza(new zzm(this.f7080d, this.f7078b, this.f7079c)));
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.f7081e.put(m5515d());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            this.f7081e.put(m5515d());
        } catch (InterruptedException e) {
        }
    }
}
