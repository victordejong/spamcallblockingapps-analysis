package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.content.C0647c;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.ax */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ax.class */
public final class C2488ax implements AbstractC2486av {

    /* renamed from: a */
    private static C2488ax f15870a;
    @Nullable

    /* renamed from: b */
    private final Context f15871b;
    @Nullable

    /* renamed from: c */
    private final ContentObserver f15872c;

    private C2488ax() {
        this.f15871b = null;
        this.f15872c = null;
    }

    private C2488ax(Context context) {
        this.f15871b = context;
        this.f15872c = new C2489ay();
        context.getContentResolver().registerContentObserver(zzbw.zza, true, this.f15872c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C2488ax m2922a(Context context) {
        C2488ax axVar;
        synchronized (C2488ax.class) {
            try {
                if (f15870a == null) {
                    f15870a = C0647c.m8609a(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new C2488ax(context) : new C2488ax();
                }
                axVar = f15870a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return axVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2923a() {
        synchronized (C2488ax.class) {
            try {
                if (!(f15870a == null || f15870a.f15871b == null || f15870a.f15872c == null)) {
                    f15870a.f15871b.getContentResolver().unregisterContentObserver(f15870a.f15872c);
                }
                f15870a = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final String zza(final String str) {
        if (this.f15871b == null) {
            return null;
        }
        try {
            return (String) zzce.zza(new zzcd(this, str) { // from class: com.google.android.gms.internal.measurement.aw

                /* renamed from: a */
                private final C2488ax f15868a;

                /* renamed from: b */
                private final String f15869b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f15868a = this;
                    this.f15869b = str;
                }

                @Override // com.google.android.gms.internal.measurement.zzcd
                public final Object zza() {
                    return this.f15868a.m2921a(this.f15869b);
                }
            });
        } catch (IllegalStateException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ String m2921a(String str) {
        return zzbw.zza(this.f15871b.getContentResolver(), str, null);
    }
}
