package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import p131c.p161d.p170b.p224d.p252g.p255c.C4422u2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgc.class */
public final class zzgc extends zzcg.zzd<zzgc, zza> implements zzdq {
    public static volatile zzdz<zzgc> zzbg;
    public static final zzgc zzsg;
    public byte zzsf = (byte) 2;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgc$zza.class */
    public static final class zza extends zzcg.zzc<zzgc, zza> implements zzdq {
        public zza() {
            super(zzgc.zzsg);
        }

        public /* synthetic */ zza(C4422u2 u2Var) {
            this();
        }
    }

    static {
        zzgc zzgcVar = new zzgc();
        zzsg = zzgcVar;
        zzcg.m10724a(zzgc.class, zzgcVar);
    }

    /* renamed from: j */
    public static zzgc m10613j() {
        return zzsg;
    }

    /* JADX WARN: Type inference failed for: r6v6, types: [com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgc>, com.google.android.gms.internal.clearcut.zzcg$zzb] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.clearcut.zzcg
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo10535a(int r5, java.lang.Object r6, java.lang.Object r7) {
        /*
            r4 = this;
            int[] r0 = p131c.p161d.p170b.p224d.p252g.p255c.C4422u2.f16641a
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = r5
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x00a5;
                case 2: goto L_0x009c;
                case 3: goto L_0x0092;
                case 4: goto L_0x008e;
                case 5: goto L_0x005a;
                case 6: goto L_0x0052;
                case 7: goto L_0x0040;
                default: goto L_0x0038;
            }
        L_0x0038:
            java.lang.UnsupportedOperationException r0 = new java.lang.UnsupportedOperationException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0040:
            r0 = r8
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0049
            r0 = 0
            r5 = r0
        L_0x0049:
            r0 = r4
            r1 = r5
            byte r1 = (byte) r1
            byte r1 = (byte) r1
            r0.zzsf = r1
            r0 = 0
            return r0
        L_0x0052:
            r0 = r4
            byte r0 = r0.zzsf
            java.lang.Byte r0 = java.lang.Byte.valueOf(r0)
            return r0
        L_0x005a:
            com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgc> r0 = com.google.android.gms.internal.clearcut.zzgc.zzbg
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L_0x008c
            java.lang.Class<com.google.android.gms.internal.clearcut.zzgc> r0 = com.google.android.gms.internal.clearcut.zzgc.class
            monitor-enter(r0)
            com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgc> r0 = com.google.android.gms.internal.clearcut.zzgc.zzbg     // Catch: all -> 0x0086
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0080
            com.google.android.gms.internal.clearcut.zzcg$zzb r0 = new com.google.android.gms.internal.clearcut.zzcg$zzb     // Catch: all -> 0x0086
            r6 = r0
            r0 = r6
            com.google.android.gms.internal.clearcut.zzgc r1 = com.google.android.gms.internal.clearcut.zzgc.zzsg     // Catch: all -> 0x0086
            r0.<init>(r1)     // Catch: all -> 0x0086
            r0 = r6
            com.google.android.gms.internal.clearcut.zzgc.zzbg = r0     // Catch: all -> 0x0086
        L_0x0080:
            java.lang.Class<com.google.android.gms.internal.clearcut.zzgc> r0 = com.google.android.gms.internal.clearcut.zzgc.class
            monitor-exit(r0)     // Catch: all -> 0x0086
            goto L_0x008c
        L_0x0086:
            r6 = move-exception
            java.lang.Class<com.google.android.gms.internal.clearcut.zzgc> r0 = com.google.android.gms.internal.clearcut.zzgc.class
            monitor-exit(r0)     // Catch: all -> 0x0086
            r0 = r6
            throw r0
        L_0x008c:
            r0 = r6
            return r0
        L_0x008e:
            com.google.android.gms.internal.clearcut.zzgc r0 = com.google.android.gms.internal.clearcut.zzgc.zzsg
            return r0
        L_0x0092:
            com.google.android.gms.internal.clearcut.zzgc r0 = com.google.android.gms.internal.clearcut.zzgc.zzsg
            java.lang.String r1 = "\u0003��"
            r2 = 0
            java.lang.Object r0 = com.google.android.gms.internal.clearcut.zzcg.m10726a(r0, r1, r2)
            return r0
        L_0x009c:
            com.google.android.gms.internal.clearcut.zzgc$zza r0 = new com.google.android.gms.internal.clearcut.zzgc$zza
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            return r0
        L_0x00a5:
            com.google.android.gms.internal.clearcut.zzgc r0 = new com.google.android.gms.internal.clearcut.zzgc
            r1 = r0
            r1.<init>()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzgc.mo10535a(int, java.lang.Object, java.lang.Object):java.lang.Object");
    }
}
