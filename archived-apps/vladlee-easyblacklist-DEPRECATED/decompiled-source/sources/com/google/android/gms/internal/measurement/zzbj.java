package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj.class */
public final class zzbj {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zza.class */
    public static final class zza extends zzfd<zza, C3510zza> implements zzgq {
        private static final zza zzi;
        private static volatile zzgx<zza> zzj;
        private int zzc;
        private int zzd;
        private zzfl<zze> zze = C2565dt.m2743b();
        private zzfl<zzb> zzf = C2565dt.m2743b();
        private boolean zzg;
        private boolean zzh;

        /* renamed from: com.google.android.gms.internal.measurement.zzbj$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zza$zza.class */
        public static final class C3510zza extends zzfd.zzb<zza, C3510zza> implements zzgq {
            private C3510zza() {
                super(zza.zzi);
            }

            /* synthetic */ C3510zza(byte b) {
                this();
            }

            public final int zza() {
                return ((zza) this.f16280a).zzd();
            }

            public final C3510zza zza(int i, zzb.zza zzaVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zza.m2468a((zza) this.f16280a, i, (zzb) ((zzfd) zzaVar.zzu()));
                return this;
            }

            public final C3510zza zza(int i, zze.zza zzaVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zza.m2467a((zza) this.f16280a, i, (zze) ((zzfd) zzaVar.zzu()));
                return this;
            }

            public final zze zza(int i) {
                return ((zza) this.f16280a).zza(i);
            }

            public final int zzb() {
                return ((zza) this.f16280a).zzf();
            }

            public final zzb zzb(int i) {
                return ((zza) this.f16280a).zzb(i);
            }
        }

        static {
            zza zzaVar = new zza();
            zzi = zzaVar;
            zzfd.m2284a(zza.class, zzaVar);
        }

        private zza() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2468a(zza zzaVar, int i, zzb zzbVar) {
            zzbVar.getClass();
            if (!zzaVar.zzf.zza()) {
                zzaVar.zzf = zzfd.m2288a(zzaVar.zzf);
            }
            zzaVar.zzf.set(i, zzbVar);
        }

