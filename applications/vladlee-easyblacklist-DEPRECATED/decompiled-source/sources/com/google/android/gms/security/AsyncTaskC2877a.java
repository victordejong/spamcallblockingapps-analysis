package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;
/* renamed from: com.google.android.gms.security.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/security/a.class */
final class AsyncTaskC2877a extends AsyncTask<Void, Void, Integer> {

    /* renamed from: a */
    private final /* synthetic */ Context f17321a;

    /* renamed from: b */
    private final /* synthetic */ ProviderInstaller.ProviderInstallListener f17322b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AsyncTaskC2877a(Context context, ProviderInstaller.ProviderInstallListener providerInstallListener) {
        this.f17321a = context;
        this.f17322b = providerInstallListener;
    }

    /* renamed from: a */
    private final Integer m1591a() {
        int connectionStatusCode;
        try {
            ProviderInstaller.installIfNeeded(this.f17321a);
            connectionStatusCode = 0;
        } catch (GooglePlayServicesNotAvailableException e) {
            connectionStatusCode = e.errorCode;
        } catch (GooglePlayServicesRepairableException e2) {
            connectionStatusCode = e2.getConnectionStatusCode();
        }
        return Integer.valueOf(connectionStatusCode);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Integer doInBackground(Void[] voidArr) {
        return m1591a();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Integer num) {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Integer num2 = num;
        if (num2.intValue() == 0) {
            this.f17322b.onProviderInstalled();
            return;
        }
        googleApiAvailabilityLight = ProviderInstaller.f17318a;
        this.f17322b.onProviderInstallFailed(num2.intValue(), googleApiAvailabilityLight.getErrorResolutionIntent(this.f17321a, num2.intValue(), "pi"));
    }
}
