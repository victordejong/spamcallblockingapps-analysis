package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzal.class */
public final class zzal {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzal$zza.class */
    public static final class zza extends zzdx<zza, C2479zza> implements zzfj {
        private static final zza zzbb;
        private static volatile zzfr<zza> zzbc;
        private zzee<zzb> zzba = zzdx.m13826o();

        /* renamed from: com.google.android.gms.internal.icing.zzal$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzal$zza$zza.class */
        public static final class C2479zza extends zzdx.zzb<zza, C2479zza> implements zzfj {
            private C2479zza() {
                super(zza.zzbb);
            }

            /* synthetic */ C2479zza(zzak zzakVar) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzal$zza$zzb.class */
        public static final class zzb extends zzdx<zzb, C2480zza> implements zzfj {
            private static volatile zzfr<zzb> zzbc;
            private static final zzb zzbh;
            private int zzbd;
            private String zzbe = "";
            private String zzbf = "";
            private int zzbg;

            /* renamed from: com.google.android.gms.internal.icing.zzal$zza$zzb$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzal$zza$zzb$zza.class */
            public static final class C2480zza extends zzdx.zzb<zzb, C2480zza> implements zzfj {
                private C2480zza() {
                    super(zzb.zzbh);
                }

                /* synthetic */ C2480zza(zzak zzakVar) {
                    this();
                }
            }

            static {
                zzb zzbVar = new zzb();
                zzbh = zzbVar;
                zzdx.m13831j(zzb.class, zzbVar);
            }

            private zzb() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.icing.zzdx$zza, com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzal$zza$zzb>] */
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
                    int[] r0 = com.google.android.gms.internal.icing.zzak.f7871a
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
                    com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzal$zza$zzb> r0 = com.google.android.gms.internal.icing.zzal.zza.zzb.zzbc
                    r10 = r0
                    r0 = r10
                    r9 = r0
                    r0 = r10
                    if (r0 != 0) goto L_0x0071
                    java.lang.Class<com.google.android.gms.internal.icing.zzal$zza$zzb> r0 = com.google.android.gms.internal.icing.zzal.zza.zzb.class
                    monitor-enter(r0)
                    com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzal$zza$zzb> r0 = com.google.android.gms.internal.icing.zzal.zza.zzb.zzbc     // Catch: all -> 0x006b
                    r10 = r0
                    r0 = r10
                    r9 = r0
                    r0 = r10
                    if (r0 != 0) goto L_0x0065
                    com.google.android.gms.internal.icing.zzdx$zza r0 = new com.google.android.gms.internal.icing.zzdx$zza     // Catch: all -> 0x006b
                    r9 = r0
                    r0 = r9
                    com.google.android.gms.internal.icing.zzal$zza$zzb r1 = com.google.android.gms.internal.icing.zzal.zza.zzb.zzbh     // Catch: all -> 0x006b
                    r0.<init>(r1)     // Catch: all -> 0x006b
                    r0 = r9
                    com.google.android.gms.internal.icing.zzal.zza.zzb.zzbc = r0     // Catch: all -> 0x006b
                L_0x0065:
                    java.lang.Class<com.google.android.gms.internal.icing.zzal$zza$zzb> r0 = com.google.android.gms.internal.icing.zzal.zza.zzb.class
                    monitor-exit(r0)     // Catch: all -> 0x006b
                    goto L_0x0071
                L_0x006b:
                    r9 = move-exception
                    java.lang.Class<com.google.android.gms.internal.icing.zzal$zza$zzb> r0 = com.google.android.gms.internal.icing.zzal.zza.zzb.class
                    monitor-exit(r0)     // Catch: all -> 0x006b
                    r0 = r9
                    throw r0
                L_0x0071:
                    r0 = r9
                    return r0
                L_0x0073:
                    com.google.android.gms.internal.icing.zzal$zza$zzb r0 = com.google.android.gms.internal.icing.zzal.zza.zzb.zzbh
                    return r0
                L_0x0077:
                    com.google.android.gms.internal.icing.zzal$zza$zzb r0 = com.google.android.gms.internal.icing.zzal.zza.zzb.zzbh
                    java.lang.String r1 = "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\b��\u0002\b\u0001\u0003\u0004\u0002"
                    r2 = 4
                    java.lang.Object[] r2 = new java.lang.Object[r2]
                    r3 = r2
                    r4 = 0
                    java.lang.String r5 = "zzbd"
                    r3[r4] = r5
                    r3 = r2
                    r4 = 1
                    java.lang.String r5 = "zzbe"
                    r3[r4] = r5
                    r3 = r2
                    r4 = 2
                    java.lang.String r5 = "zzbf"
                    r3[r4] = r5
                    r3 = r2
                    r4 = 3
                    java.lang.String r5 = "zzbg"
                    r3[r4] = r5
                    java.lang.Object r0 = com.google.android.gms.internal.icing.zzdx.m13833h(r0, r1, r2)
                    return r0
                L_0x0098:
                    com.google.android.gms.internal.icing.zzal$zza$zzb$zza r0 = new com.google.android.gms.internal.icing.zzal$zza$zzb$zza
                    r1 = r0
                    r2 = 0
                    r1.<init>(r2)
                    return r0
                L_0x00a1:
                    com.google.android.gms.internal.icing.zzal$zza$zzb r0 = new com.google.android.gms.internal.icing.zzal$zza$zzb
                    r1 = r0
                    r1.<init>()
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzal.zza.zzb.mo13474g(int, java.lang.Object, java.lang.Object):java.lang.Object");
            }
        }

