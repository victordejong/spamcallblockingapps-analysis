package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/l.class */
public final class ServiceConnectionC1670l implements ServiceConnection {

    /* renamed from: a */
    private final Set<ServiceConnection> f6838a = new HashSet();

    /* renamed from: b */
    private int f6839b = 2;

    /* renamed from: c */
    private boolean f6840c;

    /* renamed from: d */
    private IBinder f6841d;

    /* renamed from: e */
    private final GmsClientSupervisor.zza f6842e;

    /* renamed from: f */
    private ComponentName f6843f;

    /* renamed from: g */
    private final /* synthetic */ C1669k f6844g;

    public ServiceConnectionC1670l(C1669k kVar, GmsClientSupervisor.zza zzaVar) {
        this.f6844g = kVar;
        this.f6842e = zzaVar;
    }

    /* renamed from: a */
    public final void m5674a() {
        Handler handler;
        ConnectionTracker connectionTracker;
        Context context;
        handler = this.f6844g.f6834c;
        handler.removeMessages(1, this.f6842e);
        connectionTracker = this.f6844g.f6835d;
        context = this.f6844g.f6833b;
        connectionTracker.unbindService(context, this);
        this.f6840c = false;
        this.f6839b = 2;
    }

    /* renamed from: a */
    public final void m5673a(ServiceConnection serviceConnection) {
        Context context;
        ConnectionTracker unused;
        Context unused2;
        unused = this.f6844g.f6835d;
        unused2 = this.f6844g.f6833b;
        GmsClientSupervisor.zza zzaVar = this.f6842e;
        context = this.f6844g.f6833b;
        zzaVar.zzb(context);
        this.f6838a.add(serviceConnection);
    }

    /* renamed from: a */
    public final void m5672a(String str) {
        ConnectionTracker connectionTracker;
        Context context;
        Context context2;
        ConnectionTracker connectionTracker2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        this.f6839b = 3;
        connectionTracker = this.f6844g.f6835d;
        context = this.f6844g.f6833b;
        GmsClientSupervisor.zza zzaVar = this.f6842e;
        context2 = this.f6844g.f6833b;
        this.f6840c = connectionTracker.zza(context, str, zzaVar.zzb(context2), this, this.f6842e.zzq());
        if (this.f6840c) {
            handler = this.f6844g.f6834c;
            Message obtainMessage = handler.obtainMessage(1, this.f6842e);
            handler2 = this.f6844g.f6834c;
            j = this.f6844g.f6837f;
            handler2.sendMessageDelayed(obtainMessage, j);
            return;
        }
        this.f6839b = 2;
        try {
            connectionTracker2 = this.f6844g.f6835d;
            context3 = this.f6844g.f6833b;
            connectionTracker2.unbindService(context3, this);
        } catch (IllegalArgumentException e) {
        }
    }

    /* renamed from: b */
    public final void m5670b(ServiceConnection serviceConnection) {
        ConnectionTracker unused;
        Context unused2;
        unused = this.f6844g.f6835d;
        unused2 = this.f6844g.f6833b;
        this.f6838a.remove(serviceConnection);
    }

    /* renamed from: b */
    public final boolean m5671b() {
        return this.f6840c;
    }

    /* renamed from: c */
    public final int m5669c() {
        return this.f6839b;
    }

    /* renamed from: c */
    public final boolean m5668c(ServiceConnection serviceConnection) {
        return this.f6838a.contains(serviceConnection);
    }

    /* renamed from: d */
    public final boolean m5667d() {
        return this.f6838a.isEmpty();
    }

    /* renamed from: e */
    public final IBinder m5666e() {
        return this.f6841d;
    }

    /* renamed from: f */
    public final ComponentName m5665f() {
        return this.f6843f;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f6844g.f6832a;
        synchronized (hashMap) {
            handler = this.f6844g.f6834c;
            handler.removeMessages(1, this.f6842e);
            this.f6841d = iBinder;
            this.f6843f = componentName;
            for (ServiceConnection serviceConnection : this.f6838a) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f6839b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f6844g.f6832a;
        synchronized (hashMap) {
            handler = this.f6844g.f6834c;
            handler.removeMessages(1, this.f6842e);
            this.f6841d = null;
            this.f6843f = componentName;
            for (ServiceConnection serviceConnection : this.f6838a) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f6839b = 2;
        }
    }
}
