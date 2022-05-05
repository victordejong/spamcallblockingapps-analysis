package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaan.class */
public class zzaan<T> {

    /* renamed from: a */
    private final String f10809a;

    /* renamed from: b */
    private final T f10810b;

    /* renamed from: c */
    private final int f10811c;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;TT;Ljava/lang/Integer;)V */
    /* JADX WARN: Multi-variable type inference failed */
    public zzaan(String str, Object obj, int i) {
        this.f10809a = str;
        this.f10810b = obj;
        this.f10811c = i;
    }

    public static zzaan<Long> zzb(String str, long j) {
        return new zzaan<>(str, Long.valueOf(j), C1754b.f8282b);
    }

    public static zzaan<Boolean> zzf(String str, boolean z) {
        return new zzaan<>(str, Boolean.valueOf(z), C1754b.f8281a);
    }

    public static zzaan<String> zzi(String str, String str2) {
        return new zzaan<>(str, str2, C1754b.f8284d);
    }

    public T get() {
        zzabo a = zzabn.m4436a();
        if (a != null) {
            int i = C1781c.f8323a[this.f10811c - 1];
            if (i == 1) {
                return (T) a.zze(this.f10809a, ((Boolean) this.f10810b).booleanValue());
            }
            if (i == 2) {
                return (T) a.getLong(this.f10809a, ((Long) this.f10810b).longValue());
            }
            if (i == 3) {
                return (T) a.zza(this.f10809a, ((Double) this.f10810b).doubleValue());
            }
            if (i == 4) {
                return (T) a.get(this.f10809a, (String) this.f10810b);
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException("Flag is not initialized.");
    }
}