        static {
            zza zzaVar = new zza();
            zzbb = zzaVar;
            zzdx.m13831j(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.icing.zzdx$zza, com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzal$zza>] */
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
                int[] r0 = com.google.android.gms.internal.icing.zzak.f7871a
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x0097;
                    case 2: goto L_0x008e;
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
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzal$zza> r0 = com.google.android.gms.internal.icing.zzal.zza.zzbc
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0071
                java.lang.Class<com.google.android.gms.internal.icing.zzal$zza> r0 = com.google.android.gms.internal.icing.zzal.zza.class
                monitor-enter(r0)
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzal$zza> r0 = com.google.android.gms.internal.icing.zzal.zza.zzbc     // Catch: all -> 0x006b
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0065
                com.google.android.gms.internal.icing.zzdx$zza r0 = new com.google.android.gms.internal.icing.zzdx$zza     // Catch: all -> 0x006b
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.icing.zzal$zza r1 = com.google.android.gms.internal.icing.zzal.zza.zzbb     // Catch: all -> 0x006b
                r0.<init>(r1)     // Catch: all -> 0x006b
                r0 = r9
                com.google.android.gms.internal.icing.zzal.zza.zzbc = r0     // Catch: all -> 0x006b
            L_0x0065:
                java.lang.Class<com.google.android.gms.internal.icing.zzal$zza> r0 = com.google.android.gms.internal.icing.zzal.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                goto L_0x0071
            L_0x006b:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.icing.zzal$zza> r0 = com.google.android.gms.internal.icing.zzal.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                r0 = r9
                throw r0
            L_0x0071:
                r0 = r9
                return r0
            L_0x0073:
                com.google.android.gms.internal.icing.zzal$zza r0 = com.google.android.gms.internal.icing.zzal.zza.zzbb
                return r0
            L_0x0077:
                com.google.android.gms.internal.icing.zzal$zza r0 = com.google.android.gms.internal.icing.zzal.zza.zzbb
                java.lang.String r1 = "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b"
                r2 = 2
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzba"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.Class<com.google.android.gms.internal.icing.zzal$zza$zzb> r5 = com.google.android.gms.internal.icing.zzal.zza.zzb.class
                r3[r4] = r5
                java.lang.Object r0 = com.google.android.gms.internal.icing.zzdx.m13833h(r0, r1, r2)
                return r0
            L_0x008e:
                com.google.android.gms.internal.icing.zzal$zza$zza r0 = new com.google.android.gms.internal.icing.zzal$zza$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x0097:
                com.google.android.gms.internal.icing.zzal$zza r0 = new com.google.android.gms.internal.icing.zzal$zza
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzal.zza.mo13474g(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }
}
