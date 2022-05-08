package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq.class */
public final class zzfq {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq$zza.class */
    public static final class zza extends zzvm<zza, C2906zza> implements zzwv {
        private static final zza zzauq = new zza();
        private static volatile zzxd<zza> zznw;
        private String zzauo = "";
        private long zzaup;
        private int zznr;

        /* renamed from: com.google.android.gms.internal.measurement.zzfq$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq$zza$zza.class */
        public static final class C2906zza extends zzvm.zza<zza, C2906zza> implements zzwv {
            private C2906zza() {
                super(zza.zzauq);
            }

            /* synthetic */ C2906zza(zzfr zzfrVar) {
                this();
            }
        }

        static {
            zzvm.zza(zza.class, zzauq);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzvm
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzfr.zznq[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C2906zza(null);
                case 3:
                    return zza(zzauq, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\b��\u0002\u0002\u0001", new Object[]{"zznr", "zzauo", "zzaup"});
                case 4:
                    return zzauq;
                case 5:
                    zzxd<zza> zzxdVar = zznw;
                    zzxd<zza> zzxdVar2 = zzxdVar;
                    if (zzxdVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzxd<zza> zzxdVar3 = zznw;
                                zzxdVar2 = zzxdVar3;
                                if (zzxdVar3 == null) {
                                    zzxdVar2 = new zzvm.zzb<>(zzauq);
                                    zznw = zzxdVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzxdVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq$zzb.class */
    public static final class zzb extends zzvm<zzb, zza> implements zzwv {
        private static final zzb zzaut = new zzb();
        private static volatile zzxd<zzb> zznw;
        private int zzaur = 1;
        private zzvs<zza> zzaus = zzwc();
        private int zznr;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq$zzb$zza.class */
        public static final class zza extends zzvm.zza<zzb, zza> implements zzwv {
            private zza() {
                super(zzb.zzaut);
            }

            /* synthetic */ zza(zzfr zzfrVar) {
                this();
            }
        }

        /* renamed from: com.google.android.gms.internal.measurement.zzfq$zzb$zzb  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq$zzb$zzb.class */
        public enum EnumC2907zzb implements zzvp {
            RADS(1),
            PROVISIONING(2);
            
            private static final zzvq<EnumC2907zzb> zzoa = new zzfs();
            private final int value;

            EnumC2907zzb(int i) {
                this.value = i;
            }

            public static zzvr zzd() {
                return zzft.zzoc;
            }

            public static EnumC2907zzb zzs(int i) {
                switch (i) {
                    case 1:
                        return RADS;
                    case 2:
                        return PROVISIONING;
                    default:
                        return null;
                }
            }

            @Override // com.google.android.gms.internal.measurement.zzvp
            public final int zzc() {
                return this.value;
            }
        }

        static {
            zzvm.zza(zzb.class, zzaut);
        }

        private zzb() {
        }

        public static zzxd<zzb> zza() {
            return (zzxd) zzaut.zza(zzvm.zze.zzbyz, (Object) null, (Object) null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzvm
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzfr.zznq[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzaut, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\f��\u0002\u001b", new Object[]{"zznr", "zzaur", EnumC2907zzb.zzd(), "zzaus", zza.class});
                case 4:
                    return zzaut;
                case 5:
                    zzxd<zzb> zzxdVar = zznw;
                    zzxd<zzb> zzxdVar2 = zzxdVar;
                    if (zzxdVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzxd<zzb> zzxdVar3 = zznw;
                                zzxdVar2 = zzxdVar3;
                                if (zzxdVar3 == null) {
                                    zzxdVar2 = new zzvm.zzb<>(zzaut);
                                    zznw = zzxdVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzxdVar2;
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
