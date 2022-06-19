package com.android.installreferrer.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.android.installreferrer.commons.InstallReferrerCommons;
import g.f.a.c.a.a;
/* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl$b.class */
final class InstallReferrerClientImpl$b implements ServiceConnection {

    /* renamed from: a */
    private final InstallReferrerStateListener f2826a;

    /* renamed from: b */
    final /* synthetic */ InstallReferrerClientImpl f2827b;

    private InstallReferrerClientImpl$b(InstallReferrerClientImpl installReferrerClientImpl, InstallReferrerStateListener installReferrerStateListener) {
        this.f2827b = installReferrerClientImpl;
        if (installReferrerStateListener != null) {
            this.f2826a = installReferrerStateListener;
            return;
        }
        throw new RuntimeException("Please specify a listener to know when setup is done.");
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service connected.");
        InstallReferrerClientImpl.a(this.f2827b, a.a.q(iBinder));
        InstallReferrerClientImpl.b(this.f2827b, 2);
        this.f2826a.onInstallReferrerSetupFinished(0);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        InstallReferrerCommons.logWarn("InstallReferrerClient", "Install Referrer service disconnected.");
        InstallReferrerClientImpl.a(this.f2827b, (a) null);
        InstallReferrerClientImpl.b(this.f2827b, 0);
        this.f2826a.onInstallReferrerServiceDisconnected();
    }
}
