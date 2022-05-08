package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzm;
import com.google.android.gms.common.internal.zzn;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
/* JADX INFO: Access modifiers changed from: package-private */
@CheckReturnValue
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzc.class */
public final class zzc {

    /* renamed from: a */
    private static volatile zzm f7669a;

    /* renamed from: b */
    private static final Object f7670b = new Object();

    /* renamed from: c */
    private static Context f7671c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzm m14276a(String str, zze zzeVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return m14273d(str, zzeVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final /* synthetic */ String m14275b(boolean z, String str, zze zzeVar) throws Exception {
        boolean z2 = true;
        if (z || !m14273d(str, zzeVar, true, false).f7685a) {
            z2 = false;
        }
        return zzm.m14265e(str, zzeVar, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m14274c(Context context) {
        synchronized (zzc.class) {
            try {
                if (f7671c != null) {
                    Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                } else if (context != null) {
                    f7671c = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    private static zzm m14273d(final String str, final zze zzeVar, final boolean z, boolean z2) {
        try {
            if (f7669a == null) {
                Preconditions.m14523k(f7671c);
                synchronized (f7670b) {
                    if (f7669a == null) {
                        f7669a = zzn.m14403b(DynamiteModule.m14227e(f7671c, DynamiteModule.f7704j, "com.google.android.gms.googlecertificates").m14228d("com.google.android.gms.common.GoogleCertificatesImpl"));
                    }
                }
            }
            Preconditions.m14523k(f7671c);
            try {
                return f7669a.mo14402G(new zzk(str, zzeVar, z, z2), ObjectWrapper.m14257f(f7671c.getPackageManager())) ? zzm.m14264f() : zzm.m14267c(new Callable(z, str, zzeVar) { // from class: com.google.android.gms.common.zzd

                    /* renamed from: f */
                    private final boolean f7672f;

                    /* renamed from: g */
                    private final String f7673g;

                    /* renamed from: h */
                    private final zze f7674h;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7672f = z;
                        this.f7673g = str;
                        this.f7674h = zzeVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzc.m14275b(this.f7672f, this.f7673g, this.f7674h);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return zzm.m14268b("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            return zzm.m14268b(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }
}
