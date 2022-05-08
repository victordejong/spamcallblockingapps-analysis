package com.google.android.gms.internal.icing;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.core.content.PermissionChecker;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbh.class */
public final class zzbh implements zzbg {
    @GuardedBy

    /* renamed from: c */
    private static zzbh f7907c;
    @Nullable

    /* renamed from: a */
    private final Context f7908a;
    @Nullable

    /* renamed from: b */
    private final ContentObserver f7909b;

    private zzbh() {
        this.f7908a = null;
        this.f7909b = null;
    }

    private zzbh(Context context) {
        this.f7908a = context;
        this.f7909b = new zzbj(this, null);
        context.getContentResolver().registerContentObserver(zzax.f7880a, true, this.f7909b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static zzbh m14024b(Context context) {
        zzbh zzbhVar;
        synchronized (zzbh.class) {
            try {
                if (f7907c == null) {
                    f7907c = PermissionChecker.m19657b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzbh(context) : new zzbh();
                }
                zzbhVar = f7907c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbhVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public final String mo14003a(final String str) {
        if (this.f7908a == null) {
            return null;
        }
        try {
            return (String) zzbf.m14025a(new zzbi(this, str) { // from class: com.google.android.gms.internal.icing.zzbk

                /* renamed from: a */
                private final zzbh f7910a;

                /* renamed from: b */
                private final String f7911b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7910a = this;
                    this.f7911b = str;
                }

                @Override // com.google.android.gms.internal.icing.zzbi
                /* renamed from: a */
                public final Object mo14020a() {
                    return this.f7910a.m14022d(this.f7911b);
                }
            });
        } catch (IllegalStateException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m14021e() {
        synchronized (zzbh.class) {
            try {
                if (!(f7907c == null || f7907c.f7908a == null || f7907c.f7909b == null)) {
                    f7907c.f7908a.getContentResolver().unregisterContentObserver(f7907c.f7909b);
                }
                f7907c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final /* synthetic */ String m14022d(String str) {
        return zzax.m14040a(this.f7908a.getContentResolver(), str, null);
    }
}
