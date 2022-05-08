package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.Log;
import androidx.annotation.Nullable;
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
    private static final GoogleApiAvailabilityLight f9796a = GoogleApiAvailabilityLight.m15064h();

    /* renamed from: b */
    private static final Object f9797b = new Object();

    /* renamed from: c */
    private static Method f9798c = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/security/ProviderInstaller$ProviderInstallListener.class */
    public interface ProviderInstallListener {
        /* renamed from: a */
        void m10864a();

        /* renamed from: b */
        void m10863b(int i, Intent intent);
    }

    /* renamed from: a */
    public static void m10868a(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        Preconditions.m14522l(context, "Context must not be null");
        f9796a.m15058n(context, 11925000);
        Context c = m10866c(context);
        Context context2 = c;
        if (c == null) {
            context2 = m10865d(context);
        }
        if (context2 != null) {
            synchronized (f9797b) {
                try {
                    if (f9798c == null) {
                        f9798c = context2.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", Context.class);
                    }
                    f9798c.invoke(null, context2);
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
                    CrashUtils.m14337a(context, e);
                    throw new GooglePlayServicesNotAvailableException(8);
                }
            }
            return;
        }
        Log.e("ProviderInstaller", "Failed to get remote context");
        throw new GooglePlayServicesNotAvailableException(8);
    }

    @Nullable
    /* renamed from: c */
    private static Context m10866c(Context context) {
        try {
            return DynamiteModule.m14227e(context, DynamiteModule.f7704j, "providerinstaller").m14230b();
        } catch (DynamiteModule.LoadingException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("ProviderInstaller", valueOf.length() != 0 ? "Failed to load providerinstaller module: ".concat(valueOf) : new String("Failed to load providerinstaller module: "));
            return null;
        }
    }

    @Nullable
    /* renamed from: d */
    private static Context m10865d(Context context) {
        try {
            return GooglePlayServicesUtilLight.m15050e(context);
        } catch (Resources.NotFoundException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("ProviderInstaller", valueOf.length() != 0 ? "Failed to load GMS Core context for providerinstaller: ".concat(valueOf) : new String("Failed to load GMS Core context for providerinstaller: "));
            CrashUtils.m14337a(context, e);
            return null;
        }
    }
}
