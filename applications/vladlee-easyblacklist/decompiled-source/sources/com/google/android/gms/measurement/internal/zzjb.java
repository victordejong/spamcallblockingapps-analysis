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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjb.class */
public final class zzjb implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    final /* synthetic */ zzij f17263a;

    /* renamed from: b */
    private volatile boolean f17264b;

    /* renamed from: c */
    private volatile zzet f17265c;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzjb(zzij zzijVar) {
        this.f17263a = zzijVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                this.f17263a.zzq().zza(new RunnableC2818gr(this, this.f17265c.getService()));
            } catch (DeadObjectException | IllegalStateException e) {
                this.f17265c = null;
                this.f17264b = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionFailed");
        zzew zzd = this.f17263a.f16804x.zzd();
        if (zzd != null) {
            zzd.zzi().zza("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f17264b = false;
            this.f17265c = null;
        }
        this.f17263a.zzq().zza(new RunnableC2819gs(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionSuspended");
        this.f17263a.zzr().zzw().zza("Service connection suspended");
        this.f17263a.zzq().zza(new RunnableC2817gq(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzjb zzjbVar;
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f17264b = false;
                this.f17263a.zzr().zzf().zza("Service connected with null binder");
                return;
            }
            zzeo zzeoVar = null;
            zzeoVar = null;
            zzeoVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    if (iBinder != null) {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                        zzeoVar = queryLocalInterface instanceof zzeo ? (zzeo) queryLocalInterface : new zzeq(iBinder);
                    }
                    this.f17263a.zzr().zzx().zza("Bound to IMeasurementService interface");
                } else {
                    this.f17263a.zzr().zzf().zza("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException e) {
                this.f17263a.zzr().zzf().zza("Service connect failed to get IMeasurementService");
            }
            if (zzeoVar == null) {
                this.f17264b = false;
                try {
                    ConnectionTracker instance = ConnectionTracker.getInstance();
                    Context zzn = this.f17263a.zzn();
                    zzjbVar = this.f17263a.f17256a;
                    instance.unbindService(zzn, zzjbVar);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.f17263a.zzq().zza(new RunnableC2816gp(this, zzeoVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceDisconnected");
        this.f17263a.zzr().zzw().zza("Service disconnected");
        this.f17263a.zzq().zza(new RunnableC2815go(this, componentName));
    }

    public final void zza() {
        if (this.f17265c != null && (this.f17265c.isConnected() || this.f17265c.isConnecting())) {
            this.f17265c.disconnect();
        }
        this.f17265c = null;
    }

    public final void zza(Intent intent) {
        zzjb zzjbVar;
        this.f17263a.zzd();
        Context zzn = this.f17263a.zzn();
        ConnectionTracker instance = ConnectionTracker.getInstance();
        synchronized (this) {
            if (this.f17264b) {
                this.f17263a.zzr().zzx().zza("Connection attempt already in progress");
                return;
            }
            this.f17263a.zzr().zzx().zza("Using local app measurement service");
            this.f17264b = true;
            zzjbVar = this.f17263a.f17256a;
            instance.bindService(zzn, intent, zzjbVar, 129);
        }
    }

    public final void zzb() {
        this.f17263a.zzd();
        Context zzn = this.f17263a.zzn();
        synchronized (this) {
            if (this.f17264b) {
                this.f17263a.zzr().zzx().zza("Connection attempt already in progress");
            } else if (this.f17265c == null || (!this.f17265c.isConnecting() && !this.f17265c.isConnected())) {
                this.f17265c = new zzet(zzn, Looper.getMainLooper(), this, this);
                this.f17263a.zzr().zzx().zza("Connecting to remote service");
                this.f17264b = true;
                this.f17265c.checkAvailabilityAndConnect();
            } else {
                this.f17263a.zzr().zzx().zza("Already awaiting connection attempt");
            }
        }
    }
}
