package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4812s6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4821t6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4830u6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4839v6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4848w6;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjl.class */
public final class zzjl implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    public volatile boolean f30095a;

    /* renamed from: b */
    public volatile zzer f30096b;

    /* renamed from: c */
    public final /* synthetic */ zzir f30097c;

    public zzjl(zzir zzirVar) {
        this.f30097c = zzirVar;
    }

    /* renamed from: a */
    public final void m8882a() {
        if (this.f30096b != null && (this.f30096b.m17365c() || this.f30096b.m17358g())) {
            this.f30096b.mo10491b();
        }
        this.f30096b = null;
    }

    /* renamed from: a */
    public final void m8881a(Intent intent) {
        zzjl zzjlVar;
        this.f30097c.mo9085c();
        Context B = this.f30097c.mo8846B();
        ConnectionTracker a = ConnectionTracker.m17130a();
        synchronized (this) {
            if (this.f30095a) {
                this.f30097c.mo8789p().m9144y().m9143a("Connection attempt already in progress");
                return;
            }
            this.f30097c.mo8789p().m9144y().m9143a("Using local app measurement service");
            this.f30095a = true;
            zzjlVar = this.f30097c.f30088c;
            a.m17129a(B, intent, zzjlVar, 129);
        }
    }

    /* renamed from: b */
    public final void m8879b() {
        this.f30097c.mo9085c();
        Context B = this.f30097c.mo8846B();
        synchronized (this) {
            if (this.f30095a) {
                this.f30097c.mo8789p().m9144y().m9143a("Connection attempt already in progress");
            } else if (this.f30096b == null || (!this.f30096b.m17358g() && !this.f30096b.m17365c())) {
                this.f30096b = new zzer(B, Looper.getMainLooper(), this, this);
                this.f30097c.mo8789p().m9144y().m9143a("Connecting to remote service");
                this.f30095a = true;
                this.f30096b.m17350p();
            } else {
                this.f30097c.mo8789p().m9144y().m9143a("Already awaiting connection attempt");
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Preconditions.m17286a("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                this.f30097c.mo8795j().m9093a(new RunnableC4821t6(this, this.f30096b.m17344y()));
            } catch (DeadObjectException | IllegalStateException e) {
                this.f30096b = null;
                this.f30095a = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Preconditions.m17286a("MeasurementServiceConnection.onConnectionFailed");
        zzeq m = this.f30097c.f17262a.m9049m();
        if (m != null) {
            m.m9149t().m9142a("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f30095a = false;
            this.f30096b = null;
        }
        this.f30097c.mo8795j().m9093a(new RunnableC4839v6(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Preconditions.m17286a("MeasurementServiceConnection.onConnectionSuspended");
        this.f30097c.mo8789p().m9145x().m9143a("Service connection suspended");
        this.f30097c.mo8795j().m9093a(new RunnableC4848w6(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzjl zzjlVar;
        Preconditions.m17286a("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f30095a = false;
                this.f30097c.mo8789p().m9152q().m9143a("Service connected with null binder");
                return;
            }
            zzei zzeiVar = null;
            zzeiVar = null;
            zzeiVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    if (iBinder != null) {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                        zzeiVar = queryLocalInterface instanceof zzei ? (zzei) queryLocalInterface : new zzek(iBinder);
                    }
                    this.f30097c.mo8789p().m9144y().m9143a("Bound to IMeasurementService interface");
                } else {
                    this.f30097c.mo8789p().m9152q().m9142a("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException e) {
                this.f30097c.mo8789p().m9152q().m9143a("Service connect failed to get IMeasurementService");
            }
            if (zzeiVar == null) {
                this.f30095a = false;
                try {
                    ConnectionTracker a = ConnectionTracker.m17130a();
                    Context B = this.f30097c.mo8846B();
                    zzjlVar = this.f30097c.f30088c;
                    a.m17128a(B, zzjlVar);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.f30097c.mo8795j().m9093a(new RunnableC4812s6(this, zzeiVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.m17286a("MeasurementServiceConnection.onServiceDisconnected");
        this.f30097c.mo8789p().m9145x().m9143a("Service disconnected");
        this.f30097c.mo8795j().m9093a(new RunnableC4830u6(this, componentName));
    }
}
