package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.common.zze;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k.class */
public final class C1669k extends GmsClientSupervisor implements Handler.Callback {

    /* renamed from: b */
    private final Context f6833b;

    /* renamed from: c */
    private final Handler f6834c;

    /* renamed from: a */
    private final HashMap<GmsClientSupervisor.zza, ServiceConnectionC1670l> f6832a = new HashMap<>();

    /* renamed from: d */
    private final ConnectionTracker f6835d = ConnectionTracker.getInstance();

    /* renamed from: e */
    private final long f6836e = 5000;

    /* renamed from: f */
    private final long f6837f = 300000;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1669k(Context context) {
        this.f6833b = context.getApplicationContext();
        this.f6834c = new zze(context.getMainLooper(), this);
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    /* renamed from: a */
    protected final void mo5681a(GmsClientSupervisor.zza zzaVar, ServiceConnection serviceConnection) {
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f6832a) {
            ServiceConnectionC1670l lVar = this.f6832a.get(zzaVar);
            if (lVar == null) {
                String valueOf = String.valueOf(zzaVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (lVar.m5668c(serviceConnection)) {
                lVar.m5670b(serviceConnection);
                if (lVar.m5667d()) {
                    this.f6834c.sendMessageDelayed(this.f6834c.obtainMessage(0, zzaVar), this.f6836e);
                }
            } else {
                String valueOf2 = String.valueOf(zzaVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    /* renamed from: a */
    public final boolean mo5680a(GmsClientSupervisor.zza zzaVar, ServiceConnection serviceConnection, String str) {
        ServiceConnectionC1670l lVar;
        boolean b;
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f6832a) {
            ServiceConnectionC1670l lVar2 = this.f6832a.get(zzaVar);
            if (lVar2 == null) {
                ServiceConnectionC1670l lVar3 = new ServiceConnectionC1670l(this, zzaVar);
                lVar3.m5673a(serviceConnection);
                lVar3.m5672a(str);
                this.f6832a.put(zzaVar, lVar3);
                lVar = lVar3;
            } else {
                this.f6834c.removeMessages(0, zzaVar);
                if (!lVar2.m5668c(serviceConnection)) {
                    lVar2.m5673a(serviceConnection);
                    int c = lVar2.m5669c();
                    if (c == 1) {
                        serviceConnection.onServiceConnected(lVar2.m5665f(), lVar2.m5666e());
                        lVar = lVar2;
                    } else if (c != 2) {
                        lVar = lVar2;
                    } else {
                        lVar2.m5672a(str);
                        lVar = lVar2;
                    }
                } else {
                    String valueOf = String.valueOf(zzaVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            b = lVar.m5671b();
        }
        return b;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (this.f6832a) {
                GmsClientSupervisor.zza zzaVar = (GmsClientSupervisor.zza) message.obj;
                ServiceConnectionC1670l lVar = this.f6832a.get(zzaVar);
                if (lVar != null && lVar.m5667d()) {
                    if (lVar.m5671b()) {
                        lVar.m5674a();
                    }
                    this.f6832a.remove(zzaVar);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            synchronized (this.f6832a) {
                GmsClientSupervisor.zza zzaVar2 = (GmsClientSupervisor.zza) message.obj;
                ServiceConnectionC1670l lVar2 = this.f6832a.get(zzaVar2);
                if (lVar2 != null && lVar2.m5669c() == 3) {
                    String valueOf = String.valueOf(zzaVar2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName f = lVar2.m5665f();
                    ComponentName componentName = f;
                    if (f == null) {
                        componentName = zzaVar2.getComponentName();
                    }
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        componentName2 = new ComponentName(zzaVar2.getPackage(), "unknown");
                    }
                    lVar2.onServiceDisconnected(componentName2);
                }
            }
            return true;
        }
    }
}