        /* renamed from: a */
        static /* synthetic */ void m2467a(zza zzaVar, int i, zze zzeVar) {
            zzeVar.getClass();
            if (!zzaVar.zze.zza()) {
                zzaVar.zze = zzfd.m2288a(zzaVar.zze);
            }
            zzaVar.zze.set(i, zzeVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2474aj.f15860a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3510zza((byte) 0);
                case 3:
                    return m2286a(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001\u0004��\u0002\u001b\u0003\u001b\u0004\u0007\u0001\u0005\u0007\u0002", new Object[]{"zzc", "zzd", "zze", zze.class, "zzf", zzb.class, "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzgx<zza> zzgxVar = zzj;
                    zzgx<zza> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzgx<zza> zzgxVar3 = zzj;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzi);
                                    zzj = zzgxVar2;
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

        public final zze zza(int i) {
            return this.zze.get(i);
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final zzb zzb(int i) {
            return this.zzf.get(i);
        }

        public final List<zze> zzc() {
            return this.zze;
        }

        public final int zzd() {
            return this.zze.size();
        }

        public final List<zzb> zze() {
            return this.zzf;
        }

        public final int zzf() {
            return this.zzf.size();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zzb.class */
    public static final class zzb extends zzfd<zzb, zza> implements zzgq {
        private static final zzb zzl;
        private static volatile zzgx<zzb> zzm;
        private int zzc;
        private int zzd;
        private String zze = "";
        private zzfl<zzc> zzf = C2565dt.m2743b();
        private boolean zzg;
        private zzd zzh;
        private boolean zzi;
        private boolean zzj;
        private boolean zzk;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zzb$zza.class */
        public static final class zza extends zzfd.zzb<zzb, zza> implements zzgq {
            private zza() {
                super(zzb.zzl);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza(int i, zzc zzcVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzb.m2465a((zzb) this.f16280a, i, zzcVar);
                return this;
            }

            public final zza zza(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzb.m2464a((zzb) this.f16280a, str);
                return this;
            }

            public final zzc zza(int i) {
                return ((zzb) this.f16280a).zza(i);
            }

            public final String zza() {
                return ((zzb) this.f16280a).zzc();
            }

            public final int zzb() {
                return ((zzb) this.f16280a).zze();
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
        static /* synthetic */ void m2465a(zzb zzbVar, int i, zzc zzcVar) {
            zzcVar.getClass();
            if (!zzbVar.zzf.zza()) {
                zzbVar.zzf = zzfd.m2288a(zzbVar.zzf);
            }
            zzbVar.zzf.set(i, zzcVar);
        }

        /* renamed from: a */
        static /* synthetic */ void m2464a(zzb zzbVar, String str) {
            str.getClass();
            zzbVar.zzc |= 2;
            zzbVar.zze = str;
        }

        public static zza zzl() {
            return zzl.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2474aj.f15860a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzl, "\u0001\b��\u0001\u0001\b\b��\u0001��\u0001\u0004��\u0002\b\u0001\u0003\u001b\u0004\u0007\u0002\u0005\t\u0003\u0006\u0007\u0004\u0007\u0007\u0005\b\u0007\u0006", new Object[]{"zzc", "zzd", "zze", "zzf", zzc.class, "zzg", "zzh", "zzi", "zzj", "zzk"});
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

        public final zzc zza(int i) {
            return this.zzf.get(i);
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final String zzc() {
            return this.zze;
        }

        public final List<zzc> zzd() {
            return this.zzf;
        }

        public final int zze() {
            return this.zzf.size();
        }

        public final boolean zzf() {
            return (this.zzc & 8) != 0;
        }

        public final zzd zzg() {
            zzd zzdVar = this.zzh;
            zzd zzdVar2 = zzdVar;
            if (zzdVar == null) {
                zzdVar2 = zzd.zzk();
            }
            return zzdVar2;
        }

        public final boolean zzh() {
            return this.zzi;
        }

        public final boolean zzi() {
            return this.zzj;
        }

        public final boolean zzj() {
            return (this.zzc & 64) != 0;
        }

        public final boolean zzk() {
            return this.zzk;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zzc.class */
    public static final class zzc extends zzfd<zzc, zza> implements zzgq {
        private static final zzc zzh;
        private static volatile zzgx<zzc> zzi;
        private int zzc;
        private zzf zzd;
        private zzd zze;
        private boolean zzf;
        private String zzg = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zzc$zza.class */
        public static final class zza extends zzfd.zzb<zzc, zza> implements zzgq {
            private zza() {
                super(zzc.zzh);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzc.m2462a((zzc) this.f16280a, str);
                return this;
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzh = zzcVar;
            zzfd.m2284a(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2462a(zzc zzcVar, String str) {
            str.getClass();
            zzcVar.zzc |= 8;
            zzcVar.zzg = str;
        }

        public static zzc zzh() {
            return zzh;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2474aj.f15860a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001\t��\u0002\t\u0001\u0003\u0007\u0002\u0004\b\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzgx<zzc> zzgxVar = zzi;
                    zzgx<zzc> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzgx<zzc> zzgxVar3 = zzi;
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

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final zzf zzb() {
            zzf zzfVar = this.zzd;
            zzf zzfVar2 = zzfVar;
            if (zzfVar == null) {
                zzfVar2 = zzf.zzi();
            }
            return zzfVar2;
        }

        public final boolean zzc() {
            return (this.zzc & 2) != 0;
        }

        public final zzd zzd() {
            zzd zzdVar = this.zze;
            zzd zzdVar2 = zzdVar;
            if (zzdVar == null) {
                zzdVar2 = zzd.zzk();
            }
            return zzdVar2;
        }

        public final boolean zze() {
            return (this.zzc & 4) != 0;
        }

        public final boolean zzf() {
            return this.zzf;
        }

        public final String zzg() {
            return this.zzg;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zzd.class */
    public static final class zzd extends zzfd<zzd, zzb> implements zzgq {
        private static final zzd zzi;
        private static volatile zzgx<zzd> zzj;
        private int zzc;
        private int zzd;
        private boolean zze;
        private String zzf = "";
        private String zzg = "";
        private String zzh = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zzd$zza.class */
        public enum zza implements zzfi {
            UNKNOWN_COMPARISON_TYPE(0),
            LESS_THAN(1),
            GREATER_THAN(2),
            EQUAL(3),
            BETWEEN(4);
            

            /* renamed from: a */
            private static final zzfh<zza> f16132a = new C2476al();

            /* renamed from: b */
            private final int f16134b;

            zza(int i) {
                this.f16134b = i;
            }

            public static zza zza(int i) {
                if (i == 0) {
                    return UNKNOWN_COMPARISON_TYPE;
                }
                if (i == 1) {
                    return LESS_THAN;
                }
                if (i == 2) {
                    return GREATER_THAN;
                }
                if (i == 3) {
                    return EQUAL;
                }
                if (i != 4) {
                    return null;
                }
                return BETWEEN;
            }

            public static zzfk zzb() {
                return C2475ak.f15861a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f16134b + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzfi
            public final int zza() {
                return this.f16134b;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zzd$zzb.class */
        public static final class zzb extends zzfd.zzb<zzd, zzb> implements zzgq {
            private zzb() {
                super(zzd.zzi);
            }

            /* synthetic */ zzb(byte b) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzi = zzdVar;
            zzfd.m2284a(zzd.class, zzdVar);
        }

        private zzd() {
        }

        public static zzd zzk() {
            return zzi;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2474aj.f15860a[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zzb((byte) 0);
                case 3:
                    return m2286a(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001\f��\u0002\u0007\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004", new Object[]{"zzc", "zzd", zza.zzb(), "zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzgx<zzd> zzgxVar = zzj;
                    zzgx<zzd> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzgx<zzd> zzgxVar3 = zzj;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzi);
                                    zzj = zzgxVar2;
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

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final zza zzb() {
            zza zza2 = zza.zza(this.zzd);
            zza zzaVar = zza2;
            if (zza2 == null) {
                zzaVar = zza.UNKNOWN_COMPARISON_TYPE;
            }
            return zzaVar;
        }

        public final boolean zzc() {
            return (this.zzc & 2) != 0;
        }

        public final boolean zzd() {
            return this.zze;
        }

        public final boolean zze() {
            return (this.zzc & 4) != 0;
        }

        public final String zzf() {
            return this.zzf;
        }

        public final boolean zzg() {
            return (this.zzc & 8) != 0;
        }

        public final String zzh() {
            return this.zzg;
        }

        public final boolean zzi() {
            return (this.zzc & 16) != 0;
        }

        public final String zzj() {
            return this.zzh;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zze.class */
    public static final class zze extends zzfd<zze, zza> implements zzgq {
        private static final zze zzj;
        private static volatile zzgx<zze> zzk;
        private int zzc;
        private int zzd;
        private String zze = "";
        private zzc zzf;
        private boolean zzg;
        private boolean zzh;
        private boolean zzi;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zze$zza.class */
        public static final class zza extends zzfd.zzb<zze, zza> implements zzgq {
            private zza() {
                super(zze.zzj);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zze.m2459a((zze) this.f16280a, str);
                return this;
            }
        }

        static {
            zze zzeVar = new zze();
            zzj = zzeVar;
            zzfd.m2284a(zze.class, zzeVar);
        }

        private zze() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2459a(zze zzeVar, String str) {
            str.getClass();
            zzeVar.zzc |= 2;
            zzeVar.zze = str;
        }

        public static zza zzi() {
            return zzj.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2474aj.f15860a[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001\u0004��\u0002\b\u0001\u0003\t\u0002\u0004\u0007\u0003\u0005\u0007\u0004\u0006\u0007\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    zzgx<zze> zzgxVar = zzk;
                    zzgx<zze> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzgx<zze> zzgxVar3 = zzk;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzj);
                                    zzk = zzgxVar2;
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

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final String zzc() {
            return this.zze;
        }

        public final zzc zzd() {
            zzc zzcVar = this.zzf;
            zzc zzcVar2 = zzcVar;
            if (zzcVar == null) {
                zzcVar2 = zzc.zzh();
            }
            return zzcVar2;
        }

        public final boolean zze() {
            return this.zzg;
        }

        public final boolean zzf() {
            return this.zzh;
        }

        public final boolean zzg() {
            return (this.zzc & 32) != 0;
        }

        public final boolean zzh() {
            return this.zzi;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zzf.class */
    public static final class zzf extends zzfd<zzf, zza> implements zzgq {
        private static final zzf zzh;
        private static volatile zzgx<zzf> zzi;
        private int zzc;
        private int zzd;
        private boolean zzf;
        private String zze = "";
        private zzfl<String> zzg = C2565dt.m2743b();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zzf$zza.class */
        public static final class zza extends zzfd.zzb<zzf, zza> implements zzgq {
            private zza() {
                super(zzf.zzh);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj$zzf$zzb.class */
        public enum zzb implements zzfi {
            UNKNOWN_MATCH_TYPE(0),
            REGEXP(1),
            BEGINS_WITH(2),
            ENDS_WITH(3),
            PARTIAL(4),
            EXACT(5),
            IN_LIST(6);
            

            /* renamed from: a */
            private static final zzfh<zzb> f16135a = new C2477am();

            /* renamed from: b */
            private final int f16137b;

            zzb(int i) {
                this.f16137b = i;
            }

            public static zzb zza(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN_MATCH_TYPE;
                    case 1:
                        return REGEXP;
                    case 2:
                        return BEGINS_WITH;
                    case 3:
                        return ENDS_WITH;
                    case 4:
                        return PARTIAL;
                    case 5:
                        return EXACT;
                    case 6:
                        return IN_LIST;
                    default:
                        return null;
                }
            }

            public static zzfk zzb() {
                return C2478an.f15862a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f16137b + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzfi
            public final int zza() {
                return this.f16137b;
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzh = zzfVar;
            zzfd.m2284a(zzf.class, zzfVar);
        }

        private zzf() {
        }

        public static zzf zzi() {
            return zzh;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2474aj.f15860a[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\f��\u0002\b\u0001\u0003\u0007\u0002\u0004\u001a", new Object[]{"zzc", "zzd", zzb.zzb(), "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzgx<zzf> zzgxVar = zzi;
                    zzgx<zzf> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzgx<zzf> zzgxVar3 = zzi;
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

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final zzb zzb() {
            zzb zza2 = zzb.zza(this.zzd);
            zzb zzbVar = zza2;
            if (zza2 == null) {
                zzbVar = zzb.UNKNOWN_MATCH_TYPE;
            }
            return zzbVar;
        }

        public final boolean zzc() {
            return (this.zzc & 2) != 0;
        }

        public final String zzd() {
            return this.zze;
        }

        public final boolean zze() {
            return (this.zzc & 4) != 0;
        }

        public final boolean zzf() {
            return this.zzf;
        }

        public final List<String> zzg() {
            return this.zzg;
        }

        public final int zzh() {
            return this.zzg.size();
        }
    }
}
