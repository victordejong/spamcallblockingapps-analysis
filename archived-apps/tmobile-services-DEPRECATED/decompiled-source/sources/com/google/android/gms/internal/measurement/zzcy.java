package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.core.content.PermissionChecker;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcy.class */
public final class zzcy implements zzcx {
    @GuardedBy

    /* renamed from: c */
    private static zzcy f8335c;
    @Nullable

    /* renamed from: a */
    private final Context f8336a;
    @Nullable

    /* renamed from: b */
    private final ContentObserver f8337b;

    private zzcy() {
        this.f8336a = null;
        this.f8337b = null;
    }

    private zzcy(Context context) {
        this.f8336a = context;
        this.f8337b = new zzda(this, null);
        context.getContentResolver().registerContentObserver(zzcp.f8308a, true, this.f8337b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzcy m12788a(Context context) {
        zzcy zzcyVar;
        synchronized (zzcy.class) {
            try {
                if (f8335c == null) {
                    f8335c = PermissionChecker.m19657b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzcy(context) : new zzcy();
                }
                zzcyVar = f8335c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzcyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m12787b() {
        synchronized (zzcy.class) {
            try {
                if (!(f8335c == null || f8335c.f8336a == null || f8335c.f8337b == null)) {
                    f8335c.f8336a.getContentResolver().unregisterContentObserver(f8335c.f8337b);
                }
                f8335c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public final String zza(final String str) {
        if (this.f8336a == null) {
            return null;
        }
        try {
            return (String) zzcw.m12789a(new zzcz(this, str) { // from class: com.google.android.gms.internal.measurement.zzdb

                /* renamed from: a */
                private final zzcy f8338a;

                /* renamed from: b */
                private final String f8339b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8338a = this;
                    this.f8339b = str;
                }

                @Override // com.google.android.gms.internal.measurement.zzcz
                public final Object zza() {
                    return this.f8338a.m12786c(this.f8339b);
                }
            });
        } catch (IllegalStateException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ String m12786c(String str) {
        return zzcp.m12803a(this.f8336a.getContentResolver(), str, null);
    }
}
