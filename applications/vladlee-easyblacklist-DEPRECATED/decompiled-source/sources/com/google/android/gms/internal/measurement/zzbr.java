package com.google.android.gms.internal.measurement;

import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.measurement.zzfd;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr.class */
public final class zzbr {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zza.class */
    public static final class zza extends zzfd<zza, C3512zza> implements zzgq {
        private static final zza zzh;
        private static volatile zzgx<zza> zzi;
        private int zzc;
        private int zzd;
        private zzi zze;
        private zzi zzf;
        private boolean zzg;

        /* renamed from: com.google.android.gms.internal.measurement.zzbr$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zza$zza.class */
        public static final class C3512zza extends zzfd.zzb<zza, C3512zza> implements zzgq {
            private C3512zza() {
                super(zza.zzh);
            }

            /* synthetic */ C3512zza(byte b) {
                this();
            }

            public final C3512zza zza(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zza.m2450a((zza) this.f16280a, i);
                return this;
            }

            public final C3512zza zza(zzi.zza zzaVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zza.m2449a((zza) this.f16280a, (zzi) ((zzfd) zzaVar.zzu()));
                return this;
            }

            public final C3512zza zza(zzi zziVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zza.m2447b((zza) this.f16280a, zziVar);
                return this;
            }

            public final C3512zza zza(boolean z) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zza.m2448a((zza) this.f16280a, z);
                return this;
            }

            public final boolean zza() {
                return ((zza) this.f16280a).zzd();
            }

