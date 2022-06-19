package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractC0898b1;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.internal.a1;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.common.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/q.class */
public final class C0953q {

    /* renamed from: a */
    private static volatile AbstractC0898b1 f3579a;

    /* renamed from: b */
    private static final Object f3580b = new Object();

    /* renamed from: c */
    private static Context f3581c;

    /* renamed from: a */
    public static C0983z m3198a(String str, r rVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return m3195d(str, rVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: b */
    public static final /* synthetic */ String m3197b(boolean z, String str, r rVar) throws Exception {
        boolean z2 = true;
        if (z || !m3195d(str, rVar, true, false).f3617a) {
            z2 = false;
        }
        return C0983z.m3106e(str, rVar, z, z2);
    }

    /* renamed from: c */
    public static void m3196c(Context context) {
        synchronized (C0953q.class) {
            try {
                if (f3581c != null) {
                    Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                } else if (context != null) {
                    f3581c = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    private static C0983z m3195d(String str, r rVar, boolean z, boolean z2) {
        try {
            if (f3579a == null) {
                C0931r.m3308k(f3581c);
                synchronized (f3580b) {
                    if (f3579a == null) {
                        f3579a = a1.w(DynamiteModule.m3066e(f3581c, DynamiteModule.f3635k, "com.google.android.gms.googlecertificates").m3067d("com.google.android.gms.common.GoogleCertificatesImpl"));
                    }
                }
            }
            C0931r.m3308k(f3581c);
            try {
                return f3579a.m3443o2(new x(str, rVar, z, z2), d.F(f3581c.getPackageManager())) ? C0983z.m3110a() : C0983z.m3107d(new Callable(z, str, rVar) { // from class: com.google.android.gms.common.s

                    /* renamed from: f */
                    private final boolean f3582f;

                    /* renamed from: g */
                    private final String f3583g;

                    /* renamed from: h */
                    private final r f3584h;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3582f = z;
                        this.f3583g = str;
                        this.f3584h = rVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return C0953q.m3197b(this.f3582f, this.f3583g, this.f3584h);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return C0983z.m3108c("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            return C0983z.m3108c(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }
}
