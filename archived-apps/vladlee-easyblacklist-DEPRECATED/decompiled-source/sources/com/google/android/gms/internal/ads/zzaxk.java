package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxk.class */
public final class zzaxk {

    /* renamed from: a */
    private static zzu f11502a;

    /* renamed from: b */
    private static final Object f11503b = new Object();
    @Deprecated

    /* renamed from: c */
    private static final zzaxo<Void> f11504c = new C1872fj();

    public zzaxk(Context context) {
        m4223a(context.getApplicationContext() != null ? context.getApplicationContext() : context);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035 A[Catch: all -> 0x004e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x000c, B:8:0x0016, B:15:0x0035, B:16:0x003d, B:18:0x0043, B:19:0x0046, B:19:0x0046, B:21:0x004b), top: B:29:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d A[Catch: all -> 0x004e, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x000c, B:8:0x0016, B:15:0x0035, B:16:0x003d, B:18:0x0043, B:19:0x0046, B:19:0x0046, B:21:0x004b), top: B:29:0x0006 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzu m4223a(android.content.Context r3) {
        /*
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzaxk.f11503b
            r4 = r0
            r0 = r4
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzu r0 = com.google.android.gms.internal.ads.zzaxk.f11502a     // Catch: all -> 0x004e
            if (r0 != 0) goto L_0x0046
            r0 = r3
            com.google.android.gms.internal.ads.zzzn.initialize(r0)     // Catch: all -> 0x004e
            boolean r0 = com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide()     // Catch: all -> 0x004e
            if (r0 != 0) goto L_0x002f
            com.google.android.gms.internal.ads.zzzc<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzzn.zzcng     // Catch: all -> 0x004e
            r5 = r0
            com.google.android.gms.internal.ads.zzzj r0 = com.google.android.gms.internal.ads.zzve.zzoy()     // Catch: all -> 0x004e
            r1 = r5
            java.lang.Object r0 = r0.zzd(r1)     // Catch: all -> 0x004e
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: all -> 0x004e
            boolean r0 = r0.booleanValue()     // Catch: all -> 0x004e
            if (r0 == 0) goto L_0x002f
            r0 = 1
            r6 = r0
            goto L_0x0031
        L_0x002f:
            r0 = 0
            r6 = r0
        L_0x0031:
            r0 = r6
            if (r0 == 0) goto L_0x003d
            r0 = r3
            com.google.android.gms.internal.ads.zzu r0 = com.google.android.gms.internal.ads.zzaxd.zzbg(r0)     // Catch: all -> 0x004e
            r3 = r0
            goto L_0x0042
        L_0x003d:
            r0 = r3
            com.google.android.gms.internal.ads.zzu r0 = com.google.android.gms.internal.ads.zzba.zza(r0)     // Catch: all -> 0x004e
            r3 = r0
        L_0x0042:
            r0 = r3
            com.google.android.gms.internal.ads.zzaxk.f11502a = r0     // Catch: all -> 0x004e
        L_0x0046:
            com.google.android.gms.internal.ads.zzu r0 = com.google.android.gms.internal.ads.zzaxk.f11502a     // Catch: all -> 0x004e, all -> 0x004e
            r3 = r0
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x004e
            r0 = r3
            return r0
        L_0x004e:
            r3 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x004e
            r0 = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaxk.m4223a(android.content.Context):com.google.android.gms.internal.ads.zzu");
    }

    public static zzdhe<zzo> zzeq(String str) {
        zzazl zzazlVar = new zzazl();
        f11502a.zze(new zzaxq(str, zzazlVar));
        return zzazlVar;
    }

    public final zzdhe<String> zza(int i, String str, Map<String, String> map, byte[] bArr) {
        C1874fl flVar = new C1874fl((byte) 0);
        C1871fi fiVar = new C1871fi(str, flVar);
        zzayo zzayoVar = new zzayo(null);
        C1873fk fkVar = new C1873fk(i, str, flVar, fiVar, bArr, map, zzayoVar);
        if (zzayo.isEnabled()) {
            try {
                zzayoVar.zza(str, "GET", fkVar.getHeaders(), fkVar.zzf());
            } catch (zzb e) {
                zzavs.zzez(e.getMessage());
            }
        }
        f11502a.zze(fkVar);
        return flVar;
    }

    public final zzdhe<String> zzc(String str, Map<String, String> map) {
        return zza(0, str, map, null);
    }
}
