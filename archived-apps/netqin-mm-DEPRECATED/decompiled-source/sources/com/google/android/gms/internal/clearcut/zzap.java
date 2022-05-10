package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import p131c.p161d.p170b.p224d.p252g.p255c.C4360j;
import p131c.p161d.p170b.p224d.p252g.p255c.C4365k;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzap.class */
public final class zzap {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzap$zza.class */
    public static final class zza extends zzcg<zza, C10509zza> implements zzdq {
        public static volatile zzdz<zza> zzbg;
        public static final zza zzes;
        public int zzbb;
        public int zzel;
        public int zzem;
        public int zzen;
        public int zzeo;
        public int zzep;
        public int zzeq;
        public int zzer;

        /* renamed from: com.google.android.gms.internal.clearcut.zzap$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzap$zza$zza.class */
        public static final class C10509zza extends zzcg.zza<zza, C10509zza> implements zzdq {
            public C10509zza() {
                super(zza.zzes);
            }

            public /* synthetic */ C10509zza(C4360j jVar) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzap$zza$zzb.class */
        public enum zzb implements zzcj {
            UNKNOWN(0),
            ON(1),
            OFF(2);
            
            public static final zzck<zzb> zzbq = new C4365k();
            public final int value;

            zzb(int i) {
                this.value = i;
            }

            public static zzck<zzb> zzd() {
                return zzbq;
            }

            public static zzb zze(int i) {
                if (i == 0) {
                    return UNKNOWN;
                }
                if (i == 1) {
                    return ON;
                }
                if (i != 2) {
                    return null;
                }
                return OFF;
            }

            @Override // com.google.android.gms.internal.clearcut.zzcj
            public final int zzc() {
                return this.value;
            }
        }

        static {
            zza zzaVar = new zza();
            zzes = zzaVar;
            zzcg.m10724a(zza.class, zzaVar);
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzap$zza>, com.google.android.gms.internal.clearcut.zzcg$zzb] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.clearcut.zzcg
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo10535a(int r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 265
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzap.zza.mo10535a(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }
}
