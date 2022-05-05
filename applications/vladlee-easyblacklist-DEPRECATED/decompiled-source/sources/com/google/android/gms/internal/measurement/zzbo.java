package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzbj;
import com.google.android.gms.internal.measurement.zzfd;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo.class */
public final class zzbo {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zza.class */
    public static final class zza extends zzfd<zza, C3511zza> implements zzgq {
        private static final zza zzh;
        private static volatile zzgx<zza> zzi;
        private int zzc;
        private String zzd = "";
        private boolean zze;
        private boolean zzf;
        private int zzg;

        /* renamed from: com.google.android.gms.internal.measurement.zzbo$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zza$zza.class */
        public static final class C3511zza extends zzfd.zzb<zza, C3511zza> implements zzgq {
            private C3511zza() {
                super(zza.zzh);
            }

            /* synthetic */ C3511zza(byte b) {
                this();
            }

            public final C3511zza zza(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zza.m2456a((zza) this.f16280a, str);
                return this;
            }

            public final String zza() {
                return ((zza) this.f16280a).zza();
            }

            public final boolean zzb() {
                return ((zza) this.f16280a).zzb();
            }

            public final boolean zzc() {
                return ((zza) this.f16280a).zzc();
            }

            public final boolean zzd() {
                return ((zza) this.f16280a).zzd();
            }

            public final int zze() {
                return ((zza) this.f16280a).zze();
            }
        }

        static {
            zza zzaVar = new zza();
            zzh = zzaVar;
            zzfd.m2284a(zza.class, zzaVar);
        }

        private zza() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2456a(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzc |= 1;
            zzaVar.zzd = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2479ao.f15863a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3511zza((byte) 0);
                case 3:
                    return m2286a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001\b��\u0002\u0007\u0001\u0003\u0007\u0002\u0004\u0004\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzgx<zza> zzgxVar = zzi;
                    zzgx<zza> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzgx<zza> zzgxVar3 = zzi;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzh);
                                    zzi = zzgxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzgxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final String zza() {
            return this.zzd;
        }

        public final boolean zzb() {
            return this.zze;
        }

        public final boolean zzc() {
            return this.zzf;
        }

        public final boolean zzd() {
            return (this.zzc & 8) != 0;
        }

        public final int zze() {
            return this.zzg;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zzb.class */
    public static final class zzb extends zzfd<zzb, zza> implements zzgq {
        private static final zzb zzl;
        private static volatile zzgx<zzb> zzm;
        private int zzc;
        private long zzd;
        private int zzf;
        private boolean zzk;
        private String zze = "";
        private zzfl<zzc> zzg = C2565dt.m2743b();
        private zzfl<zza> zzh = C2565dt.m2743b();
        private zzfl<zzbj.zza> zzi = C2565dt.m2743b();
        private String zzj = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zzb$zza.class */
        public static final class zza extends zzfd.zzb<zzb, zza> implements zzgq {
            private zza() {
                super(zzb.zzl);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final int zza() {
                return ((zzb) this.f16280a).zzf();
            }

            public final zza zza(int i) {
                return ((zzb) this.f16280a).zza(i);
            }

            public final zza zza(int i, zza.C3511zza zzaVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzb.m2453a((zzb) this.f16280a, i, (zza) ((zzfd) zzaVar.zzu()));
                return this;
            }

            public final List<zzbj.zza> zzb() {
                return Collections.unmodifiableList(((zzb) this.f16280a).zzg());
            }

            public final zza zzc() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzb.m2454a((zzb) this.f16280a);
                return this;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzl = zzbVar;
            zzfd.m2284a(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2454a(zzb zzbVar) {
            zzbVar.zzi = C2565dt.m2743b();
        }

        /* renamed from: a */
        static /* synthetic */ void m2453a(zzb zzbVar, int i, zza zzaVar) {
            zzaVar.getClass();
            if (!zzbVar.zzh.zza()) {
                zzbVar.zzh = zzfd.m2288a(zzbVar.zzh);
            }
            zzbVar.zzh.set(i, zzaVar);
        }

        public static zza zzi() {
            return zzl.m2280c();
        }

        public static zzb zzj() {
            return zzl;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2479ao.f15863a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzl, "\u0001\b��\u0001\u0001\b\b��\u0003��\u0001\u0002��\u0002\b\u0001\u0003\u0004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\b\u0003\b\u0007\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", zzc.class, "zzh", zza.class, "zzi", zzbj.zza.class, "zzj", "zzk"});
                case 4:
                    return zzl;
                case 5:
                    zzgx<zzb> zzgxVar = zzm;
                    zzgx<zzb> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzgx<zzb> zzgxVar3 = zzm;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzl);
                                    zzm = zzgxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzgxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final zza zza(int i) {
            return this.zzh.get(i);
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final long zzb() {
            return this.zzd;
        }

        public final boolean zzc() {
            return (this.zzc & 2) != 0;
        }

        public final String zzd() {
            return this.zze;
        }

        public final List<zzc> zze() {
            return this.zzg;
        }

        public final int zzf() {
            return this.zzh.size();
        }

        public final List<zzbj.zza> zzg() {
            return this.zzi;
        }

        public final boolean zzh() {
            return this.zzk;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zzc.class */
    public static final class zzc extends zzfd<zzc, zza> implements zzgq {
        private static final zzc zzf;
        private static volatile zzgx<zzc> zzg;
        private int zzc;
        private String zzd = "";
        private String zze = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zzc$zza.class */
        public static final class zza extends zzfd.zzb<zzc, zza> implements zzgq {
            private zza() {
                super(zzc.zzf);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzf = zzcVar;
            zzfd.m2284a(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2479ao.f15863a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\b��\u0002\b\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgx<zzc> zzgxVar = zzg;
                    zzgx<zzc> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzgx<zzc> zzgxVar3 = zzg;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzf);
                                    zzg = zzgxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzgxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final String zza() {
            return this.zzd;
        }

        public final String zzb() {
            return this.zze;
        }
    }
}
