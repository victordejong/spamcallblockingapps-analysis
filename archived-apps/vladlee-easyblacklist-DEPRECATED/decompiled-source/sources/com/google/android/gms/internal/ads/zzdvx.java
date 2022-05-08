package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx.class */
public final class zzdvx {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zza.class */
    public static final class zza extends zzdrt<zza, zzb> implements zzdtg {
        private static volatile zzdtn<zza> zzdz;
        private static final zza zzhum;
        private int zzdl;
        private int zzhuf;
        private C3496zza zzhug;
        private boolean zzhuj;
        private boolean zzhuk;
        private byte zzhul = (byte) 2;
        private zzdqk zzhuh = zzdqk.zzhhx;
        private zzdqk zzhui = zzdqk.zzhhx;

        /* renamed from: com.google.android.gms.internal.ads.zzdvx$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zza$zza.class */
        public static final class C3496zza extends zzdrt<C3496zza, C3497zza> implements zzdtg {
            private static volatile zzdtn<C3496zza> zzdz;
            private static final C3496zza zzhur;
            private int zzdl;
            private String zzhun = "";
            private String zzhuo = "";
            private String zzhup = "";
            private int zzhuq;

            /* renamed from: com.google.android.gms.internal.ads.zzdvx$zza$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zza$zza$zza.class */
            public static final class C3497zza extends zzdrt.zzb<C3496zza, C3497zza> implements zzdtg {
                private C3497zza() {
                    super(C3496zza.zzhur);
                }

                /* synthetic */ C3497zza(byte b) {
                    this();
                }
            }

            static {
                C3496zza zzaVar = new C3496zza();
                zzhur = zzaVar;
                zzdrt.m3364a(C3496zza.class, zzaVar);
            }

