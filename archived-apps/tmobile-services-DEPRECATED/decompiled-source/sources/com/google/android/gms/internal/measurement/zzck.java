package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzck.class */
public final class zzck {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzck$zza.class */
    public static final class zza extends zzhz<zza, C2486zza> implements zzjj {
        private static final zza zzd;
        private static volatile zzju<zza> zze;
        private zzii<zzb> zzc = zzhz.m12420z();

        /* renamed from: com.google.android.gms.internal.measurement.zzck$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzck$zza$zza.class */
        public static final class C2486zza extends zzhz.zza<zza, C2486zza> implements zzjj {
            private C2486zza() {
                super(zza.zzd);
            }

            /* synthetic */ C2486zza(zzcl zzclVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzd = zzaVar;
            zzhz.m12426r(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcl.f8306a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C2486zza(null);
                case 3:
                    return zzhz.m12428p(zzd, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzc", zzb.class});
                case 4:
                    return zzd;
                case 5:
                    zzju<zza> zzjuVar = zze;
                    zzju<zza> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzju<zza> zzjuVar3 = zze;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzd);
                                    zze = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzck$zzb.class */
    public static final class zzb extends zzhz<zzb, C2487zzb> implements zzjj {
        private static final zzb zzk;
        private static volatile zzju<zzb> zzl;
        private int zzc;
        private int zzd;
        private boolean zzf;
        private long zzg;
        private double zzh;
        private String zze = "";
        private zzii<zzb> zzi = zzhz.m12420z();
        private String zzj = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzck$zzb$zza.class */
        public enum zza implements zzib {
            UNDEFINED(0),
            NULL(1),
            STRING(2),
            NUMBER(3),
            BOOLEAN(4),
            LIST(5),
            MAP(6),
            STATEMENT(7);
            
            private static final zzie<zza> zzi = new zzcn();
            private final int zzj;

            zza(int i) {
                this.zzj = i;
            }

            public static zza zza(int i) {
                switch (i) {
                    case 0:
                        return UNDEFINED;
                    case 1:
                        return NULL;
                    case 2:
                        return STRING;
                    case 3:
                        return NUMBER;
                    case 4:
                        return BOOLEAN;
                    case 5:
                        return LIST;
                    case 6:
                        return MAP;
                    case 7:
                        return STATEMENT;
                    default:
                        return null;
                }
            }

            public static zzid zzb() {
                return zzcm.f8307a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzj + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzib
            public final int zza() {
                return this.zzj;
            }
        }

        /* renamed from: com.google.android.gms.internal.measurement.zzck$zzb$zzb  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzck$zzb$zzb.class */
        public static final class C2487zzb extends zzhz.zza<zzb, C2487zzb> implements zzjj {
            private C2487zzb() {
                super(zzb.zzk);
            }

            /* synthetic */ C2487zzb(zzcl zzclVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzk = zzbVar;
            zzhz.m12426r(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Finally extract failed */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcl.f8306a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new C2487zzb(null);
                case 3:
                    return zzhz.m12428p(zzk, "\u0001\u0007��\u0001\u0001\u0007\u0007��\u0001��\u0001ဌ��\u0002ဈ\u0001\u0003ဇ\u0002\u0004ဂ\u0003\u0005က\u0004\u0006\u001b\u0007ဈ\u0005", new Object[]{"zzc", "zzd", zza.zzb(), "zze", "zzf", "zzg", "zzh", "zzi", zzb.class, "zzj"});
                case 4:
                    return zzk;
                case 5:
                    zzju<zzb> zzjuVar = zzl;
                    zzju<zzb> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzju<zzb> zzjuVar3 = zzl;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzk);
                                    zzl = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
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
