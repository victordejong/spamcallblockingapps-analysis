package com.google.android.gms.gass.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.internal.ads.zzfz;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/internal/zzk.class */
public final class zzk {

    /* renamed from: a */
    private final File f7104a;

    /* renamed from: b */
    private final File f7105b;

    /* renamed from: c */
    private final SharedPreferences f7106c;

    public zzk(Context context) {
        this.f7106c = context.getSharedPreferences("pcvmspf", 0);
        this.f7104a = zzj.zza(context.getDir("pccache", 0), false);
        this.f7105b = zzj.zza(context.getDir("tmppccache", 0), true);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0082 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.zzfz m5511a(int r5) {
        /*
            r4 = this;
            r0 = r5
            int r1 = com.google.android.gms.gass.internal.zzp.zzgtn
            if (r0 != r1) goto L_0x001b
            r0 = r4
            android.content.SharedPreferences r0 = r0.f7106c
            r6 = r0
            java.lang.String r0 = "LATMTD"
            r7 = r0
        L_0x000f:
            r0 = r6
            r1 = r7
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r6 = r0
            goto L_0x002f
        L_0x001b:
            r0 = r5
            int r1 = com.google.android.gms.gass.internal.zzp.zzgto
            if (r0 != r1) goto L_0x002d
            r0 = r4
            android.content.SharedPreferences r0 = r0.f7106c
            r6 = r0
            java.lang.String r0 = "FBAMTD"
            r7 = r0
            goto L_0x000f
        L_0x002d:
            r0 = 0
            r6 = r0
        L_0x002f:
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0038
            r0 = 0
            return r0
        L_0x0038:
            r0 = r6
            byte[] r0 = com.google.android.gms.common.util.Hex.stringToBytes(r0)     // Catch: zzdse -> 0x0084
            com.google.android.gms.internal.ads.zzdqk r0 = com.google.android.gms.internal.ads.zzdqk.zzu(r0)     // Catch: zzdse -> 0x0084
            com.google.android.gms.internal.ads.zzfz r0 = com.google.android.gms.internal.ads.zzfz.zzl(r0)     // Catch: zzdse -> 0x0084
            r7 = r0
            r0 = r7
            java.lang.String r0 = r0.zzcx()     // Catch: zzdse -> 0x0084
            r8 = r0
            r0 = r8
            java.lang.String r1 = "pcam"
            r2 = r4
            java.io.File r2 = r2.f7104a     // Catch: zzdse -> 0x0084
            java.io.File r0 = com.google.android.gms.gass.internal.zzj.zza(r0, r1, r2)     // Catch: zzdse -> 0x0084
            r6 = r0
            r0 = r8
            java.lang.String r1 = "pcbc"
            r2 = r4
            java.io.File r2 = r2.f7104a     // Catch: zzdse -> 0x0084
            java.io.File r0 = com.google.android.gms.gass.internal.zzj.zza(r0, r1, r2)     // Catch: zzdse -> 0x0084
            r8 = r0
            r0 = r6
            boolean r0 = r0.exists()     // Catch: zzdse -> 0x0084
            if (r0 == 0) goto L_0x007a
            r0 = r8
            boolean r0 = r0.exists()     // Catch: zzdse -> 0x0084
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007a
            r0 = 1
            r5 = r0
            goto L_0x007c
        L_0x007a:
            r0 = 0
            r5 = r0
        L_0x007c:
            r0 = r5
            if (r0 == 0) goto L_0x0082
            r0 = r7
            return r0
        L_0x0082:
            r0 = 0
            return r0
        L_0x0084:
            r6 = move-exception
            goto L_0x0082
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gass.internal.zzk.m5511a(int):com.google.android.gms.internal.ads.zzfz");
    }

    /* renamed from: a */
    private static String m5510a(zzfz zzfzVar) {
        return Hex.bytesToStringLowercase(zzfzVar.zzaxk().toByteArray());
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x018e, code lost:
        if (r0.commit() != false) goto L_0x0197;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(com.google.android.gms.internal.ads.zzfy r5, com.google.android.gms.gass.internal.zzq r6) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gass.internal.zzk.zza(com.google.android.gms.internal.ads.zzfy, com.google.android.gms.gass.internal.zzq):boolean");
    }

    public final Program zzdr(int i) {
        zzfz a = m5511a(i);
        if (a == null) {
            return null;
        }
        String zzcx = a.zzcx();
        return new Program(a, zzj.zza(zzcx, "pcam", this.f7104a), zzj.zza(zzcx, "pcbc", this.f7104a), zzj.zza(zzcx, "pcopt", this.f7104a));
    }
}
