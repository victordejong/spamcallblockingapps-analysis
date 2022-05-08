package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhm.class */
public final class zzhm {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhm$zza.class */
    public static final class zza extends zzdx<zza, C2482zza> implements zzfj {
        private static volatile zzfr<zza> zzbc;
        private static final zza zzrs;
        private int zzbd;
        private String zzqs = "";
        private zzc zzrr;

        /* renamed from: com.google.android.gms.internal.icing.zzhm$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhm$zza$zza.class */
        public static final class C2482zza extends zzdx.zzb<zza, C2482zza> implements zzfj {
            private C2482zza() {
                super(zza.zzrs);
            }

            /* synthetic */ C2482zza(zzho zzhoVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzrs = zzaVar;
            zzdx.m13831j(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.icing.zzdx$zza, com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhm$zza>] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.icing.zzdx
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo13474g(int r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                r7 = this;
                int[] r0 = com.google.android.gms.internal.icing.zzho.f8125a
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x009c;
                    case 2: goto L_0x0093;
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
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhm$zza> r0 = com.google.android.gms.internal.icing.zzhm.zza.zzbc
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0071
                java.lang.Class<com.google.android.gms.internal.icing.zzhm$zza> r0 = com.google.android.gms.internal.icing.zzhm.zza.class
                monitor-enter(r0)
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhm$zza> r0 = com.google.android.gms.internal.icing.zzhm.zza.zzbc     // Catch: all -> 0x006b
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0065
                com.google.android.gms.internal.icing.zzdx$zza r0 = new com.google.android.gms.internal.icing.zzdx$zza     // Catch: all -> 0x006b
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.icing.zzhm$zza r1 = com.google.android.gms.internal.icing.zzhm.zza.zzrs     // Catch: all -> 0x006b
                r0.<init>(r1)     // Catch: all -> 0x006b
                r0 = r9
                com.google.android.gms.internal.icing.zzhm.zza.zzbc = r0     // Catch: all -> 0x006b
            L_0x0065:
                java.lang.Class<com.google.android.gms.internal.icing.zzhm$zza> r0 = com.google.android.gms.internal.icing.zzhm.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                goto L_0x0071
            L_0x006b:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.icing.zzhm$zza> r0 = com.google.android.gms.internal.icing.zzhm.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                r0 = r9
                throw r0
            L_0x0071:
                r0 = r9
                return r0
            L_0x0073:
                com.google.android.gms.internal.icing.zzhm$zza r0 = com.google.android.gms.internal.icing.zzhm.zza.zzrs
                return r0
            L_0x0077:
                com.google.android.gms.internal.icing.zzhm$zza r0 = com.google.android.gms.internal.icing.zzhm.zza.zzrs
                java.lang.String r1 = "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\b��\u0002\t\u0001"
                r2 = 3
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzbd"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.String r5 = "zzqs"
                r3[r4] = r5
                r3 = r2
                r4 = 2
                java.lang.String r5 = "zzrr"
                r3[r4] = r5
                java.lang.Object r0 = com.google.android.gms.internal.icing.zzdx.m13833h(r0, r1, r2)
                return r0
            L_0x0093:
                com.google.android.gms.internal.icing.zzhm$zza$zza r0 = new com.google.android.gms.internal.icing.zzhm$zza$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x009c:
                com.google.android.gms.internal.icing.zzhm$zza r0 = new com.google.android.gms.internal.icing.zzhm$zza
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzhm.zza.mo13474g(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhm$zzb.class */
    public static final class zzb extends zzdx<zzb, zza> implements zzfj {
        private static volatile zzfr<zzb> zzbc;
        private static final zzb zzru;
        private int zzbd;
        private String zzra = "";
        private zzee<zza> zzrt = zzdx.m13826o();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhm$zzb$zza.class */
        public static final class zza extends zzdx.zzb<zzb, zza> implements zzfj {
            private zza() {
                super(zzb.zzru);
            }

            /* synthetic */ zza(zzho zzhoVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzru = zzbVar;
            zzdx.m13831j(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.icing.zzdx$zza, com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhm$zzb>] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.icing.zzdx
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo13474g(int r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                r7 = this;
                int[] r0 = com.google.android.gms.internal.icing.zzho.f8125a
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x00a1;
                    case 2: goto L_0x0098;
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
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhm$zzb> r0 = com.google.android.gms.internal.icing.zzhm.zzb.zzbc
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0071
                java.lang.Class<com.google.android.gms.internal.icing.zzhm$zzb> r0 = com.google.android.gms.internal.icing.zzhm.zzb.class
                monitor-enter(r0)
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhm$zzb> r0 = com.google.android.gms.internal.icing.zzhm.zzb.zzbc     // Catch: all -> 0x006b
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0065
                com.google.android.gms.internal.icing.zzdx$zza r0 = new com.google.android.gms.internal.icing.zzdx$zza     // Catch: all -> 0x006b
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.icing.zzhm$zzb r1 = com.google.android.gms.internal.icing.zzhm.zzb.zzru     // Catch: all -> 0x006b
                r0.<init>(r1)     // Catch: all -> 0x006b
                r0 = r9
                com.google.android.gms.internal.icing.zzhm.zzb.zzbc = r0     // Catch: all -> 0x006b
            L_0x0065:
                java.lang.Class<com.google.android.gms.internal.icing.zzhm$zzb> r0 = com.google.android.gms.internal.icing.zzhm.zzb.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                goto L_0x0071
            L_0x006b:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.icing.zzhm$zzb> r0 = com.google.android.gms.internal.icing.zzhm.zzb.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                r0 = r9
                throw r0
            L_0x0071:
                r0 = r9
                return r0
            L_0x0073:
                com.google.android.gms.internal.icing.zzhm$zzb r0 = com.google.android.gms.internal.icing.zzhm.zzb.zzru
                return r0
            L_0x0077:
                com.google.android.gms.internal.icing.zzhm$zzb r0 = com.google.android.gms.internal.icing.zzhm.zzb.zzru
                java.lang.String r1 = "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\b��\u0002\u001b"
                r2 = 4
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzbd"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.String r5 = "zzra"
                r3[r4] = r5
                r3 = r2
                r4 = 2
                java.lang.String r5 = "zzrt"
                r3[r4] = r5
                r3 = r2
                r4 = 3
                java.lang.Class<com.google.android.gms.internal.icing.zzhm$zza> r5 = com.google.android.gms.internal.icing.zzhm.zza.class
                r3[r4] = r5
                java.lang.Object r0 = com.google.android.gms.internal.icing.zzdx.m13833h(r0, r1, r2)
                return r0
            L_0x0098:
                com.google.android.gms.internal.icing.zzhm$zzb$zza r0 = new com.google.android.gms.internal.icing.zzhm$zzb$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x00a1:
                com.google.android.gms.internal.icing.zzhm$zzb r0 = new com.google.android.gms.internal.icing.zzhm$zzb
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzhm.zzb.mo13474g(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhm$zzc.class */
    public static final class zzc extends zzdx<zzc, zza> implements zzfj {
        private static volatile zzfr<zzc> zzbc;
        private static final zzc zzsa;
        private int zzbd;
        private boolean zzrv;
        private String zzrw = "";
        private long zzrx;
        private double zzry;
        private zzb zzrz;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhm$zzc$zza.class */
        public static final class zza extends zzdx.zzb<zzc, zza> implements zzfj {
            private zza() {
                super(zzc.zzsa);
            }

            /* synthetic */ zza(zzho zzhoVar) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzsa = zzcVar;
            zzdx.m13831j(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.icing.zzdx$zza, com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhm$zzc>] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.icing.zzdx
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo13474g(int r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                r7 = this;
                int[] r0 = com.google.android.gms.internal.icing.zzho.f8125a
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x00ac;
                    case 2: goto L_0x00a3;
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
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhm$zzc> r0 = com.google.android.gms.internal.icing.zzhm.zzc.zzbc
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0071
                java.lang.Class<com.google.android.gms.internal.icing.zzhm$zzc> r0 = com.google.android.gms.internal.icing.zzhm.zzc.class
                monitor-enter(r0)
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhm$zzc> r0 = com.google.android.gms.internal.icing.zzhm.zzc.zzbc     // Catch: all -> 0x006b
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0065
                com.google.android.gms.internal.icing.zzdx$zza r0 = new com.google.android.gms.internal.icing.zzdx$zza     // Catch: all -> 0x006b
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.icing.zzhm$zzc r1 = com.google.android.gms.internal.icing.zzhm.zzc.zzsa     // Catch: all -> 0x006b
                r0.<init>(r1)     // Catch: all -> 0x006b
                r0 = r9
                com.google.android.gms.internal.icing.zzhm.zzc.zzbc = r0     // Catch: all -> 0x006b
            L_0x0065:
                java.lang.Class<com.google.android.gms.internal.icing.zzhm$zzc> r0 = com.google.android.gms.internal.icing.zzhm.zzc.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                goto L_0x0071
            L_0x006b:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.icing.zzhm$zzc> r0 = com.google.android.gms.internal.icing.zzhm.zzc.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                r0 = r9
                throw r0
            L_0x0071:
                r0 = r9
                return r0
            L_0x0073:
                com.google.android.gms.internal.icing.zzhm$zzc r0 = com.google.android.gms.internal.icing.zzhm.zzc.zzsa
                return r0
            L_0x0077:
                com.google.android.gms.internal.icing.zzhm$zzc r0 = com.google.android.gms.internal.icing.zzhm.zzc.zzsa
                java.lang.String r1 = "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001\u0007��\u0002\b\u0001\u0003\u0002\u0002\u0004��\u0003\u0005\t\u0004"
                r2 = 6
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzbd"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.String r5 = "zzrv"
                r3[r4] = r5
                r3 = r2
                r4 = 2
                java.lang.String r5 = "zzrw"
                r3[r4] = r5
                r3 = r2
                r4 = 3
                java.lang.String r5 = "zzrx"
                r3[r4] = r5
                r3 = r2
                r4 = 4
                java.lang.String r5 = "zzry"
                r3[r4] = r5
                r3 = r2
                r4 = 5
                java.lang.String r5 = "zzrz"
                r3[r4] = r5
                java.lang.Object r0 = com.google.android.gms.internal.icing.zzdx.m13833h(r0, r1, r2)
                return r0
            L_0x00a3:
                com.google.android.gms.internal.icing.zzhm$zzc$zza r0 = new com.google.android.gms.internal.icing.zzhm$zzc$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x00ac:
                com.google.android.gms.internal.icing.zzhm$zzc r0 = new com.google.android.gms.internal.icing.zzhm$zzc
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzhm.zzc.mo13474g(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }
}
