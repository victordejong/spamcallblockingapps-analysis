package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.dynamite.DynamiteModule;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/security/ProviderInstaller.class */
public class ProviderInstaller {
    public static final String PROVIDER_NAME = "GmsCore_OpenSSL";

    /* renamed from: a */
    private static final GoogleApiAvailabilityLight f17318a = GoogleApiAvailabilityLight.getInstance();

    /* renamed from: b */
    private static final Object f17319b = new Object();

    /* renamed from: c */
    private static Method f17320c = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/security/ProviderInstaller$ProviderInstallListener.class */
    public interface ProviderInstallListener {
        void onProviderInstallFailed(int i, Intent intent);

        void onProviderInstalled();
    }

    /* renamed from: a */
    private static Context m1593a(Context context) {
        try {
            return DynamiteModule.load(context, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, "providerinstaller").getModuleContext();
        } catch (DynamiteModule.LoadingException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("ProviderInstaller", valueOf.length() != 0 ? "Failed to load providerinstaller module: ".concat(valueOf) : new String("Failed to load providerinstaller module: "));
            return null;
        }
    }

    /* renamed from: b */
    private static Context m1592b(Context context) {
        try {
            return GooglePlayServicesUtilLight.getRemoteContext(context);
        } catch (Resources.NotFoundException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("ProviderInstaller", valueOf.length() != 0 ? "Failed to load GMS Core context for providerinstaller: ".concat(valueOf) : new String("Failed to load GMS Core context for providerinstaller: "));
            CrashUtils.addDynamiteErrorToDropBox(context, e);
            return null;
        }
    }

    public static void installIfNeeded(Context context) {
        Preconditions.checkNotNull(context, "Context must not be null");
        f17318a.verifyGooglePlayServicesIsAvailable(context, 11925000);
        Context a = m1593a(context);
        Context context2 = a;
        if (a == null) {
            context2 = m1592b(context);
        }
        if (context2 != null) {
            synchronized (f17319b) {
                try {
                    if (f17320c == null) {
                        f17320c = context2.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", Context.class);
                    }
                    f17320c.invoke(null, context2);
                } catch (Exception e) {
                    e = e;
                    Throwable cause = e.getCause();
                    if (Log.isLoggable("ProviderInstaller", 6)) {
                        String valueOf = String.valueOf(cause == null ? e.getMessage() : cause.getMessage());
                        Log.e("ProviderInstaller", valueOf.length() != 0 ? "Failed to install provider: ".concat(valueOf) : new String("Failed to install provider: "));
                    }
                    if (cause != null) {
                        e = cause;
                    }
                    CrashUtils.addDynamiteErrorToDropBox(context, e);
                    throw new GooglePlayServicesNotAvailableException(8);
                }
            }
            return;
        }
        Log.e("ProviderInstaller", "Failed to get remote context");
        throw new GooglePlayServicesNotAvailableException(8);
    }

    public static void installIfNeededAsync(Context context, ProviderInstallListener providerInstallListener) {
        Preconditions.checkNotNull(context, "Context must not be null");
        Preconditions.checkNotNull(providerInstallListener, "Listener must not be null");
        Preconditions.checkMainThread("Must be called on the UI thread");
        new AsyncTaskC2877a(context, providerInstallListener).execute(new Void[0]);
    }
}