            public final zzi zzb() {
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
        static /* synthetic */ void m2450a(zza zzaVar, int i) {
            zzaVar.zzc |= 1;
            zzaVar.zzd = i;
        }

        /* renamed from: a */
        static /* synthetic */ void m2449a(zza zzaVar, zzi zziVar) {
            zziVar.getClass();
            zzaVar.zze = zziVar;
            zzaVar.zzc |= 2;
        }

        /* renamed from: a */
        static /* synthetic */ void m2448a(zza zzaVar, boolean z) {
            zzaVar.zzc |= 8;
            zzaVar.zzg = z;
        }

        /* renamed from: b */
        static /* synthetic */ void m2447b(zza zzaVar, zzi zziVar) {
            zziVar.getClass();
            zzaVar.zzf = zziVar;
            zzaVar.zzc |= 4;
        }

        public static C3512zza zzh() {
            return zzh.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2480ap.f15864a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3512zza((byte) 0);
                case 3:
                    return m2286a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001\u0004��\u0002\t\u0001\u0003\t\u0002\u0004\u0007\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
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

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final zzi zzc() {
            zzi zziVar = this.zze;
            zzi zziVar2 = zziVar;
            if (zziVar == null) {
                zziVar2 = zzi.zzj();
            }
            return zziVar2;
        }

        public final boolean zzd() {
            return (this.zzc & 4) != 0;
        }

        public final zzi zze() {
            zzi zziVar = this.zzf;
            zzi zziVar2 = zziVar;
            if (zziVar == null) {
                zziVar2 = zzi.zzj();
            }
            return zziVar2;
        }

        public final boolean zzf() {
            return (this.zzc & 8) != 0;
        }

        public final boolean zzg() {
            return this.zzg;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzb.class */
    public static final class zzb extends zzfd<zzb, zza> implements zzgq {
        private static final zzb zzf;
        private static volatile zzgx<zzb> zzg;
        private int zzc;
        private int zzd;
        private long zze;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzb$zza.class */
        public static final class zza extends zzfd.zzb<zzb, zza> implements zzgq {
            private zza() {
                super(zzb.zzf);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzb.m2445a((zzb) this.f16280a, i);
                return this;
            }

            public final zza zza(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzb.m2444a((zzb) this.f16280a, j);
                return this;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzf = zzbVar;
            zzfd.m2284a(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2445a(zzb zzbVar, int i) {
            zzbVar.zzc |= 1;
            zzbVar.zzd = i;
        }

        /* renamed from: a */
        static /* synthetic */ void m2444a(zzb zzbVar, long j) {
            zzbVar.zzc |= 2;
            zzbVar.zze = j;
        }

        public static zza zze() {
            return zzf.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2480ap.f15864a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\u0004��\u0002\u0002\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgx<zzb> zzgxVar = zzg;
                    zzgx<zzb> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzgx<zzb> zzgxVar3 = zzg;
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

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final boolean zzc() {
            return (this.zzc & 2) != 0;
        }

        public final long zzd() {
            return this.zze;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzc.class */
    public static final class zzc extends zzfd<zzc, zza> implements zzgq {
        private static final zzc zzi;
        private static volatile zzgx<zzc> zzj;
        private int zzc;
        private zzfl<zze> zzd = C2565dt.m2743b();
        private String zze = "";
        private long zzf;
        private long zzg;
        private int zzh;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzc$zza.class */
        public static final class zza extends zzfd.zzb<zzc, zza> implements zzgq {
            private zza() {
                super(zzc.zzi);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza(int i, zze.zza zzaVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzc.m2440a((zzc) this.f16280a, i, (zze) ((zzfd) zzaVar.zzu()));
                return this;
            }

            public final zza zza(int i, zze zzeVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzc.m2440a((zzc) this.f16280a, i, zzeVar);
                return this;
            }

            public final zza zza(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzc.m2439a((zzc) this.f16280a, j);
                return this;
            }

            public final zza zza(zze.zza zzaVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzc.m2438a((zzc) this.f16280a, (zze) ((zzfd) zzaVar.zzu()));
                return this;
            }

            public final zza zza(zze zzeVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzc.m2438a((zzc) this.f16280a, zzeVar);
                return this;
            }

            public final zza zza(Iterable<? extends zze> iterable) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzc.m2437a((zzc) this.f16280a, iterable);
                return this;
            }

            public final zza zza(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzc.m2436a((zzc) this.f16280a, str);
                return this;
            }

            public final zze zza(int i) {
                return ((zzc) this.f16280a).zza(i);
            }

            public final List<zze> zza() {
                return Collections.unmodifiableList(((zzc) this.f16280a).zza());
            }

            public final int zzb() {
                return ((zzc) this.f16280a).zzb();
            }

            public final zza zzb(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzc.m2441a((zzc) this.f16280a, i);
                return this;
            }

            public final zza zzb(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzc.m2435b((zzc) this.f16280a, j);
                return this;
            }

            public final zza zzc() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzc.m2442a((zzc) this.f16280a);
                return this;
            }

            public final String zzd() {
                return ((zzc) this.f16280a).zzc();
            }

            public final boolean zze() {
                return ((zzc) this.f16280a).zzd();
            }

            public final long zzf() {
                return ((zzc) this.f16280a).zze();
            }

            public final long zzg() {
                return ((zzc) this.f16280a).zzg();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzi = zzcVar;
            zzfd.m2284a(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2442a(zzc zzcVar) {
            zzcVar.zzd = C2565dt.m2743b();
        }

        /* renamed from: a */
        static /* synthetic */ void m2441a(zzc zzcVar, int i) {
            zzcVar.m2434d();
            zzcVar.zzd.remove(i);
        }

        /* renamed from: a */
        static /* synthetic */ void m2440a(zzc zzcVar, int i, zze zzeVar) {
            zzeVar.getClass();
            zzcVar.m2434d();
            zzcVar.zzd.set(i, zzeVar);
        }

        /* renamed from: a */
        static /* synthetic */ void m2439a(zzc zzcVar, long j) {
            zzcVar.zzc |= 2;
            zzcVar.zzf = j;
        }

        /* renamed from: a */
        static /* synthetic */ void m2438a(zzc zzcVar, zze zzeVar) {
            zzeVar.getClass();
            zzcVar.m2434d();
            zzcVar.zzd.add(zzeVar);
        }

        /* renamed from: a */
        static /* synthetic */ void m2437a(zzc zzcVar, Iterable iterable) {
            zzcVar.m2434d();
            zzdl.m2313a(iterable, zzcVar.zzd);
        }

        /* renamed from: a */
        static /* synthetic */ void m2436a(zzc zzcVar, String str) {
            str.getClass();
            zzcVar.zzc |= 1;
            zzcVar.zze = str;
        }

        /* renamed from: b */
        static /* synthetic */ void m2435b(zzc zzcVar, long j) {
            zzcVar.zzc |= 4;
            zzcVar.zzg = j;
        }

        /* renamed from: d */
        private final void m2434d() {
            if (!this.zzd.zza()) {
                this.zzd = zzfd.m2288a(this.zzd);
            }
        }

        public static zza zzj() {
            return zzi.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2480ap.f15864a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001\u001b\u0002\b��\u0003\u0002\u0001\u0004\u0002\u0002\u0005\u0004\u0003", new Object[]{"zzc", "zzd", zze.class, "zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzgx<zzc> zzgxVar = zzj;
                    zzgx<zzc> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzgx<zzc> zzgxVar3 = zzj;
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
            return this.zzd.get(i);
        }

        public final List<zze> zza() {
            return this.zzd;
        }

        public final int zzb() {
            return this.zzd.size();
        }

        public final String zzc() {
            return this.zze;
        }

        public final boolean zzd() {
            return (this.zzc & 2) != 0;
        }

        public final long zze() {
            return this.zzf;
        }

        public final boolean zzf() {
            return (this.zzc & 4) != 0;
        }

        public final long zzg() {
            return this.zzg;
        }

        public final boolean zzh() {
            return (this.zzc & 8) != 0;
        }

        public final int zzi() {
            return this.zzh;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzd.class */
    public static final class zzd extends zzfd<zzd, zza> implements zzgq {
        private static final zzd zzf;
        private static volatile zzgx<zzd> zzg;
        private int zzc;
        private String zzd = "";
        private long zze;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzd$zza.class */
        public static final class zza extends zzfd.zzb<zzd, zza> implements zzgq {
            private zza() {
                super(zzd.zzf);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzd.m2432a((zzd) this.f16280a, j);
                return this;
            }

            public final zza zza(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzd.m2431a((zzd) this.f16280a, str);
                return this;
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzf = zzdVar;
            zzfd.m2284a(zzd.class, zzdVar);
        }

        private zzd() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2432a(zzd zzdVar, long j) {
            zzdVar.zzc |= 2;
            zzdVar.zze = j;
        }

        /* renamed from: a */
        static /* synthetic */ void m2431a(zzd zzdVar, String str) {
            str.getClass();
            zzdVar.zzc |= 1;
            zzdVar.zzd = str;
        }

        public static zza zza() {
            return zzf.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2480ap.f15864a[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\b��\u0002\u0002\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgx<zzd> zzgxVar = zzg;
                    zzgx<zzd> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzgx<zzd> zzgxVar3 = zzg;
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
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zze.class */
    public static final class zze extends zzfd<zze, zza> implements zzgq {
        private static final zze zzj;
        private static volatile zzgx<zze> zzk;
        private int zzc;
        private long zzf;
        private float zzg;
        private double zzh;
        private String zzd = "";
        private String zze = "";
        private zzfl<zze> zzi = C2565dt.m2743b();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zze$zza.class */
        public static final class zza extends zzfd.zzb<zze, zza> implements zzgq {
            private zza() {
                super(zze.zzj);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zze.m2429a((zze) this.f16280a);
                return this;
            }

            public final zza zza(double d) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zze.m2428a((zze) this.f16280a, d);
                return this;
            }

            public final zza zza(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zze.m2427a((zze) this.f16280a, j);
                return this;
            }

            public final zza zza(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zze.m2426a((zze) this.f16280a, str);
                return this;
            }

            public final zza zzb() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zze.m2425b((zze) this.f16280a);
                return this;
            }

            public final zza zzb(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zze.m2424b((zze) this.f16280a, str);
                return this;
            }

            public final zza zzc() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zze.m2423c((zze) this.f16280a);
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
        static /* synthetic */ void m2429a(zze zzeVar) {
            zzeVar.zzc &= -3;
            zzeVar.zze = zzj.zze;
        }

        /* renamed from: a */
        static /* synthetic */ void m2428a(zze zzeVar, double d) {
            zzeVar.zzc |= 16;
            zzeVar.zzh = d;
        }

        /* renamed from: a */
        static /* synthetic */ void m2427a(zze zzeVar, long j) {
            zzeVar.zzc |= 4;
            zzeVar.zzf = j;
        }

        /* renamed from: a */
        static /* synthetic */ void m2426a(zze zzeVar, String str) {
            str.getClass();
            zzeVar.zzc |= 1;
            zzeVar.zzd = str;
        }

        /* renamed from: b */
        static /* synthetic */ void m2425b(zze zzeVar) {
            zzeVar.zzc &= -5;
            zzeVar.zzf = 0L;
        }

        /* renamed from: b */
        static /* synthetic */ void m2424b(zze zzeVar, String str) {
            str.getClass();
            zzeVar.zzc |= 2;
            zzeVar.zze = str;
        }

        /* renamed from: c */
        static /* synthetic */ void m2423c(zze zzeVar) {
            zzeVar.zzc &= -17;
            zzeVar.zzh = 0.0d;
        }

        public static zza zzh() {
            return zzj.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Finally extract failed */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2480ap.f15864a[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001\b��\u0002\b\u0001\u0003\u0002\u0002\u0004\u0001\u0003\u0005��\u0004\u0006\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", zze.class});
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

        public final String zza() {
            return this.zzd;
        }

        public final boolean zzb() {
            return (this.zzc & 2) != 0;
        }

        public final String zzc() {
            return this.zze;
        }

        public final boolean zzd() {
            return (this.zzc & 4) != 0;
        }

        public final long zze() {
            return this.zzf;
        }

        public final boolean zzf() {
            return (this.zzc & 16) != 0;
        }

        public final double zzg() {
            return this.zzh;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzf.class */
    public static final class zzf extends zzfd<zzf, zza> implements zzgq {
        private static final zzf zzd;
        private static volatile zzgx<zzf> zze;
        private zzfl<zzg> zzc = C2565dt.m2743b();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzf$zza.class */
        public static final class zza extends zzfd.zzb<zzf, zza> implements zzgq {
            private zza() {
                super(zzf.zzd);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza(zzg.zza zzaVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzf.m2421a((zzf) this.f16280a, (zzg) ((zzfd) zzaVar.zzu()));
                return this;
            }

            public final zzg zza(int i) {
                return ((zzf) this.f16280a).zza(0);
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzd = zzfVar;
            zzfd.m2284a(zzf.class, zzfVar);
        }

        private zzf() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2421a(zzf zzfVar, zzg zzgVar) {
            zzgVar.getClass();
            if (!zzfVar.zzc.zza()) {
                zzfVar.zzc = zzfd.m2288a(zzfVar.zzc);
            }
            zzfVar.zzc.add(zzgVar);
        }

        public static zza zzb() {
            return zzd.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2480ap.f15864a[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzd, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzc", zzg.class});
                case 4:
                    return zzd;
                case 5:
                    zzgx<zzf> zzgxVar = zze;
                    zzgx<zzf> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzgx<zzf> zzgxVar3 = zze;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzd);
                                    zze = zzgxVar2;
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

        public final zzg zza(int i) {
            return this.zzc.get(0);
        }

        public final List<zzg> zza() {
            return this.zzc;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzg.class */
    public static final class zzg extends zzfd<zzg, zza> implements zzgq {
        private static final zzg zzav;
        private static volatile zzgx<zzg> zzaw;
        private int zzaa;
        private boolean zzad;
        private int zzag;
        private int zzah;
        private int zzai;
        private long zzak;
        private long zzal;
        private int zzao;
        private zzh zzaq;
        private long zzas;
        private long zzat;
        private int zzc;
        private int zzd;
        private int zze;
        private long zzh;
        private long zzi;
        private long zzj;
        private long zzk;
        private long zzl;
        private int zzq;
        private long zzu;
        private long zzv;
        private boolean zzx;
        private long zzz;
        private zzfl<zzc> zzf = C2565dt.m2743b();
        private zzfl<zzk> zzg = C2565dt.m2743b();
        private String zzm = "";
        private String zzn = "";
        private String zzo = "";
        private String zzp = "";
        private String zzr = "";
        private String zzs = "";
        private String zzt = "";
        private String zzw = "";
        private String zzy = "";
        private String zzab = "";
        private String zzac = "";
        private zzfl<zza> zzae = C2565dt.m2743b();
        private String zzaf = "";
        private String zzaj = "";
        private String zzam = "";
        private String zzan = "";
        private String zzap = "";
        private zzfj zzar = C2538ct.m2828b();
        private String zzau = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzg$zza.class */
        public static final class zza extends zzfd.zzb<zzg, zza> implements zzgq {
            private zza() {
                super(zzg.zzav);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2419a((zzg) this.f16280a);
                return this;
            }

            public final zza zza(int i, zzc.zza zzaVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2417a((zzg) this.f16280a, i, (zzc) ((zzfd) zzaVar.zzu()));
                return this;
            }

            public final zza zza(int i, zzk zzkVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2416a((zzg) this.f16280a, i, zzkVar);
                return this;
            }

            public final zza zza(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2415a((zzg) this.f16280a, j);
                return this;
            }

            public final zza zza(zzc.zza zzaVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2414a((zzg) this.f16280a, (zzc) ((zzfd) zzaVar.zzu()));
                return this;
            }

            public final zza zza(zzh.zzb zzbVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2413a((zzg) this.f16280a, (zzh) ((zzfd) zzbVar.zzu()));
                return this;
            }

            public final zza zza(zzk.zza zzaVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2412a((zzg) this.f16280a, (zzk) ((zzfd) zzaVar.zzu()));
                return this;
            }

            public final zza zza(zzk zzkVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2412a((zzg) this.f16280a, zzkVar);
                return this;
            }

            public final zza zza(Iterable<? extends zzc> iterable) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2411a((zzg) this.f16280a, iterable);
                return this;
            }

            public final zza zza(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2410a((zzg) this.f16280a, str);
                return this;
            }

            public final zza zza(boolean z) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2409a((zzg) this.f16280a, z);
                return this;
            }

            public final List<zzc> zza() {
                return Collections.unmodifiableList(((zzg) this.f16280a).zzc());
            }

            public final int zzb() {
                return ((zzg) this.f16280a).zzd();
            }

            public final zzc zzb(int i) {
                return ((zzg) this.f16280a).zza(i);
            }

            public final zza zzb(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2406b((zzg) this.f16280a, j);
                return this;
            }

            public final zza zzb(Iterable<? extends zzk> iterable) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2405b((zzg) this.f16280a, iterable);
                return this;
            }

            public final zza zzb(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2404b((zzg) this.f16280a, str);
                return this;
            }

            public final zza zzb(boolean z) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2403b((zzg) this.f16280a, z);
                return this;
            }

            public final zza zzc() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2408b((zzg) this.f16280a);
                return this;
            }

            public final zza zzc(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2418a((zzg) this.f16280a, i);
                return this;
            }

            public final zza zzc(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2400c((zzg) this.f16280a, j);
                return this;
            }

            public final zza zzc(Iterable<? extends zza> iterable) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2399c((zzg) this.f16280a, iterable);
                return this;
            }

            public final zza zzc(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2398c((zzg) this.f16280a, str);
                return this;
            }

            public final zza zzd(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2394d((zzg) this.f16280a, j);
                return this;
            }

            public final zza zzd(Iterable<? extends Integer> iterable) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2393d((zzg) this.f16280a, iterable);
                return this;
            }

            public final zza zzd(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2392d((zzg) this.f16280a, str);
                return this;
            }

            public final zzk zzd(int i) {
                return ((zzg) this.f16280a).zzb(i);
            }

            public final List<zzk> zzd() {
                return Collections.unmodifiableList(((zzg) this.f16280a).zze());
            }

            public final int zze() {
                return ((zzg) this.f16280a).zzf();
            }

            public final zza zze(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2407b((zzg) this.f16280a, i);
                return this;
            }

            public final zza zze(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2388e((zzg) this.f16280a, j);
                return this;
            }

            public final zza zze(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2387e((zzg) this.f16280a, str);
                return this;
            }

            public final long zzf() {
                return ((zzg) this.f16280a).zzj();
            }

            public final zza zzf(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2401c((zzg) this.f16280a, i);
                return this;
            }

            public final zza zzf(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2384f((zzg) this.f16280a, j);
                return this;
            }

            public final zza zzf(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2383f((zzg) this.f16280a, str);
                return this;
            }

            public final long zzg() {
                return ((zzg) this.f16280a).zzl();
            }

            public final zza zzg(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2395d((zzg) this.f16280a, i);
                return this;
            }

            public final zza zzg(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2381g((zzg) this.f16280a, j);
                return this;
            }

            public final zza zzg(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2380g((zzg) this.f16280a, str);
                return this;
            }

            public final zza zzh() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2402c((zzg) this.f16280a);
                return this;
            }

            public final zza zzh(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2389e((zzg) this.f16280a, i);
                return this;
            }

            public final zza zzh(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2378h((zzg) this.f16280a, j);
                return this;
            }

            public final zza zzh(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2377h((zzg) this.f16280a, str);
                return this;
            }

            public final zza zzi() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2396d((zzg) this.f16280a);
                return this;
            }

            public final zza zzi(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2385f((zzg) this.f16280a, i);
                return this;
            }

            public final zza zzi(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2376i((zzg) this.f16280a, j);
                return this;
            }

            public final zza zzi(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2375i((zzg) this.f16280a, str);
                return this;
            }

            public final zza zzj(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2374j((zzg) this.f16280a, j);
                return this;
            }

            public final zza zzj(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2373j((zzg) this.f16280a, str);
                return this;
            }

            public final String zzj() {
                return ((zzg) this.f16280a).zzx();
            }

            public final zza zzk() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2390e((zzg) this.f16280a);
                return this;
            }

            public final zza zzk(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2372k((zzg) this.f16280a, j);
                return this;
            }

            public final zza zzk(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2371k((zzg) this.f16280a, str);
                return this;
            }

            public final zza zzl(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2370l((zzg) this.f16280a, j);
                return this;
            }

            public final zza zzl(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2369l((zzg) this.f16280a, str);
                return this;
            }

            public final String zzl() {
                return ((zzg) this.f16280a).zzam();
            }

            public final zza zzm() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2386f((zzg) this.f16280a);
                return this;
            }

            public final zza zzm(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2368m((zzg) this.f16280a, str);
                return this;
            }

            public final zza zzn() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2379h((zzg) this.f16280a);
                return this;
            }

            public final zza zzn(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2382g((zzg) this.f16280a);
                return this;
            }

            public final zza zzo(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2367n((zzg) this.f16280a, str);
                return this;
            }

            public final String zzo() {
                return ((zzg) this.f16280a).zzbe();
            }

            public final zza zzp(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzg.m2366o((zzg) this.f16280a, str);
                return this;
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzav = zzgVar;
            zzfd.m2284a(zzg.class, zzgVar);
        }

        private zzg() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2419a(zzg zzgVar) {
            zzgVar.zzc |= 1;
            zzgVar.zze = 1;
        }

        /* renamed from: a */
        static /* synthetic */ void m2418a(zzg zzgVar, int i) {
            zzgVar.m2397d();
            zzgVar.zzf.remove(i);
        }

        /* renamed from: a */
        static /* synthetic */ void m2417a(zzg zzgVar, int i, zzc zzcVar) {
            zzcVar.getClass();
            zzgVar.m2397d();
            zzgVar.zzf.set(i, zzcVar);
        }

        /* renamed from: a */
        static /* synthetic */ void m2416a(zzg zzgVar, int i, zzk zzkVar) {
            zzkVar.getClass();
            zzgVar.m2391e();
            zzgVar.zzg.set(i, zzkVar);
        }

        /* renamed from: a */
        static /* synthetic */ void m2415a(zzg zzgVar, long j) {
            zzgVar.zzc |= 2;
            zzgVar.zzh = j;
        }

        /* renamed from: a */
        static /* synthetic */ void m2414a(zzg zzgVar, zzc zzcVar) {
            zzcVar.getClass();
            zzgVar.m2397d();
            zzgVar.zzf.add(zzcVar);
        }

        /* renamed from: a */
        static /* synthetic */ void m2413a(zzg zzgVar, zzh zzhVar) {
            zzhVar.getClass();
            zzgVar.zzaq = zzhVar;
            zzgVar.zzd |= 8;
        }

        /* renamed from: a */
        static /* synthetic */ void m2412a(zzg zzgVar, zzk zzkVar) {
            zzkVar.getClass();
            zzgVar.m2391e();
            zzgVar.zzg.add(zzkVar);
        }

        /* renamed from: a */
        static /* synthetic */ void m2411a(zzg zzgVar, Iterable iterable) {
            zzgVar.m2397d();
            zzdl.m2313a(iterable, zzgVar.zzf);
        }

        /* renamed from: a */
        static /* synthetic */ void m2410a(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= 64;
            zzgVar.zzm = str;
        }

        /* renamed from: a */
        static /* synthetic */ void m2409a(zzg zzgVar, boolean z) {
            zzgVar.zzc |= 131072;
            zzgVar.zzx = z;
        }

        /* renamed from: b */
        static /* synthetic */ void m2408b(zzg zzgVar) {
            zzgVar.zzf = C2565dt.m2743b();
        }

        /* renamed from: b */
        static /* synthetic */ void m2407b(zzg zzgVar, int i) {
            zzgVar.m2391e();
            zzgVar.zzg.remove(i);
        }

        /* renamed from: b */
        static /* synthetic */ void m2406b(zzg zzgVar, long j) {
            zzgVar.zzc |= 4;
            zzgVar.zzi = j;
        }

        /* renamed from: b */
        static /* synthetic */ void m2405b(zzg zzgVar, Iterable iterable) {
            zzgVar.m2391e();
            zzdl.m2313a(iterable, zzgVar.zzg);
        }

        /* renamed from: b */
        static /* synthetic */ void m2404b(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= 128;
            zzgVar.zzn = str;
        }

        /* renamed from: b */
        static /* synthetic */ void m2403b(zzg zzgVar, boolean z) {
            zzgVar.zzc |= 8388608;
            zzgVar.zzad = z;
        }

        /* renamed from: c */
        static /* synthetic */ void m2402c(zzg zzgVar) {
            zzgVar.zzc &= -17;
            zzgVar.zzk = 0L;
        }

        /* renamed from: c */
        static /* synthetic */ void m2401c(zzg zzgVar, int i) {
            zzgVar.zzc |= 1024;
            zzgVar.zzq = i;
        }

        /* renamed from: c */
        static /* synthetic */ void m2400c(zzg zzgVar, long j) {
            zzgVar.zzc |= 8;
            zzgVar.zzj = j;
        }

        /* renamed from: c */
        static /* synthetic */ void m2399c(zzg zzgVar, Iterable iterable) {
            if (!zzgVar.zzae.zza()) {
                zzgVar.zzae = zzfd.m2288a(zzgVar.zzae);
            }
            zzdl.m2313a(iterable, zzgVar.zzae);
        }

        /* renamed from: c */
        static /* synthetic */ void m2398c(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= 256;
            zzgVar.zzo = str;
        }

        /* renamed from: d */
        private final void m2397d() {
            if (!this.zzf.zza()) {
                this.zzf = zzfd.m2288a(this.zzf);
            }
        }

        /* renamed from: d */
        static /* synthetic */ void m2396d(zzg zzgVar) {
            zzgVar.zzc &= -33;
            zzgVar.zzl = 0L;
        }

        /* renamed from: d */
        static /* synthetic */ void m2395d(zzg zzgVar, int i) {
            zzgVar.zzc |= 1048576;
            zzgVar.zzaa = i;
        }

        /* renamed from: d */
        static /* synthetic */ void m2394d(zzg zzgVar, long j) {
            zzgVar.zzc |= 16;
            zzgVar.zzk = j;
        }

        /* renamed from: d */
        static /* synthetic */ void m2393d(zzg zzgVar, Iterable iterable) {
            if (!zzgVar.zzar.zza()) {
                zzfj zzfjVar = zzgVar.zzar;
                int size = zzfjVar.size();
                zzgVar.zzar = zzfjVar.zzb(size == 0 ? 10 : size << 1);
            }
            zzdl.m2313a(iterable, zzgVar.zzar);
        }

        /* renamed from: d */
        static /* synthetic */ void m2392d(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= AdRequest.MAX_CONTENT_URL_LENGTH;
            zzgVar.zzp = str;
        }

        /* renamed from: e */
        private final void m2391e() {
            if (!this.zzg.zza()) {
                this.zzg = zzfd.m2288a(this.zzg);
            }
        }

        /* renamed from: e */
        static /* synthetic */ void m2390e(zzg zzgVar) {
            zzgVar.zzc &= -2097153;
            zzgVar.zzab = zzav.zzab;
        }

        /* renamed from: e */
        static /* synthetic */ void m2389e(zzg zzgVar, int i) {
            zzgVar.zzc |= 33554432;
            zzgVar.zzag = i;
        }

        /* renamed from: e */
        static /* synthetic */ void m2388e(zzg zzgVar, long j) {
            zzgVar.zzc |= 32;
            zzgVar.zzl = j;
        }

        /* renamed from: e */
        static /* synthetic */ void m2387e(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= 2048;
            zzgVar.zzr = str;
        }

        /* renamed from: f */
        static /* synthetic */ void m2386f(zzg zzgVar) {
            zzgVar.zzae = C2565dt.m2743b();
        }

        /* renamed from: f */
        static /* synthetic */ void m2385f(zzg zzgVar, int i) {
            zzgVar.zzd |= 2;
            zzgVar.zzao = i;
        }

        /* renamed from: f */
        static /* synthetic */ void m2384f(zzg zzgVar, long j) {
            zzgVar.zzc |= 16384;
            zzgVar.zzu = j;
        }

        /* renamed from: f */
        static /* synthetic */ void m2383f(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= CodedOutputStream.DEFAULT_BUFFER_SIZE;
            zzgVar.zzs = str;
        }

        /* renamed from: g */
        static /* synthetic */ void m2382g(zzg zzgVar) {
            throw new NullPointerException();
        }

        /* renamed from: g */
        static /* synthetic */ void m2381g(zzg zzgVar, long j) {
            zzgVar.zzc |= 32768;
            zzgVar.zzv = j;
        }

        /* renamed from: g */
        static /* synthetic */ void m2380g(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= 8192;
            zzgVar.zzt = str;
        }

        /* renamed from: h */
        static /* synthetic */ void m2379h(zzg zzgVar) {
            zzgVar.zzc &= Api.BaseClientBuilder.API_PRIORITY_OTHER;
            zzgVar.zzam = zzav.zzam;
        }

        /* renamed from: h */
        static /* synthetic */ void m2378h(zzg zzgVar, long j) {
            zzgVar.zzc |= 524288;
            zzgVar.zzz = j;
        }

        /* renamed from: h */
        static /* synthetic */ void m2377h(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= 65536;
            zzgVar.zzw = str;
        }

        /* renamed from: i */
        static /* synthetic */ void m2376i(zzg zzgVar, long j) {
            zzgVar.zzc |= 536870912;
            zzgVar.zzak = j;
        }

        /* renamed from: i */
        static /* synthetic */ void m2375i(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= 262144;
            zzgVar.zzy = str;
        }

        /* renamed from: j */
        static /* synthetic */ void m2374j(zzg zzgVar, long j) {
            zzgVar.zzc |= 1073741824;
            zzgVar.zzal = j;
        }

        /* renamed from: j */
        static /* synthetic */ void m2373j(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= 2097152;
            zzgVar.zzab = str;
        }

        /* renamed from: k */
        static /* synthetic */ void m2372k(zzg zzgVar, long j) {
            zzgVar.zzd |= 16;
            zzgVar.zzas = j;
        }

        /* renamed from: k */
        static /* synthetic */ void m2371k(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= 4194304;
            zzgVar.zzac = str;
        }

        /* renamed from: l */
        static /* synthetic */ void m2370l(zzg zzgVar, long j) {
            zzgVar.zzd |= 32;
            zzgVar.zzat = j;
        }

        /* renamed from: l */
        static /* synthetic */ void m2369l(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= 16777216;
            zzgVar.zzaf = str;
        }

        /* renamed from: m */
        static /* synthetic */ void m2368m(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzc |= 268435456;
            zzgVar.zzaj = str;
        }

        /* renamed from: n */
        static /* synthetic */ void m2367n(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzd |= 4;
            zzgVar.zzap = str;
        }

        /* renamed from: o */
        static /* synthetic */ void m2366o(zzg zzgVar, String str) {
            str.getClass();
            zzgVar.zzd |= 64;
            zzgVar.zzau = str;
        }

        public static zza zzbf() {
            return zzav.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2480ap.f15864a[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzav, "\u0001+��\u0002\u00012+��\u0004��\u0001\u0004��\u0002\u001b\u0003\u001b\u0004\u0002\u0001\u0005\u0002\u0002\u0006\u0002\u0003\u0007\u0002\u0005\b\b\u0006\t\b\u0007\n\b\b\u000b\b\t\f\u0004\n\r\b\u000b\u000e\b\f\u0010\b\r\u0011\u0002\u000e\u0012\u0002\u000f\u0013\b\u0010\u0014\u0007\u0011\u0015\b\u0012\u0016\u0002\u0013\u0017\u0004\u0014\u0018\b\u0015\u0019\b\u0016\u001a\u0002\u0004\u001c\u0007\u0017\u001d\u001b\u001e\b\u0018\u001f\u0004\u0019 \u0004\u001a!\u0004\u001b\"\b\u001c#\u0002\u001d$\u0002\u001e%\b\u001f&\b '\u0004!)\b\",\t#-\u001d.\u0002$/\u0002%2\b&", new Object[]{"zzc", "zzd", "zze", "zzf", zzc.class, "zzg", zzk.class, "zzh", "zzi", "zzj", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzaa", "zzab", "zzac", "zzk", "zzad", "zzae", zza.class, "zzaf", "zzag", "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas", "zzat", "zzau"});
                case 4:
                    return zzav;
                case 5:
                    zzgx<zzg> zzgxVar = zzaw;
                    zzgx<zzg> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzg.class) {
                            try {
                                zzgx<zzg> zzgxVar3 = zzaw;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzav);
                                    zzaw = zzgxVar2;
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

        public final long zzaa() {
            return this.zzu;
        }

        public final boolean zzab() {
            return (this.zzc & 32768) != 0;
        }

        public final long zzac() {
            return this.zzv;
        }

        public final String zzad() {
            return this.zzw;
        }

        public final boolean zzae() {
            return (this.zzc & 131072) != 0;
        }

        public final boolean zzaf() {
            return this.zzx;
        }

        public final String zzag() {
            return this.zzy;
        }

        public final boolean zzah() {
            return (this.zzc & 524288) != 0;
        }

        public final long zzai() {
            return this.zzz;
        }

        public final boolean zzaj() {
            return (this.zzc & 1048576) != 0;
        }

        public final int zzak() {
            return this.zzaa;
        }

        public final String zzal() {
            return this.zzab;
        }

        public final String zzam() {
            return this.zzac;
        }

        public final boolean zzan() {
            return (this.zzc & 8388608) != 0;
        }

        public final boolean zzao() {
            return this.zzad;
        }

        public final List<zza> zzap() {
            return this.zzae;
        }

        public final String zzaq() {
            return this.zzaf;
        }

        public final boolean zzar() {
            return (this.zzc & 33554432) != 0;
        }

        public final int zzas() {
            return this.zzag;
        }

        public final String zzat() {
            return this.zzaj;
        }

        public final boolean zzau() {
            return (this.zzc & 536870912) != 0;
        }

        public final long zzav() {
            return this.zzak;
        }

        public final boolean zzaw() {
            return (this.zzc & 1073741824) != 0;
        }

        public final long zzax() {
            return this.zzal;
        }

        public final String zzay() {
            return this.zzam;
        }

        public final boolean zzaz() {
            return (this.zzd & 2) != 0;
        }

        public final int zzb() {
            return this.zze;
        }

        public final zzk zzb(int i) {
            return this.zzg.get(i);
        }

        public final int zzba() {
            return this.zzao;
        }

        public final String zzbb() {
            return this.zzap;
        }

        public final boolean zzbc() {
            return (this.zzd & 16) != 0;
        }

        public final long zzbd() {
            return this.zzas;
        }

        public final String zzbe() {
            return this.zzau;
        }

        public final List<zzc> zzc() {
            return this.zzf;
        }

        public final int zzd() {
            return this.zzf.size();
        }

        public final List<zzk> zze() {
            return this.zzg;
        }

        public final int zzf() {
            return this.zzg.size();
        }

        public final boolean zzg() {
            return (this.zzc & 2) != 0;
        }

        public final long zzh() {
            return this.zzh;
        }

        public final boolean zzi() {
            return (this.zzc & 4) != 0;
        }

        public final long zzj() {
            return this.zzi;
        }

        public final boolean zzk() {
            return (this.zzc & 8) != 0;
        }

        public final long zzl() {
            return this.zzj;
        }

        public final boolean zzm() {
            return (this.zzc & 16) != 0;
        }

        public final long zzn() {
            return this.zzk;
        }

        public final boolean zzo() {
            return (this.zzc & 32) != 0;
        }

        public final long zzp() {
            return this.zzl;
        }

        public final String zzq() {
            return this.zzm;
        }

        public final String zzr() {
            return this.zzn;
        }

        public final String zzs() {
            return this.zzo;
        }

        public final String zzt() {
            return this.zzp;
        }

        public final boolean zzu() {
            return (this.zzc & 1024) != 0;
        }

        public final int zzv() {
            return this.zzq;
        }

        public final String zzw() {
            return this.zzr;
        }

        public final String zzx() {
            return this.zzs;
        }

        public final String zzy() {
            return this.zzt;
        }

        public final boolean zzz() {
            return (this.zzc & 16384) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzh.class */
    public static final class zzh extends zzfd<zzh, zzb> implements zzgq {
        private static final zzh zzf;
        private static volatile zzgx<zzh> zzg;
        private int zzc;
        private int zzd = 1;
        private zzfl<zzd> zze = C2565dt.m2743b();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzh$zza.class */
        public enum zza implements zzfi {
            RADS(1),
            PROVISIONING(2);
            

            /* renamed from: c */
            private static final zzfh<zza> f16140c = new C2482ar();

            /* renamed from: d */
            private final int f16142d;

            zza(int i) {
                this.f16142d = i;
            }

            public static zza zza(int i) {
                if (i == 1) {
                    return RADS;
                }
                if (i != 2) {
                    return null;
                }
                return PROVISIONING;
            }

            public static zzfk zzb() {
                return C2481aq.f15865a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f16142d + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzfi
            public final int zza() {
                return this.f16142d;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzh$zzb.class */
        public static final class zzb extends zzfd.zzb<zzh, zzb> implements zzgq {
            private zzb() {
                super(zzh.zzf);
            }

            /* synthetic */ zzb(byte b) {
                this();
            }

            public final zzb zza(zzd.zza zzaVar) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzh.m2364a((zzh) this.f16280a, (zzd) ((zzfd) zzaVar.zzu()));
                return this;
            }
        }

        static {
            zzh zzhVar = new zzh();
            zzf = zzhVar;
            zzfd.m2284a(zzh.class, zzhVar);
        }

        private zzh() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2364a(zzh zzhVar, zzd zzdVar) {
            zzdVar.getClass();
            if (!zzhVar.zze.zza()) {
                zzhVar.zze = zzfd.m2288a(zzhVar.zze);
            }
            zzhVar.zze.add(zzdVar);
        }

        public static zzb zza() {
            return zzf.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2480ap.f15864a[i - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zzb((byte) 0);
                case 3:
                    return m2286a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\f��\u0002\u001b", new Object[]{"zzc", "zzd", zza.zzb(), "zze", zzd.class});
                case 4:
                    return zzf;
                case 5:
                    zzgx<zzh> zzgxVar = zzg;
                    zzgx<zzh> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzh.class) {
                            try {
                                zzgx<zzh> zzgxVar3 = zzg;
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
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzi.class */
    public static final class zzi extends zzfd<zzi, zza> implements zzgq {
        private static final zzi zzg;
        private static volatile zzgx<zzi> zzh;
        private zzfm zzc = C2546da.m2812b();
        private zzfm zzd = C2546da.m2812b();
        private zzfl<zzb> zze = C2565dt.m2743b();
        private zzfl<zzj> zzf = C2565dt.m2743b();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzi$zza.class */
        public static final class zza extends zzfd.zzb<zzi, zza> implements zzgq {
            private zza() {
                super(zzi.zzg);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzi.m2362a((zzi) this.f16280a);
                return this;
            }

            public final zza zza(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzi.m2361a((zzi) this.f16280a, i);
                return this;
            }

            public final zza zza(Iterable<? extends Long> iterable) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzi.m2360a((zzi) this.f16280a, iterable);
                return this;
            }

            public final zza zzb() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzi.m2359b((zzi) this.f16280a);
                return this;
            }

            public final zza zzb(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzi.m2358b((zzi) this.f16280a, i);
                return this;
            }

            public final zza zzb(Iterable<? extends Long> iterable) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzi.m2357b((zzi) this.f16280a, iterable);
                return this;
            }

            public final zza zzc(Iterable<? extends zzb> iterable) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzi.m2356c((zzi) this.f16280a, iterable);
                return this;
            }

            public final zza zzd(Iterable<? extends zzj> iterable) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzi.m2354d((zzi) this.f16280a, iterable);
                return this;
            }
        }

        static {
            zzi zziVar = new zzi();
            zzg = zziVar;
            zzfd.m2284a(zzi.class, zziVar);
        }

        private zzi() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2362a(zzi zziVar) {
            zziVar.zzc = C2546da.m2812b();
        }

        /* renamed from: a */
        static /* synthetic */ void m2361a(zzi zziVar, int i) {
            zziVar.m2355d();
            zziVar.zze.remove(i);
        }

        /* renamed from: a */
        static /* synthetic */ void m2360a(zzi zziVar, Iterable iterable) {
            if (!zziVar.zzc.zza()) {
                zziVar.zzc = zzfd.m2287a(zziVar.zzc);
            }
            zzdl.m2313a(iterable, zziVar.zzc);
        }

        /* renamed from: b */
        static /* synthetic */ void m2359b(zzi zziVar) {
            zziVar.zzd = C2546da.m2812b();
        }

        /* renamed from: b */
        static /* synthetic */ void m2358b(zzi zziVar, int i) {
            zziVar.m2353e();
            zziVar.zzf.remove(i);
        }

        /* renamed from: b */
        static /* synthetic */ void m2357b(zzi zziVar, Iterable iterable) {
            if (!zziVar.zzd.zza()) {
                zziVar.zzd = zzfd.m2287a(zziVar.zzd);
            }
            zzdl.m2313a(iterable, zziVar.zzd);
        }

        /* renamed from: c */
        static /* synthetic */ void m2356c(zzi zziVar, Iterable iterable) {
            zziVar.m2355d();
            zzdl.m2313a(iterable, zziVar.zze);
        }

        /* renamed from: d */
        private final void m2355d() {
            if (!this.zze.zza()) {
                this.zze = zzfd.m2288a(this.zze);
            }
        }

        /* renamed from: d */
        static /* synthetic */ void m2354d(zzi zziVar, Iterable iterable) {
            zziVar.m2353e();
            zzdl.m2313a(iterable, zziVar.zzf);
        }

        /* renamed from: e */
        private final void m2353e() {
            if (!this.zzf.zza()) {
                this.zzf = zzfd.m2288a(this.zzf);
            }
        }

        public static zza zzi() {
            return zzg.m2280c();
        }

        public static zzi zzj() {
            return zzg;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2480ap.f15864a[i - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzg, "\u0001\u0004����\u0001\u0004\u0004��\u0004��\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzc", "zzd", "zze", zzb.class, "zzf", zzj.class});
                case 4:
                    return zzg;
                case 5:
                    zzgx<zzi> zzgxVar = zzh;
                    zzgx<zzi> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzi.class) {
                            try {
                                zzgx<zzi> zzgxVar3 = zzh;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzg);
                                    zzh = zzgxVar2;
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

        public final zzb zza(int i) {
            return this.zze.get(i);
        }

        public final List<Long> zza() {
            return this.zzc;
        }

        public final int zzb() {
            return this.zzc.size();
        }

        public final zzj zzb(int i) {
            return this.zzf.get(i);
        }

        public final List<Long> zzc() {
            return this.zzd;
        }

        public final int zzd() {
            return this.zzd.size();
        }

        public final List<zzb> zze() {
            return this.zze;
        }

        public final int zzf() {
            return this.zze.size();
        }

        public final List<zzj> zzg() {
            return this.zzf;
        }

        public final int zzh() {
            return this.zzf.size();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzj.class */
    public static final class zzj extends zzfd<zzj, zza> implements zzgq {
        private static final zzj zzf;
        private static volatile zzgx<zzj> zzg;
        private int zzc;
        private int zzd;
        private zzfm zze = C2546da.m2812b();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzj$zza.class */
        public static final class zza extends zzfd.zzb<zzj, zza> implements zzgq {
            private zza() {
                super(zzj.zzf);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzj.m2351a((zzj) this.f16280a);
                return this;
            }

            public final zza zza(int i) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzj.m2350a((zzj) this.f16280a, i);
                return this;
            }

            public final zza zza(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzj.m2349a((zzj) this.f16280a, j);
                return this;
            }

            public final zza zza(Iterable<? extends Long> iterable) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzj.m2348a((zzj) this.f16280a, iterable);
                return this;
            }
        }

        static {
            zzj zzjVar = new zzj();
            zzf = zzjVar;
            zzfd.m2284a(zzj.class, zzjVar);
        }

        private zzj() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2351a(zzj zzjVar) {
            zzjVar.zze = C2546da.m2812b();
        }

        /* renamed from: a */
        static /* synthetic */ void m2350a(zzj zzjVar, int i) {
            zzjVar.zzc |= 1;
            zzjVar.zzd = i;
        }

        /* renamed from: a */
        static /* synthetic */ void m2349a(zzj zzjVar, long j) {
            zzjVar.m2347d();
            zzjVar.zze.zza(j);
        }

        /* renamed from: a */
        static /* synthetic */ void m2348a(zzj zzjVar, Iterable iterable) {
            zzjVar.m2347d();
            zzdl.m2313a(iterable, zzjVar.zze);
        }

        /* renamed from: d */
        private final void m2347d() {
            if (!this.zze.zza()) {
                this.zze = zzfd.m2287a(this.zze);
            }
        }

        public static zza zze() {
            return zzf.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2480ap.f15864a[i - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\u0004��\u0002\u0014", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgx<zzj> zzgxVar = zzg;
                    zzgx<zzj> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzj.class) {
                            try {
                                zzgx<zzj> zzgxVar3 = zzg;
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

        public final long zza(int i) {
            return this.zze.zzb(i);
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final int zzb() {
            return this.zzd;
        }

        public final List<Long> zzc() {
            return this.zze;
        }

        public final int zzd() {
            return this.zze.size();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzk.class */
    public static final class zzk extends zzfd<zzk, zza> implements zzgq {
        private static final zzk zzj;
        private static volatile zzgx<zzk> zzk;
        private int zzc;
        private long zzd;
        private String zze = "";
        private String zzf = "";
        private long zzg;
        private float zzh;
        private double zzi;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbr$zzk$zza.class */
        public static final class zza extends zzfd.zzb<zzk, zza> implements zzgq {
            private zza() {
                super(zzk.zzj);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzk.m2345a((zzk) this.f16280a);
                return this;
            }

            public final zza zza(double d) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzk.m2344a((zzk) this.f16280a, d);
                return this;
            }

            public final zza zza(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzk.m2343a((zzk) this.f16280a, j);
                return this;
            }

            public final zza zza(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzk.m2342a((zzk) this.f16280a, str);
                return this;
            }

            public final zza zzb() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzk.m2341b((zzk) this.f16280a);
                return this;
            }

            public final zza zzb(long j) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzk.m2340b((zzk) this.f16280a, j);
                return this;
            }

            public final zza zzb(String str) {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzk.m2339b((zzk) this.f16280a, str);
                return this;
            }

            public final zza zzc() {
                if (this.f16281b) {
                    m2279a();
                    this.f16281b = false;
                }
                zzk.m2338c((zzk) this.f16280a);
                return this;
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzj = zzkVar;
            zzfd.m2284a(zzk.class, zzkVar);
        }

        private zzk() {
        }

        /* renamed from: a */
        static /* synthetic */ void m2345a(zzk zzkVar) {
            zzkVar.zzc &= -5;
            zzkVar.zzf = zzj.zzf;
        }

        /* renamed from: a */
        static /* synthetic */ void m2344a(zzk zzkVar, double d) {
            zzkVar.zzc |= 32;
            zzkVar.zzi = d;
        }

        /* renamed from: a */
        static /* synthetic */ void m2343a(zzk zzkVar, long j) {
            zzkVar.zzc |= 1;
            zzkVar.zzd = j;
        }

        /* renamed from: a */
        static /* synthetic */ void m2342a(zzk zzkVar, String str) {
            str.getClass();
            zzkVar.zzc |= 2;
            zzkVar.zze = str;
        }

        /* renamed from: b */
        static /* synthetic */ void m2341b(zzk zzkVar) {
            zzkVar.zzc &= -9;
            zzkVar.zzg = 0L;
        }

        /* renamed from: b */
        static /* synthetic */ void m2340b(zzk zzkVar, long j) {
            zzkVar.zzc |= 8;
            zzkVar.zzg = j;
        }

        /* renamed from: b */
        static /* synthetic */ void m2339b(zzk zzkVar, String str) {
            str.getClass();
            zzkVar.zzc |= 4;
            zzkVar.zzf = str;
        }

        /* renamed from: c */
        static /* synthetic */ void m2338c(zzk zzkVar) {
            zzkVar.zzc &= -33;
            zzkVar.zzi = 0.0d;
        }

        public static zza zzj() {
            return zzj.m2280c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzfd
        /* renamed from: a */
        public final Object mo2290a(int i) {
            switch (C2480ap.f15864a[i - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m2286a(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001\u0002��\u0002\b\u0001\u0003\b\u0002\u0004\u0002\u0003\u0005\u0001\u0004\u0006��\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    zzgx<zzk> zzgxVar = zzk;
                    zzgx<zzk> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzk.class) {
                            try {
                                zzgx<zzk> zzgxVar3 = zzk;
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

        public final long zzb() {
            return this.zzd;
        }

        public final String zzc() {
            return this.zze;
        }

        public final boolean zzd() {
            return (this.zzc & 4) != 0;
        }

        public final String zze() {
            return this.zzf;
        }

        public final boolean zzf() {
            return (this.zzc & 8) != 0;
        }

        public final long zzg() {
            return this.zzg;
        }

        public final boolean zzh() {
            return (this.zzc & 32) != 0;
        }

        public final double zzi() {
            return this.zzi;
        }
    }
}