            private C3496zza() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                switch (akw.f7553a[i - 1]) {
                    case 1:
                        return new C3496zza();
                    case 2:
                        return new C3497zza((byte) 0);
                    case 3:
                        return m3366a(zzhur, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001\b��\u0002\b\u0001\u0003\b\u0002\u0004\u0004\u0003", new Object[]{"zzdl", "zzhun", "zzhuo", "zzhup", "zzhuq"});
                    case 4:
                        return zzhur;
                    case 5:
                        zzdtn<C3496zza> zzdtnVar = zzdz;
                        zzdtn<C3496zza> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (C3496zza.class) {
                                try {
                                    zzdtn<C3496zza> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzhur);
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

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zza$zzb.class */
        public static final class zzb extends zzdrt.zzb<zza, zzb> implements zzdtg {
            private zzb() {
                super(zza.zzhum);
            }

            /* synthetic */ zzb(byte b) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zza$zzc.class */
        public enum zzc implements zzdry {
            SAFE(0),
            DANGEROUS(1),
            UNKNOWN(2),
            POTENTIALLY_UNWANTED(3),
            DANGEROUS_HOST(4);
            

            /* renamed from: f */
            private static final zzdrx<zzc> f14615f = new akz();

            /* renamed from: g */
            private final int f14617g;

            zzc(int i) {
                this.f14617g = i;
            }

            public static zzdsa zzaf() {
                return aky.f7556a;
            }

            public static zzc zzhd(int i) {
                if (i == 0) {
                    return SAFE;
                }
                if (i == 1) {
                    return DANGEROUS;
                }
                if (i == 2) {
                    return UNKNOWN;
                }
                if (i == 3) {
                    return POTENTIALLY_UNWANTED;
                }
                if (i != 4) {
                    return null;
                }
                return DANGEROUS_HOST;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f14617g + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f14617g;
            }
        }

        static {
            zza zzaVar = new zza();
            zzhum = zzaVar;
            zzdrt.m3364a(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            int i2 = akw.f7553a[i - 1];
            int i3 = 0;
            switch (i2) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb((byte) 0);
                case 3:
                    return m3366a(zzhum, "\u0001\u0006��\u0001\u0001\u0006\u0006����\u0001\u0001Ԍ��\u0002\t\u0001\u0003\n\u0002\u0004\n\u0003\u0005\u0007\u0004\u0006\u0007\u0005", new Object[]{"zzdl", "zzhuf", zzc.zzaf(), "zzhug", "zzhuh", "zzhui", "zzhuj", "zzhuk"});
                case 4:
                    return zzhum;
                case 5:
                    zzdtn<zza> zzdtnVar = zzdz;
                    zzdtn<zza> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzdtn<zza> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzhum);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return Byte.valueOf(this.zzhul);
                case 7:
                    if (obj != null) {
                        i3 = 1;
                    }
                    this.zzhul = (byte) i3;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb.class */
    public static final class zzb extends zzdrt<zzb, zza> implements zzdtg {
        private static volatile zzdtn<zzb> zzdz;
        private static final zzb zzhvn;
        private int zzbut;
        private int zzdl;
        private int zzhuy;
        private C3498zzb zzhvb;
        private zzf zzhve;
        private boolean zzhvf;
        private boolean zzhvi;
        private boolean zzhvj;
        private zzi zzhvk;
        private byte zzhul = (byte) 2;
        private String zzhuo = "";
        private String zzhuz = "";
        private String zzhva = "";
        private zzdsb<zzh> zzhvc = ajg.m5241b();
        private String zzhvd = "";
        private zzdsb<String> zzhvg = ajg.m5241b();
        private String zzhvh = "";
        private zzdqk zzhuh = zzdqk.zzhhx;
        private zzdsb<String> zzhvl = ajg.m5241b();
        private zzdsb<String> zzhvm = ajg.m5241b();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zza.class */
        public static final class zza extends zzdrt.zzb<zzb, zza> implements zzdtg {
            private zza() {
                super(zzb.zzhvn);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.zzdvx$zzb$zzb  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzb.class */
        public static final class C3498zzb extends zzdrt<C3498zzb, zza> implements zzdtg {
            private static volatile zzdtn<C3498zzb> zzdz;
            private static final C3498zzb zzhvp;
            private int zzdl;
            private String zzhvo = "";

            /* renamed from: com.google.android.gms.internal.ads.zzdvx$zzb$zzb$zza */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzb$zza.class */
            public static final class zza extends zzdrt.zzb<C3498zzb, zza> implements zzdtg {
                private zza() {
                    super(C3498zzb.zzhvp);
                }

                /* synthetic */ zza(byte b) {
                    this();
                }

                public final zza zzhl(String str) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    C3498zzb.m3313a((C3498zzb) this.f14556a, str);
                    return this;
                }
            }

            static {
                C3498zzb zzbVar = new C3498zzb();
                zzhvp = zzbVar;
                zzdrt.m3364a(C3498zzb.class, zzbVar);
            }

            private C3498zzb() {
            }

            /* renamed from: a */
            static /* synthetic */ void m3313a(C3498zzb zzbVar, String str) {
                str.getClass();
                zzbVar.zzdl |= 1;
                zzbVar.zzhvo = str;
            }

            public static zza zzbcw() {
                return zzhvp.m3360c();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                switch (akw.f7553a[i - 1]) {
                    case 1:
                        return new C3498zzb();
                    case 2:
                        return new zza((byte) 0);
                    case 3:
                        return m3366a(zzhvp, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001\b��", new Object[]{"zzdl", "zzhvo"});
                    case 4:
                        return zzhvp;
                    case 5:
                        zzdtn<C3498zzb> zzdtnVar = zzdz;
                        zzdtn<C3498zzb> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (C3498zzb.class) {
                                try {
                                    zzdtn<C3498zzb> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzhvp);
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

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzc.class */
        public static final class zzc extends zzdrt<zzc, zza> implements zzdtg {
            private static volatile zzdtn<zzc> zzdz;
            private static final zzc zzhvr;
            private int zzdl;
            private byte zzhul = (byte) 2;
            private zzdqk zzhvq = zzdqk.zzhhx;
            private zzdqk zzhct = zzdqk.zzhhx;

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzc$zza.class */
            public static final class zza extends zzdrt.zzb<zzc, zza> implements zzdtg {
                private zza() {
                    super(zzc.zzhvr);
                }

                /* synthetic */ zza(byte b) {
                    this();
                }

                public final zza zzbk(zzdqk zzdqkVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzc.m3311a((zzc) this.f14556a, zzdqkVar);
                    return this;
                }

                public final zza zzbl(zzdqk zzdqkVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzc.m3310b((zzc) this.f14556a, zzdqkVar);
                    return this;
                }
            }

            static {
                zzc zzcVar = new zzc();
                zzhvr = zzcVar;
                zzdrt.m3364a(zzc.class, zzcVar);
            }

            private zzc() {
            }

            /* renamed from: a */
            static /* synthetic */ void m3311a(zzc zzcVar, zzdqk zzdqkVar) {
                zzdqkVar.getClass();
                zzcVar.zzdl |= 1;
                zzcVar.zzhvq = zzdqkVar;
            }

            /* renamed from: b */
            static /* synthetic */ void m3310b(zzc zzcVar, zzdqk zzdqkVar) {
                zzdqkVar.getClass();
                zzcVar.zzdl |= 2;
                zzcVar.zzhct = zzdqkVar;
            }

            public static zza zzbcy() {
                return zzhvr.m3360c();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                int i2 = akw.f7553a[i - 1];
                int i3 = 0;
                switch (i2) {
                    case 1:
                        return new zzc();
                    case 2:
                        return new zza((byte) 0);
                    case 3:
                        return m3366a(zzhvr, "\u0001\u0002��\u0001\u0001\u0002\u0002����\u0001\u0001Ԋ��\u0002\n\u0001", new Object[]{"zzdl", "zzhvq", "zzhct"});
                    case 4:
                        return zzhvr;
                    case 5:
                        zzdtn<zzc> zzdtnVar = zzdz;
                        zzdtn<zzc> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zzc.class) {
                                try {
                                    zzdtn<zzc> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzhvr);
                                        zzdz = zzdtnVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzdtnVar2;
                    case 6:
                        return Byte.valueOf(this.zzhul);
                    case 7:
                        if (obj != null) {
                            i3 = 1;
                        }
                        this.zzhul = (byte) i3;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzd.class */
        public static final class zzd extends zzdrt<zzd, zza> implements zzdtg {
            private static volatile zzdtn<zzd> zzdz;
            private static final zzd zzhvx;
            private int zzdl;
            private C3499zzb zzhvs;
            private int zzhvw;
            private byte zzhul = (byte) 2;
            private zzdsb<zzc> zzhvt = ajg.m5241b();
            private zzdqk zzhvu = zzdqk.zzhhx;
            private zzdqk zzhvv = zzdqk.zzhhx;

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzd$zza.class */
            public static final class zza extends zzdrt.zzb<zzd, zza> implements zzdtg {
                private zza() {
                    super(zzd.zzhvx);
                }

                /* synthetic */ zza(byte b) {
                    this();
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.zzdvx$zzb$zzd$zzb  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzd$zzb.class */
            public static final class C3499zzb extends zzdrt<C3499zzb, zza> implements zzdtg {
                private static volatile zzdtn<C3499zzb> zzdz;
                private static final C3499zzb zzhwb;
                private int zzdl;
                private zzdqk zzhvy = zzdqk.zzhhx;
                private zzdqk zzhvz = zzdqk.zzhhx;
                private zzdqk zzhwa = zzdqk.zzhhx;

                /* renamed from: com.google.android.gms.internal.ads.zzdvx$zzb$zzd$zzb$zza */
                /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzd$zzb$zza.class */
                public static final class zza extends zzdrt.zzb<C3499zzb, zza> implements zzdtg {
                    private zza() {
                        super(C3499zzb.zzhwb);
                    }

                    /* synthetic */ zza(byte b) {
                        this();
                    }
                }

                static {
                    C3499zzb zzbVar = new C3499zzb();
                    zzhwb = zzbVar;
                    zzdrt.m3364a(C3499zzb.class, zzbVar);
                }

                private C3499zzb() {
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.android.gms.internal.ads.zzdrt
                /* renamed from: a */
                public final Object mo3009a(int i, Object obj) {
                    switch (akw.f7553a[i - 1]) {
                        case 1:
                            return new C3499zzb();
                        case 2:
                            return new zza((byte) 0);
                        case 3:
                            return m3366a(zzhwb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\n��\u0002\n\u0001\u0003\n\u0002", new Object[]{"zzdl", "zzhvy", "zzhvz", "zzhwa"});
                        case 4:
                            return zzhwb;
                        case 5:
                            zzdtn<C3499zzb> zzdtnVar = zzdz;
                            zzdtn<C3499zzb> zzdtnVar2 = zzdtnVar;
                            if (zzdtnVar == null) {
                                synchronized (C3499zzb.class) {
                                    try {
                                        zzdtn<C3499zzb> zzdtnVar3 = zzdz;
                                        zzdtnVar2 = zzdtnVar3;
                                        if (zzdtnVar3 == null) {
                                            zzdtnVar2 = new zzdrt.zza<>(zzhwb);
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
                zzd zzdVar = new zzd();
                zzhvx = zzdVar;
                zzdrt.m3364a(zzd.class, zzdVar);
            }

            private zzd() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                int i2 = akw.f7553a[i - 1];
                int i3 = 0;
                switch (i2) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new zza((byte) 0);
                    case 3:
                        return m3366a(zzhvx, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001\u0001\u0001\t��\u0002Л\u0003\n\u0001\u0004\n\u0002\u0005\u0004\u0003", new Object[]{"zzdl", "zzhvs", "zzhvt", zzc.class, "zzhvu", "zzhvv", "zzhvw"});
                    case 4:
                        return zzhvx;
                    case 5:
                        zzdtn<zzd> zzdtnVar = zzdz;
                        zzdtn<zzd> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zzd.class) {
                                try {
                                    zzdtn<zzd> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzhvx);
                                        zzdz = zzdtnVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzdtnVar2;
                    case 6:
                        return Byte.valueOf(this.zzhul);
                    case 7:
                        if (obj != null) {
                            i3 = 1;
                        }
                        this.zzhul = (byte) i3;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zze.class */
        public static final class zze extends zzdrt<zze, zza> implements zzdtg {
            private static volatile zzdtn<zze> zzdz;
            private static final zze zzhwe;
            private int zzdl;
            private int zzhvw;
            private C3500zzb zzhwc;
            private byte zzhul = (byte) 2;
            private zzdsb<zzc> zzhvt = ajg.m5241b();
            private zzdqk zzhvu = zzdqk.zzhhx;
            private zzdqk zzhvv = zzdqk.zzhhx;
            private zzdqk zzhwd = zzdqk.zzhhx;

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zze$zza.class */
            public static final class zza extends zzdrt.zzb<zze, zza> implements zzdtg {
                private zza() {
                    super(zze.zzhwe);
                }

                /* synthetic */ zza(byte b) {
                    this();
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.zzdvx$zzb$zze$zzb  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zze$zzb.class */
            public static final class C3500zzb extends zzdrt<C3500zzb, zza> implements zzdtg {
                private static volatile zzdtn<C3500zzb> zzdz;
                private static final C3500zzb zzhwh;
                private int zzdl;
                private int zzhwf;
                private zzdqk zzhwg = zzdqk.zzhhx;
                private zzdqk zzhwa = zzdqk.zzhhx;

                /* renamed from: com.google.android.gms.internal.ads.zzdvx$zzb$zze$zzb$zza */
                /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zze$zzb$zza.class */
                public static final class zza extends zzdrt.zzb<C3500zzb, zza> implements zzdtg {
                    private zza() {
                        super(C3500zzb.zzhwh);
                    }

                    /* synthetic */ zza(byte b) {
                        this();
                    }
                }

                static {
                    C3500zzb zzbVar = new C3500zzb();
                    zzhwh = zzbVar;
                    zzdrt.m3364a(C3500zzb.class, zzbVar);
                }

                private C3500zzb() {
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.android.gms.internal.ads.zzdrt
                /* renamed from: a */
                public final Object mo3009a(int i, Object obj) {
                    switch (akw.f7553a[i - 1]) {
                        case 1:
                            return new C3500zzb();
                        case 2:
                            return new zza((byte) 0);
                        case 3:
                            return m3366a(zzhwh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\u0004��\u0002\n\u0001\u0003\n\u0002", new Object[]{"zzdl", "zzhwf", "zzhwg", "zzhwa"});
                        case 4:
                            return zzhwh;
                        case 5:
                            zzdtn<C3500zzb> zzdtnVar = zzdz;
                            zzdtn<C3500zzb> zzdtnVar2 = zzdtnVar;
                            if (zzdtnVar == null) {
                                synchronized (C3500zzb.class) {
                                    try {
                                        zzdtn<C3500zzb> zzdtnVar3 = zzdz;
                                        zzdtnVar2 = zzdtnVar3;
                                        if (zzdtnVar3 == null) {
                                            zzdtnVar2 = new zzdrt.zza<>(zzhwh);
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
                zze zzeVar = new zze();
                zzhwe = zzeVar;
                zzdrt.m3364a(zze.class, zzeVar);
            }

            private zze() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                int i2 = akw.f7553a[i - 1];
                int i3 = 0;
                switch (i2) {
                    case 1:
                        return new zze();
                    case 2:
                        return new zza((byte) 0);
                    case 3:
                        return m3366a(zzhwe, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001\u0001\u0001\t��\u0002Л\u0003\n\u0001\u0004\n\u0002\u0005\u0004\u0003\u0006\n\u0004", new Object[]{"zzdl", "zzhwc", "zzhvt", zzc.class, "zzhvu", "zzhvv", "zzhvw", "zzhwd"});
                    case 4:
                        return zzhwe;
                    case 5:
                        zzdtn<zze> zzdtnVar = zzdz;
                        zzdtn<zze> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zze.class) {
                                try {
                                    zzdtn<zze> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzhwe);
                                        zzdz = zzdtnVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzdtnVar2;
                    case 6:
                        return Byte.valueOf(this.zzhul);
                    case 7:
                        if (obj != null) {
                            i3 = 1;
                        }
                        this.zzhul = (byte) i3;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzf.class */
        public static final class zzf extends zzdrt<zzf, zza> implements zzdtg {
            private static volatile zzdtn<zzf> zzdz;
            private static final zzf zzhwk;
            private int zzbut;
            private int zzdl;
            private String zzhwi = "";
            private zzdqk zzhwj = zzdqk.zzhhx;

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzf$zza.class */
            public static final class zza extends zzdrt.zzb<zzf, zza> implements zzdtg {
                private zza() {
                    super(zzf.zzhwk);
                }

                /* synthetic */ zza(byte b) {
                    this();
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.zzdvx$zzb$zzf$zzb  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzf$zzb.class */
            public enum EnumC3501zzb implements zzdry {
                TYPE_UNKNOWN(0),
                TYPE_CREATIVE(1);
                

                /* renamed from: b */
                private static final zzdrx<EnumC3501zzb> f14619b = new ala();

                /* renamed from: c */
                private final int f14621c;

                EnumC3501zzb(int i) {
                    this.f14621c = i;
                }

                public static zzdsa zzaf() {
                    return alb.f7559a;
                }

                public static EnumC3501zzb zzhe(int i) {
                    if (i == 0) {
                        return TYPE_UNKNOWN;
                    }
                    if (i != 1) {
                        return null;
                    }
                    return TYPE_CREATIVE;
                }

                @Override // java.lang.Enum
                public final String toString() {
                    return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f14621c + " name=" + name() + '>';
                }

                @Override // com.google.android.gms.internal.ads.zzdry
                public final int zzae() {
                    return this.f14621c;
                }
            }

            static {
                zzf zzfVar = new zzf();
                zzhwk = zzfVar;
                zzdrt.m3364a(zzf.class, zzfVar);
            }

            private zzf() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                switch (akw.f7553a[i - 1]) {
                    case 1:
                        return new zzf();
                    case 2:
                        return new zza((byte) 0);
                    case 3:
                        return m3366a(zzhwk, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\f��\u0002\b\u0001\u0003\n\u0002", new Object[]{"zzdl", "zzbut", EnumC3501zzb.zzaf(), "zzhwi", "zzhwj"});
                    case 4:
                        return zzhwk;
                    case 5:
                        zzdtn<zzf> zzdtnVar = zzdz;
                        zzdtn<zzf> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zzf.class) {
                                try {
                                    zzdtn<zzf> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzhwk);
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

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzg.class */
        public enum zzg implements zzdry {
            UNKNOWN(0),
            URL_PHISHING(1),
            URL_MALWARE(2),
            URL_UNWANTED(3),
            CLIENT_SIDE_PHISHING_URL(4),
            CLIENT_SIDE_MALWARE_URL(5),
            DANGEROUS_DOWNLOAD_RECOVERY(6),
            DANGEROUS_DOWNLOAD_WARNING(7),
            OCTAGON_AD(8),
            OCTAGON_AD_SB_MATCH(9);
            

            /* renamed from: i */
            private static final zzdrx<zzg> f14630i = new ald();

            /* renamed from: j */
            private final int f14632j;

            zzg(int i) {
                this.f14632j = i;
            }

            public static zzdsa zzaf() {
                return alc.f7560a;
            }

            public static zzg zzhf(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN;
                    case 1:
                        return URL_PHISHING;
                    case 2:
                        return URL_MALWARE;
                    case 3:
                        return URL_UNWANTED;
                    case 4:
                        return CLIENT_SIDE_PHISHING_URL;
                    case 5:
                        return CLIENT_SIDE_MALWARE_URL;
                    case 6:
                        return DANGEROUS_DOWNLOAD_RECOVERY;
                    case 7:
                        return DANGEROUS_DOWNLOAD_WARNING;
                    case 8:
                        return OCTAGON_AD;
                    case 9:
                        return OCTAGON_AD_SB_MATCH;
                    default:
                        return null;
                }
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f14632j + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f14632j;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzh.class */
        public static final class zzh extends zzdrt<zzh, C3502zzb> implements zzdtg {
            private static volatile zzdtn<zzh> zzdz;
            private static final zzh zzhxm;
            private int zzdl;
            private int zzhxe;
            private zzd zzhxf;
            private zze zzhxg;
            private int zzhxh;
            private int zzhxk;
            private byte zzhul = (byte) 2;
            private String zzhuo = "";
            private zzdrz zzhxi = aig.m5327b();
            private String zzhxj = "";
            private zzdsb<String> zzhxl = ajg.m5241b();

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzh$zza.class */
            public enum zza implements zzdry {
                AD_RESOURCE_UNKNOWN(0),
                AD_RESOURCE_CREATIVE(1),
                AD_RESOURCE_POST_CLICK(2),
                AD_RESOURCE_AUTO_CLICK_DESTINATION(3);
                

                /* renamed from: e */
                private static final zzdrx<zza> f14637e = new alf();

                /* renamed from: f */
                private final int f14639f;

                zza(int i) {
                    this.f14639f = i;
                }

                public static zzdsa zzaf() {
                    return ale.f7561a;
                }

                public static zza zzhg(int i) {
                    if (i == 0) {
                        return AD_RESOURCE_UNKNOWN;
                    }
                    if (i == 1) {
                        return AD_RESOURCE_CREATIVE;
                    }
                    if (i == 2) {
                        return AD_RESOURCE_POST_CLICK;
                    }
                    if (i != 3) {
                        return null;
                    }
                    return AD_RESOURCE_AUTO_CLICK_DESTINATION;
                }

                @Override // java.lang.Enum
                public final String toString() {
                    return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f14639f + " name=" + name() + '>';
                }

                @Override // com.google.android.gms.internal.ads.zzdry
                public final int zzae() {
                    return this.f14639f;
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.zzdvx$zzb$zzh$zzb  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzh$zzb.class */
            public static final class C3502zzb extends zzdrt.zzb<zzh, C3502zzb> implements zzdtg {
                private C3502zzb() {
                    super(zzh.zzhxm);
                }

                /* synthetic */ C3502zzb(byte b) {
                    this();
                }
            }

            static {
                zzh zzhVar = new zzh();
                zzhxm = zzhVar;
                zzdrt.m3364a(zzh.class, zzhVar);
            }

            private zzh() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                int i2 = akw.f7553a[i - 1];
                int i3 = 0;
                switch (i2) {
                    case 1:
                        return new zzh();
                    case 2:
                        return new C3502zzb((byte) 0);
                    case 3:
                        return m3366a(zzhxm, "\u0001\t��\u0001\u0001\t\t��\u0002\u0003\u0001Ԅ��\u0002\b\u0001\u0003Љ\u0002\u0004Љ\u0003\u0005\u0004\u0004\u0006\u0016\u0007\b\u0005\b\f\u0006\t\u001a", new Object[]{"zzdl", "zzhxe", "zzhuo", "zzhxf", "zzhxg", "zzhxh", "zzhxi", "zzhxj", "zzhxk", zza.zzaf(), "zzhxl"});
                    case 4:
                        return zzhxm;
                    case 5:
                        zzdtn<zzh> zzdtnVar = zzdz;
                        zzdtn<zzh> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zzh.class) {
                                try {
                                    zzdtn<zzh> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzhxm);
                                        zzdz = zzdtnVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzdtnVar2;
                    case 6:
                        return Byte.valueOf(this.zzhul);
                    case 7:
                        if (obj != null) {
                            i3 = 1;
                        }
                        this.zzhul = (byte) i3;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzi.class */
        public static final class zzi extends zzdrt<zzi, zza> implements zzdtg {
            private static volatile zzdtn<zzi> zzdz;
            private static final zzi zzhxq;
            private int zzdl;
            private String zzhxn = "";
            private long zzhxo;
            private boolean zzhxp;

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvx$zzb$zzi$zza.class */
            public static final class zza extends zzdrt.zzb<zzi, zza> implements zzdtg {
                private zza() {
                    super(zzi.zzhxq);
                }

                /* synthetic */ zza(byte b) {
                    this();
                }

                public final zza zzbs(boolean z) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzi.m3300a((zzi) this.f14556a, z);
                    return this;
                }

                public final zza zzfu(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzi.m3302a((zzi) this.f14556a, j);
                    return this;
                }

                public final zza zzho(String str) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzi.m3301a((zzi) this.f14556a, str);
                    return this;
                }
            }

            static {
                zzi zziVar = new zzi();
                zzhxq = zziVar;
                zzdrt.m3364a(zzi.class, zziVar);
            }

            private zzi() {
            }

            /* renamed from: a */
            static /* synthetic */ void m3302a(zzi zziVar, long j) {
                zziVar.zzdl |= 2;
                zziVar.zzhxo = j;
            }

            /* renamed from: a */
            static /* synthetic */ void m3301a(zzi zziVar, String str) {
                str.getClass();
                zziVar.zzdl |= 1;
                zziVar.zzhxn = str;
            }

            /* renamed from: a */
            static /* synthetic */ void m3300a(zzi zziVar, boolean z) {
                zziVar.zzdl |= 4;
                zziVar.zzhxp = z;
            }

            public static zza zzbdg() {
                return zzhxq.m3360c();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                switch (akw.f7553a[i - 1]) {
                    case 1:
                        return new zzi();
                    case 2:
                        return new zza((byte) 0);
                    case 3:
                        return m3366a(zzhxq, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\b��\u0002\u0002\u0001\u0003\u0007\u0002", new Object[]{"zzdl", "zzhxn", "zzhxo", "zzhxp"});
                    case 4:
                        return zzhxq;
                    case 5:
                        zzdtn<zzi> zzdtnVar = zzdz;
                        zzdtn<zzi> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zzi.class) {
                                try {
                                    zzdtn<zzi> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzhxq);
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
            zzb zzbVar = new zzb();
            zzhvn = zzbVar;
            zzdrt.m3364a(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            int i2 = akw.f7553a[i - 1];
            int i3 = 0;
            switch (i2) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzhvn, "\u0001\u0012��\u0001\u0001\u0015\u0012��\u0004\u0001\u0001\b\u0002\u0002\b\u0003\u0003\b\u0004\u0004Л\u0005\u0007\b\u0006\u001a\u0007\b\t\b\u0007\n\t\u0007\u000b\n\f��\u000b\f\u0001\f\t\u0005\r\b\u0006\u000e\t\u0007\u000f\n\f\u0011\t\r\u0014\u001a\u0015\u001a", new Object[]{"zzdl", "zzhuo", "zzhuz", "zzhva", "zzhvc", zzh.class, "zzhvf", "zzhvg", "zzhvh", "zzhvi", "zzhvj", "zzbut", zzg.zzaf(), "zzhuy", zza.zzc.zzaf(), "zzhvb", "zzhvd", "zzhve", "zzhuh", "zzhvk", "zzhvl", "zzhvm"});
                case 4:
                    return zzhvn;
                case 5:
                    zzdtn<zzb> zzdtnVar = zzdz;
                    zzdtn<zzb> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzdtn<zzb> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzhvn);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return Byte.valueOf(this.zzhul);
                case 7:
                    if (obj != null) {
                        i3 = 1;
                    }
                    this.zzhul = (byte) i3;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
