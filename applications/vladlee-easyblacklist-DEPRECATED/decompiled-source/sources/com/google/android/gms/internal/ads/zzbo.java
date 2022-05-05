package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbo.class */
public final class zzbo {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbo$zza.class */
    public static final class zza extends zzdrt<zza, C3491zza> implements zzdtg {
        private static volatile zzdtn<zza> zzdz;
        private static final zza zzef;
        private int zzdl;
        private zzb zzed;
        private zzc zzee;

        /* renamed from: com.google.android.gms.internal.ads.zzbo$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbo$zza$zza.class */
        public static final class C3491zza extends zzdrt.zzb<zza, C3491zza> implements zzdtg {
            private C3491zza() {
                super(zza.zzef);
            }

            /* synthetic */ C3491zza(byte b) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzef = zzaVar;
            zzdrt.m3364a(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (C2039lo.f10186a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3491zza((byte) 0);
                case 3:
                    return m3366a(zzef, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\t��\u0002\t\u0001", new Object[]{"zzdl", "zzed", "zzee"});
                case 4:
                    return zzef;
                case 5:
                    zzdtn<zza> zzdtnVar = zzdz;
                    zzdtn<zza> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzdtn<zza> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzef);
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

        public final boolean zzw() {
            return (this.zzdl & 1) != 0;
        }

        public final zzb zzx() {
            zzb zzbVar = this.zzed;
            zzb zzbVar2 = zzbVar;
            if (zzbVar == null) {
                zzbVar2 = zzb.zzac();
            }
            return zzbVar2;
        }

        public final boolean zzy() {
            return (this.zzdl & 2) != 0;
        }

        public final zzc zzz() {
            zzc zzcVar = this.zzee;
            zzc zzcVar2 = zzcVar;
            if (zzcVar == null) {
                zzcVar2 = zzc.zzah();
            }
            return zzcVar2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbo$zzb.class */
    public static final class zzb extends zzdrt<zzb, zza> implements zzdtg {
        private static volatile zzdtn<zzb> zzdz;
        private static final zzb zzeh;
        private int zzdl;
        private int zzeg = 2;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbo$zzb$zza.class */
        public static final class zza extends zzdrt.zzb<zzb, zza> implements zzdtg {
            private zza() {
                super(zzb.zzeh);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzeh = zzbVar;
            zzdrt.m3364a(zzb.class, zzbVar);
        }

        private zzb() {
        }

        public static zzb zzac() {
            return zzeh;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (C2039lo.f10186a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzeh, "\u0001\u0001��\u0001\u001b\u001b\u0001������\u001b\f��", new Object[]{"zzdl", "zzeg", zzbq.zzaf()});
                case 4:
                    return zzeh;
                case 5:
                    zzdtn<zzb> zzdtnVar = zzdz;
                    zzdtn<zzb> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzdtn<zzb> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzeh);
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

        public final zzbq zzab() {
            zzbq zze = zzbq.zze(this.zzeg);
            zzbq zzbqVar = zze;
            if (zze == null) {
                zzbqVar = zzbq.ENUM_SIGNAL_SOURCE_ADSHIELD;
            }
            return zzbqVar;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbo$zzc.class */
    public static final class zzc extends zzdrt<zzc, zza> implements zzdtg {
        private static volatile zzdtn<zzc> zzdz;
        private static final zzc zzev;
        private int zzdl;
        private String zzep = "";
        private String zzeq = "";
        private String zzer = "";
        private String zzes = "";
        private String zzet = "";
        private String zzeu = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbo$zzc$zza.class */
        public static final class zza extends zzdrt.zzb<zzc, zza> implements zzdtg {
            private zza() {
                super(zzc.zzev);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzev = zzcVar;
            zzdrt.m3364a(zzc.class, zzcVar);
        }

        private zzc() {
        }

        public static zzc zzah() {
            return zzev;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (C2039lo.f10186a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzev, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001\b��\u0002\b\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004\u0006\b\u0005", new Object[]{"zzdl", "zzep", "zzeq", "zzer", "zzes", "zzet", "zzeu"});
                case 4:
                    return zzev;
                case 5:
                    zzdtn<zzc> zzdtnVar = zzdz;
                    zzdtn<zzc> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzdtn<zzc> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzev);
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

        public final String zzag() {
            return this.zzep;
        }
    }
}
