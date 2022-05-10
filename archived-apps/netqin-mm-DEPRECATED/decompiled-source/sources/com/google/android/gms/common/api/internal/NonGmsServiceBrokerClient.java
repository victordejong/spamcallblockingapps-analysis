package com.google.android.gms.common.api.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.NonGmsServiceBrokerClient;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/NonGmsServiceBrokerClient.class */
public final class NonGmsServiceBrokerClient implements ServiceConnection, Api.Client {

    /* renamed from: a */
    public final String f23163a;

    /* renamed from: b */
    public final String f23164b;

    /* renamed from: c */
    public final ComponentName f23165c;

    /* renamed from: d */
    public final Context f23166d;

    /* renamed from: e */
    public final ConnectionCallbacks f23167e;

    /* renamed from: f */
    public final Handler f23168f;

    /* renamed from: g */
    public final OnConnectionFailedListener f23169g;

    /* renamed from: h */
    public IBinder f23170h;

    /* renamed from: i */
    public boolean f23171i;

    /* renamed from: j */
    public String f23172j;

    /* renamed from: a */
    public final /* synthetic */ void m17622a() {
        this.f23171i = false;
        this.f23170h = null;
        m17615b("Disconnected.");
        this.f23167e.onConnectionSuspended(1);
    }

    /* renamed from: a */
    public final /* synthetic */ void m17621a(IBinder iBinder) {
        this.f23171i = false;
        this.f23170h = iBinder;
        m17615b("Connected.");
        this.f23167e.onConnected(new Bundle());
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0083 -> B:20:0x0017). Please submit an issue!!! */
    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: a */
    public final void mo17620a(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        m17613d();
        m17615b("Connect started.");
        if (mo17614c()) {
            try {
                mo17617a("connect() called when already connected");
            } catch (Exception e) {
            }
        }
        try {
            Intent intent = new Intent();
            if (this.f23165c != null) {
                intent.setComponent(this.f23165c);
            } else {
                intent.setPackage(this.f23163a).setAction(this.f23164b);
            }
            boolean bindService = this.f23166d.bindService(intent, this, GmsClientSupervisor.m17308a());
            this.f23171i = bindService;
            if (!bindService) {
                this.f23170h = null;
                this.f23169g.onConnectionFailed(new ConnectionResult(16));
            }
            m17615b("Finished connect.");
        } catch (SecurityException e2) {
            this.f23171i = false;
            this.f23170h = null;
            throw e2;
        }
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: a */
    public final void mo17619a(BaseGmsClient.SignOutCallbacks signOutCallbacks) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: a */
    public final void mo17618a(IAccountAccessor iAccountAccessor, Set<Scope> set) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: a */
    public final void mo17617a(String str) {
        m17613d();
        this.f23172j = str;
        mo10491b();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: a */
    public final void mo17616a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: b */
    public final void mo10491b() {
        m17613d();
        m17615b("Disconnect called.");
        this.f23166d.unbindService(this);
        this.f23171i = false;
        this.f23170h = null;
    }

    /* renamed from: b */
    public final void m17615b(String str) {
        String valueOf = String.valueOf(this.f23170h);
        boolean z = this.f23171i;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30 + String.valueOf(valueOf).length());
        sb.append(str);
        sb.append(" binder: ");
        sb.append(valueOf);
        sb.append(", isConnecting: ");
        sb.append(z);
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: c */
    public final boolean mo17614c() {
        m17613d();
        return this.f23170h != null;
    }

    /* renamed from: d */
    public final void m17613d() {
        if (Thread.currentThread() != this.f23168f.getLooper().getThread()) {
            throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
        }
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: e */
    public final boolean mo17612e() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: f */
    public final Set<Scope> mo17311f() {
        return Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: g */
    public final boolean mo17611g() {
        m17613d();
        return this.f23171i;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: h */
    public final String mo17610h() {
        String str = this.f23163a;
        if (str != null) {
            return str;
        }
        Preconditions.m17288a(this.f23165c);
        return this.f23165c.getPackageName();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: i */
    public final boolean mo17609i() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: j */
    public final int mo17608j() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: k */
    public final Feature[] mo17607k() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: l */
    public final String mo17606l() {
        return this.f23172j;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: m */
    public final Intent mo17605m() {
        return new Intent();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    /* renamed from: n */
    public final boolean mo8642n() {
        return false;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        this.f23168f.post(new Runnable(this, iBinder) { // from class: c.d.b.d.d.a.a.z

            /* renamed from: a */
            public final NonGmsServiceBrokerClient f12005a;

            /* renamed from: b */
            public final IBinder f12006b;

            {
                this.f12005a = this;
                this.f12006b = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12005a.m17621a(this.f12006b);
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f23168f.post(new Runnable(this) { // from class: c.d.b.d.d.a.a.y

            /* renamed from: a */
            public final NonGmsServiceBrokerClient f12004a;

            {
                this.f12004a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12004a.m17622a();
            }
        });
    }
}
