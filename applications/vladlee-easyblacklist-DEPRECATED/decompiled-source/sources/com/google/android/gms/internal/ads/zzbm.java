package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbm.class */
public final class zzbm {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbm$zza.class */
    public static final class zza extends zzdrt<zza, C3489zza> implements zzdtg {
        private static final zza zzdy;
        private static volatile zzdtn<zza> zzdz;
        private int zzdl;
        private long zzdn;
        private long zzdr;
        private long zzds;
        private long zzdu;
        private String zzdm = "";
        private String zzdo = "";
        private String zzdp = "";
        private String zzdq = "";
        private String zzdt = "";
        private String zzdv = "";
        private String zzdw = "";
        private zzdsb<zzb> zzdx = ajg.m5241b();

        /* renamed from: com.google.android.gms.internal.ads.zzbm$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbm$zza$zza.class */
        public static final class C3489zza extends zzdrt.zzb<zza, C3489zza> implements zzdtg {
            private C3489zza() {
                super(zza.zzdy);
            }

            /* synthetic */ C3489zza(byte b) {
                this();
            }

            public final C3489zza zza(zzb.C3490zza zzaVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m4031a((zza) this.f14556a, (zzb) ((zzdrt) zzaVar.zzbaf()));
                return this;
            }

            public final C3489zza zzc(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m4032a((zza) this.f14556a, j);
                return this;
            }

            public final C3489zza zzi(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m4030a((zza) this.f14556a, str);
                return this;
            }

            public final C3489zza zzj(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m4029b((zza) this.f14556a, str);
                return this;
            }

            public final C3489zza zzk(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m4028c((zza) this.f14556a, str);
                return this;
            }

            public final C3489zza zzl(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m4027d((zza) this.f14556a, str);
                return this;
            }

            public final C3489zza zzm(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m4026e((zza) this.f14556a, str);
                return this;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbm$zza$zzb.class */
        public static final class zzb extends zzdrt<zzb, C3490zza> implements zzdtg {
            private static volatile zzdtn<zzb> zzdz;
            private static final zzb zzec;
            private int zzdl;
            private String zzea = "";
            private String zzeb = "";

            /* renamed from: com.google.android.gms.internal.ads.zzbm$zza$zzb$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbm$zza$zzb$zza.class */
            public static final class C3490zza extends zzdrt.zzb<zzb, C3490zza> implements zzdtg {
                private C3490zza() {
                    super(zzb.zzec);
                }

                /* synthetic */ C3490zza(byte b) {
                    this();
                }

                public final C3490zza zzs(String str) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzb.m4024a((zzb) this.f14556a, str);
                    return this;
                }

                public final C3490zza zzt(String str) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzb.m4023b((zzb) this.f14556a, str);
                    return this;
                }
            }

            static {
                zzb zzbVar = new zzb();
                zzec = zzbVar;
                zzdrt.m3364a(zzb.class, zzbVar);
            }

            private zzb() {
            }

            /* renamed from: a */
            static /* synthetic */ void m4024a(zzb zzbVar, String str) {
                str.getClass();
                zzbVar.zzdl |= 1;
                zzbVar.zzea = str;
            }

            /* renamed from: b */
            static /* synthetic */ void m4023b(zzb zzbVar, String str) {
                str.getClass();
                zzbVar.zzdl |= 2;
                zzbVar.zzeb = str;
            }

            public static C3490zza zzu() {
                return zzec.m3360c();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                switch (C2028ld.f10170a[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new C3490zza((byte) 0);
                    case 3:
                        return m3366a(zzec, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\b��\u0002\b\u0001", new Object[]{"zzdl", "zzea", "zzeb"});
                    case 4:
                        return zzec;
                    case 5:
                        zzdtn<zzb> zzdtnVar = zzdz;
                        zzdtn<zzb> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zzb.class) {
                                try {
                                    zzdtn<zzb> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzec);
                                        zzdz = zzdtnVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzdtnVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        static {
            zza zzaVar = new zza();
            zzdy = zzaVar;
            zzdrt.m3364a(zza.class, zzaVar);
        }

        private zza() {
        }

        /* renamed from: a */
        static /* synthetic */ void m4032a(zza zzaVar, long j) {
            zzaVar.zzdl |= 2;
            zzaVar.zzdn = j;
        }

        /* renamed from: a */
        static /* synthetic */ void m4031a(zza zzaVar, zzb zzbVar) {
            zzbVar.getClass();
            if (!zzaVar.zzdx.zzaxp()) {
                zzaVar.zzdx = zzdrt.m3367a(zzaVar.zzdx);
            }
            zzaVar.zzdx.add(zzbVar);
        }

        /* renamed from: a */
        static /* synthetic */ void m4030a(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzdl |= 1;
            zzaVar.zzdm = str;
        }

        /* renamed from: b */
        static /* synthetic */ void m4029b(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzdl |= 4;
            zzaVar.zzdo = str;
        }

        /* renamed from: c */
        static /* synthetic */ void m4028c(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzdl |= 8;
            zzaVar.zzdp = str;
        }

        /* renamed from: d */
        static /* synthetic */ void m4027d(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzdl |= 16;
            zzaVar.zzdq = str;
        }

        /* renamed from: e */
        static /* synthetic */ void m4026e(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzdl |= 1024;
            zzaVar.zzdw = str;
        }

        public static C3489zza zzs() {
            return zzdy.m3360c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (C2028ld.f10170a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3489zza((byte) 0);
                case 3:
                    return m3366a(zzdy, "\u0001\f��\u0001\u0001\f\f��\u0001��\u0001\b��\u0002\u0002\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004\u0006\u0002\u0005\u0007\u0002\u0006\b\b\u0007\t\u0002\b\n\b\t\u000b\b\n\f\u001b", new Object[]{"zzdl", "zzdm", "zzdn", "zzdo", "zzdp", "zzdq", "zzdr", "zzds", "zzdt", "zzdu", "zzdv", "zzdw", "zzdx", zzb.class});
                case 4:
                    return zzdy;
                case 5:
                    zzdtn<zza> zzdtnVar = zzdz;
                    zzdtn<zza> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzdtn<zza> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzdy);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
