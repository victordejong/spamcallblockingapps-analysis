package com.google.android.gms.security;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.dynamite.DynamiteModule;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/security/ProviderInstaller.class */
public class ProviderInstaller {

    /* renamed from: a */
    public static final GoogleApiAvailabilityLight f30212a = GoogleApiAvailabilityLight.m17812a();

    /* renamed from: b */
    public static final Object f30213b = new Object();

    /* renamed from: c */
    public static Method f30214c = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/security/ProviderInstaller$ProviderInstallListener.class */
    public interface ProviderInstallListener {
    }

    /* renamed from: a */
    public static void m8658a(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        Preconditions.m17287a(context, "Context must not be null");
        f30212a.m17798c(context, 11925000);
        Context b = m8657b(context);
        Context context2 = b;
        if (b == null) {
            context2 = m8656c(context);
        }
        if (context2 != null) {
            synchronized (f30213b) {
                try {
                    if (f30214c == null) {
                        f30214c = context2.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", Context.class);
                    }
                    f30214c.invoke(null, context2);
                } catch (Exception e) {
                    Throwable cause = e.getCause();
                    if (Log.isLoggable("ProviderInstaller", 6)) {
                        String valueOf = String.valueOf(cause == null ? e.getMessage() : cause.getMessage());
                        Log.e("ProviderInstaller", valueOf.length() != 0 ? "Failed to install provider: ".concat(valueOf) : new String("Failed to install provider: "));
                    }
                    throw new GooglePlayServicesNotAvailableException(8);
                }
            }
            return;
        }
        Log.e("ProviderInstaller", "Failed to get remote context");
        throw new GooglePlayServicesNotAvailableException(8);
    }

    /* renamed from: b */
    public static Context m8657b(Context context) {
        try {
            return DynamiteModule.m16993a(context, DynamiteModule.f23601k, "providerinstaller").m16995a();
        } catch (DynamiteModule.LoadingException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("ProviderInstaller", valueOf.length() != 0 ? "Failed to load providerinstaller module: ".concat(valueOf) : new String("Failed to load providerinstaller module: "));
            return null;
        }
    }

    /* renamed from: c */
    public static Context m8656c(Context context) {
        try {
            return GooglePlayServicesUtilLight.getRemoteContext(context);
        } catch (Resources.NotFoundException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("ProviderInstaller", valueOf.length() != 0 ? "Failed to load GMS Core context for providerinstaller: ".concat(valueOf) : new String("Failed to load GMS Core context for providerinstaller: "));
            CrashUtils.m17094a(context, e);
            return null;
        }
    }
}
