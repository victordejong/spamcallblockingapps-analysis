package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.C3730kg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzby.class */
public final class zzby {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzby$zza.class */
    public static final class zza extends zzejz<zza, C10492zza> implements zzell {
        public static volatile zzelw<zza> zzel;
        public static final zza zzex;
        public int zzdw;
        public zzb zzev;
        public zzc zzew;

        /* renamed from: com.google.android.gms.internal.ads.zzby$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzby$zza$zza.class */
        public static final class C10492zza extends zzejz.zzb<zza, C10492zza> implements zzell {
            public C10492zza() {
                super(zza.zzex);
            }

            public /* synthetic */ C10492zza(C3730kg kgVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzex = zzaVar;
            zzejz.m12401a(zza.class, zzaVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (C3730kg.f13882a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C10492zza(null);
                case 3:
                    return zzejz.m12403a(zzex, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဉ��\u0002ဉ\u0001", new Object[]{"zzdw", "zzev", "zzew"});
                case 4:
                    return zzex;
                case 5:
                    zzelw<zza> zzelwVar = zzel;
                    zzelw<zza> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzelw<zza> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzex);
                                    zzel = zzelwVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzelwVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: m */
        public final zzc m14956m() {
            zzc zzcVar = this.zzew;
            zzc zzcVar2 = zzcVar;
            if (zzcVar == null) {
                zzcVar2 = zzc.m14947n();
            }
            return zzcVar2;
        }

        /* renamed from: n */
        public final boolean m14955n() {
            return (this.zzdw & 1) != 0;
        }

        /* renamed from: o */
        public final zzb m14954o() {
            zzb zzbVar = this.zzev;
            zzb zzbVar2 = zzbVar;
            if (zzbVar == null) {
                zzbVar2 = zzb.m14950n();
            }
            return zzbVar2;
        }

        /* renamed from: p */
        public final boolean m14953p() {
            return (this.zzdw & 2) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzby$zzb.class */
    public static final class zzb extends zzejz<zzb, zza> implements zzell {
        public static volatile zzelw<zzb> zzel;
        public static final zzb zzez;
        public int zzdw;
        public int zzey = 2;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzby$zzb$zza.class */
        public static final class zza extends zzejz.zzb<zzb, zza> implements zzell {
            public zza() {
                super(zzb.zzez);
            }

            public /* synthetic */ zza(C3730kg kgVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzez = zzbVar;
            zzejz.m12401a(zzb.class, zzbVar);
        }

        /* renamed from: n */
        public static zzb m14950n() {
            return zzez;
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (C3730kg.f13882a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzez, "\u0001\u0001��\u0001\u001b\u001b\u0001������\u001bဌ��", new Object[]{"zzdw", "zzey", zzcb.zzw()});
                case 4:
                    return zzez;
                case 5:
                    zzelw<zzb> zzelwVar = zzel;
                    zzelw<zzb> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzelw<zzb> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzez);
                                    zzel = zzelwVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzelwVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: m */
        public final zzcb m14951m() {
            zzcb zzj = zzcb.zzj(this.zzey);
            zzcb zzcbVar = zzj;
            if (zzj == null) {
                zzcbVar = zzcb.ENUM_SIGNAL_SOURCE_ADSHIELD;
            }
            return zzcbVar;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzby$zzc.class */
    public static final class zzc extends zzejz<zzc, zza> implements zzell {
        public static volatile zzelw<zzc> zzel;
        public static final zzc zzfm;
        public int zzdw;
        public String zzfg = "";
        public String zzfh = "";
        public String zzfi = "";
        public String zzfj = "";
        public String zzfk = "";
        public String zzfl = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzby$zzc$zza.class */
        public static final class zza extends zzejz.zzb<zzc, zza> implements zzell {
            public zza() {
                super(zzc.zzfm);
            }

            public /* synthetic */ zza(C3730kg kgVar) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzfm = zzcVar;
            zzejz.m12401a(zzc.class, zzcVar);
        }

        /* renamed from: n */
        public static zzc m14947n() {
            return zzfm;
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (C3730kg.f13882a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzfm, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zzdw", "zzfg", "zzfh", "zzfi", "zzfj", "zzfk", "zzfl"});
                case 4:
                    return zzfm;
                case 5:
                    zzelw<zzc> zzelwVar = zzel;
                    zzelw<zzc> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzelw<zzc> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzfm);
                                    zzel = zzelwVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzelwVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: m */
        public final String m14948m() {
            return this.zzfg;
        }
    }
}
