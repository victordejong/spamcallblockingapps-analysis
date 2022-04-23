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
/* renamed from: com.google.android.gms.common.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/c.class */
public final class C1637c {

    /* renamed from: a */
    private static volatile zzm f6583a;

    /* renamed from: b */
    private static final Object f6584b = new Object();

    /* renamed from: c */
    private static Context f6585c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C1677k m5772a(String str, AbstractBinderC1646e eVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return m5770b(str, eVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ String m5771a(boolean z, String str, AbstractBinderC1646e eVar) {
        boolean z2 = true;
        if (z || !m5770b(str, eVar, true, false).f6861a) {
            z2 = false;
        }
        return C1677k.m5647a(str, eVar, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5773a(Context context) {
        synchronized (C1637c.class) {
            try {
                if (f6585c != null) {
                    Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                } else if (context != null) {
                    f6585c = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static C1677k m5770b(final String str, final AbstractBinderC1646e eVar, final boolean z, boolean z2) {
        try {
            if (f6583a == null) {
                Preconditions.checkNotNull(f6585c);
                synchronized (f6584b) {
                    if (f6583a == null) {
                        f6583a = zzn.zzc(DynamiteModule.load(f6585c, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, "com.google.android.gms.googlecertificates").instantiate("com.google.android.gms.common.GoogleCertificatesImpl"));
                    }
                }
            }
            Preconditions.checkNotNull(f6585c);
            try {
                return f6583a.zza(new zzk(str, eVar, z, z2), ObjectWrapper.wrap(f6585c.getPackageManager())) ? C1677k.m5649a() : C1677k.m5645a(new Callable(z, str, eVar) { // from class: com.google.android.gms.common.d

                    /* renamed from: a */
                    private final boolean f6594a;

                    /* renamed from: b */
                    private final String f6595b;

                    /* renamed from: c */
                    private final AbstractBinderC1646e f6596c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6594a = z;
                        this.f6595b = str;
                        this.f6596c = eVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return C1637c.m5771a(this.f6594a, this.f6595b, this.f6596c);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return C1677k.m5646a("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            return C1677k.m5646a(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }
}
