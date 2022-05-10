package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import p131c.p161d.p170b.p224d.p252g.p255c.C4364j3;
import p131c.p161d.p170b.p224d.p252g.p255c.C4373k3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgt.class */
public final class zzgt {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgt$zza.class */
    public static final class zza extends zzcg<zza, C10511zza> implements zzdq {
        public static volatile zzdz<zza> zzbg;
        public static final zza zzbil;

        /* renamed from: com.google.android.gms.internal.clearcut.zzgt$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgt$zza$zza.class */
        public static final class C10511zza extends zzcg.zza<zza, C10511zza> implements zzdq {
            public C10511zza() {
                super(zza.zzbil);
            }

            public /* synthetic */ C10511zza(C4364j3 j3Var) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgt$zza$zzb.class */
        public enum zzb implements zzcj {
            NO_RESTRICTION(0),
            SIDEWINDER_DEVICE(1),
            LATCHSKY_DEVICE(2);
            
            public static final zzck<zzb> zzbq = new C4373k3();
            public final int value;

            zzb(int i) {
                this.value = i;
            }

            public static zzb zzbe(int i) {
                if (i == 0) {
                    return NO_RESTRICTION;
                }
                if (i == 1) {
                    return SIDEWINDER_DEVICE;
                }
                if (i != 2) {
                    return null;
                }
                return LATCHSKY_DEVICE;
            }

            public static zzck<zzb> zzd() {
                return zzbq;
            }

            @Override // com.google.android.gms.internal.clearcut.zzcj
            public final int zzc() {
                return this.value;
            }
        }

        static {
            zza zzaVar = new zza();
            zzbil = zzaVar;
            zzcg.m10724a(zza.class, zzaVar);
        }

        /* JADX WARN: Type inference failed for: r6v6, types: [com.google.android.gms.internal.clearcut.zzcg$zzb, com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgt$zza>] */
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
                int[] r0 = p131c.p161d.p170b.p224d.p252g.p255c.C4364j3.f16539a
                r1 = r5
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x008a;
                    case 2: goto L_0x0081;
                    case 3: goto L_0x0077;
                    case 4: goto L_0x0073;
                    case 5: goto L_0x003f;
                    case 6: goto L_0x003a;
                    case 7: goto L_0x0038;
                    default: goto L_0x0030;
                }
            L_0x0030:
                java.lang.UnsupportedOperationException r0 = new java.lang.UnsupportedOperationException
                r1 = r0
                r1.<init>()
                throw r0
            L_0x0038:
                r0 = 0
                return r0
            L_0x003a:
                r0 = 1
                java.lang.Byte r0 = java.lang.Byte.valueOf(r0)
                return r0
            L_0x003f:
                com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgt$zza> r0 = com.google.android.gms.internal.clearcut.zzgt.zza.zzbg
                r7 = r0
                r0 = r7
                r6 = r0
                r0 = r7
                if (r0 != 0) goto L_0x0071
                java.lang.Class<com.google.android.gms.internal.clearcut.zzgt$zza> r0 = com.google.android.gms.internal.clearcut.zzgt.zza.class
                monitor-enter(r0)
                com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgt$zza> r0 = com.google.android.gms.internal.clearcut.zzgt.zza.zzbg     // Catch: all -> 0x006b
                r7 = r0
                r0 = r7
                r6 = r0
                r0 = r7
                if (r0 != 0) goto L_0x0065
                com.google.android.gms.internal.clearcut.zzcg$zzb r0 = new com.google.android.gms.internal.clearcut.zzcg$zzb     // Catch: all -> 0x006b
                r6 = r0
                r0 = r6
                com.google.android.gms.internal.clearcut.zzgt$zza r1 = com.google.android.gms.internal.clearcut.zzgt.zza.zzbil     // Catch: all -> 0x006b
                r0.<init>(r1)     // Catch: all -> 0x006b
                r0 = r6
                com.google.android.gms.internal.clearcut.zzgt.zza.zzbg = r0     // Catch: all -> 0x006b
            L_0x0065:
                java.lang.Class<com.google.android.gms.internal.clearcut.zzgt$zza> r0 = com.google.android.gms.internal.clearcut.zzgt.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                goto L_0x0071
            L_0x006b:
                r6 = move-exception
                java.lang.Class<com.google.android.gms.internal.clearcut.zzgt$zza> r0 = com.google.android.gms.internal.clearcut.zzgt.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                r0 = r6
                throw r0
            L_0x0071:
                r0 = r6
                return r0
            L_0x0073:
                com.google.android.gms.internal.clearcut.zzgt$zza r0 = com.google.android.gms.internal.clearcut.zzgt.zza.zzbil
                return r0
            L_0x0077:
                com.google.android.gms.internal.clearcut.zzgt$zza r0 = com.google.android.gms.internal.clearcut.zzgt.zza.zzbil
                java.lang.String r1 = "\u0001��"
                r2 = 0
                java.lang.Object r0 = com.google.android.gms.internal.clearcut.zzcg.m10726a(r0, r1, r2)
                return r0
            L_0x0081:
                com.google.android.gms.internal.clearcut.zzgt$zza$zza r0 = new com.google.android.gms.internal.clearcut.zzgt$zza$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x008a:
                com.google.android.gms.internal.clearcut.zzgt$zza r0 = new com.google.android.gms.internal.clearcut.zzgt$zza
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzgt.zza.mo10535a(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }
}
