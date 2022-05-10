package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhy;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p258f.C4468c0;
import p131c.p161d.p170b.p224d.p252g.p258f.C4475d0;
import p131c.p161d.p170b.p224d.p252g.p258f.C4482e0;
import p131c.p161d.p170b.p224d.p252g.p258f.C4489f0;
import p131c.p161d.p170b.p224d.p252g.p258f.C4496g0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv.class */
public final class zzbv {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zza.class */
    public static final class zza extends zzhy<zza, C10515zza> implements zzjl {
        public static final zza zzi;
        public static volatile zzjs<zza> zzj;
        public int zzc;
        public int zzd;
        public zzig<zze> zze = zzhy.m9659o();
        public zzig<zzb> zzf = zzhy.m9659o();
        public boolean zzg;
        public boolean zzh;

        /* renamed from: com.google.android.gms.internal.measurement.zzbv$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zza$zza.class */
        public static final class C10515zza extends zzhy.zzb<zza, C10515zza> implements zzjl {
            public C10515zza() {
                super(zza.zzi);
            }

            public /* synthetic */ C10515zza(C4468c0 c0Var) {
                this();
            }

            /* renamed from: a */
            public final C10515zza m10411a(int i, zzb.zza zzaVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zza) this.f29500b).m10424a(i, (zzb) ((zzhy) zzaVar.mo9619b()));
                return this;
            }

            /* renamed from: a */
            public final C10515zza m10410a(int i, zze.zza zzaVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zza) this.f29500b).m10423a(i, (zze) ((zzhy) zzaVar.mo9619b()));
                return this;
            }

            /* renamed from: a */
            public final zze m10412a(int i) {
                return ((zza) this.f29500b).m10420b(i);
            }

            /* renamed from: b */
            public final zzb m10409b(int i) {
                return ((zza) this.f29500b).m10419c(i);
            }

            /* renamed from: o */
            public final int m10408o() {
                return ((zza) this.f29500b).m10414t();
            }

            public final int zza() {
                return ((zza) this.f29500b).m10416r();
            }
        }

        static {
            zza zzaVar = new zza();
            zzi = zzaVar;
            zzhy.m9666a(zza.class, zzaVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4468c0.f16697a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C10515zza(null);
                case 3:
                    return zzhy.m9668a(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001င��\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zzc", "zzd", "zze", zze.class, "zzf", zzb.class, "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzjs<zza> zzjsVar = zzj;
                    zzjs<zza> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzjs<zza> zzjsVar3 = zzj;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzi);
                                    zzj = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m10424a(int i, zzb zzbVar) {
            zzbVar.getClass();
            zzig<zzb> zzigVar = this.zzf;
            if (!zzigVar.zza()) {
                this.zzf = zzhy.m9670a(zzigVar);
            }
            this.zzf.set(i, zzbVar);
        }

        /* renamed from: a */
        public final void m10423a(int i, zze zzeVar) {
            zzeVar.getClass();
            zzig<zze> zzigVar = this.zze;
            if (!zzigVar.zza()) {
                this.zze = zzhy.m9670a(zzigVar);
            }
            this.zze.set(i, zzeVar);
        }

        /* renamed from: b */
        public final zze m10420b(int i) {
            return this.zze.get(i);
        }

        /* renamed from: c */
        public final zzb m10419c(int i) {
            return this.zzf.get(i);
        }

        /* renamed from: p */
        public final int m10418p() {
            return this.zzd;
        }

        /* renamed from: q */
        public final List<zze> m10417q() {
            return this.zze;
        }

        /* renamed from: r */
        public final int m10416r() {
            return this.zze.size();
        }

        /* renamed from: s */
        public final List<zzb> m10415s() {
            return this.zzf;
        }

        /* renamed from: t */
        public final int m10414t() {
            return this.zzf.size();
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzb.class */
    public static final class zzb extends zzhy<zzb, zza> implements zzjl {
        public static final zzb zzl;
        public static volatile zzjs<zzb> zzm;
        public int zzc;
        public int zzd;
        public String zze = "";
        public zzig<zzc> zzf = zzhy.m9659o();
        public boolean zzg;
        public zzd zzh;
        public boolean zzi;
        public boolean zzj;
        public boolean zzk;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzb$zza.class */
        public static final class zza extends zzhy.zzb<zzb, zza> implements zzjl {
            public zza() {
                super(zzb.zzl);
            }

            public /* synthetic */ zza(C4468c0 c0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m10389a(int i, zzc zzcVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzb) this.f29500b).m10406a(i, zzcVar);
                return this;
            }

            @Override // com.google.android.gms.internal.measurement.zzgi
            /* renamed from: a */
            public final zza mo9794a(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzb) this.f29500b).m10403a(str);
                return this;
            }

            /* renamed from: a */
            public final zzc m10390a(int i) {
                return ((zzb) this.f29500b).m10402b(i);
            }

            /* renamed from: o */
            public final int m10388o() {
                return ((zzb) this.f29500b).m10398s();
            }

            public final String zza() {
                return ((zzb) this.f29500b).m10400q();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzl = zzbVar;
            zzhy.m9666a(zzb.class, zzbVar);
        }

        /* renamed from: z */
        public static zza m10391z() {
            return zzl.m9663k();
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4468c0.f16697a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzl, "\u0001\b��\u0001\u0001\b\b��\u0001��\u0001င��\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zzc", "zzd", "zze", "zzf", zzc.class, "zzg", "zzh", "zzi", "zzj", "zzk"});
                case 4:
                    return zzl;
                case 5:
                    zzjs<zzb> zzjsVar = zzm;
                    zzjs<zzb> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzjs<zzb> zzjsVar3 = zzm;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzl);
                                    zzm = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m10406a(int i, zzc zzcVar) {
            zzcVar.getClass();
            zzig<zzc> zzigVar = this.zzf;
            if (!zzigVar.zza()) {
                this.zzf = zzhy.m9670a(zzigVar);
            }
            this.zzf.set(i, zzcVar);
        }

        /* renamed from: a */
        public final void m10403a(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* renamed from: b */
        public final zzc m10402b(int i) {
            return this.zzf.get(i);
        }

        /* renamed from: p */
        public final int m10401p() {
            return this.zzd;
        }

        /* renamed from: q */
        public final String m10400q() {
            return this.zze;
        }

        /* renamed from: r */
        public final List<zzc> m10399r() {
            return this.zzf;
        }

        /* renamed from: s */
        public final int m10398s() {
            return this.zzf.size();
        }

        /* renamed from: t */
        public final boolean m10397t() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: u */
        public final zzd m10396u() {
            zzd zzdVar = this.zzh;
            zzd zzdVar2 = zzdVar;
            if (zzdVar == null) {
                zzdVar2 = zzd.m10367y();
            }
            return zzdVar2;
        }

        /* renamed from: v */
        public final boolean m10395v() {
            return this.zzi;
        }

        /* renamed from: w */
        public final boolean m10394w() {
            return this.zzj;
        }

        /* renamed from: x */
        public final boolean m10393x() {
            return (this.zzc & 64) != 0;
        }

        /* renamed from: y */
        public final boolean m10392y() {
            return this.zzk;
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzc.class */
    public static final class zzc extends zzhy<zzc, zza> implements zzjl {
        public static final zzc zzh;
        public static volatile zzjs<zzc> zzi;
        public int zzc;
        public zzf zzd;
        public zzd zze;
        public boolean zzf;
        public String zzg = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzc$zza.class */
        public static final class zza extends zzhy.zzb<zzc, zza> implements zzjl {
            public zza() {
                super(zzc.zzh);
            }

            public /* synthetic */ zza(C4468c0 c0Var) {
                this();
            }

            @Override // com.google.android.gms.internal.measurement.zzgi
            /* renamed from: a */
            public final zza mo9794a(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzc) this.f29500b).m10386a(str);
                return this;
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzh = zzcVar;
            zzhy.m9666a(zzc.class, zzcVar);
        }

        /* renamed from: w */
        public static zzc m10378w() {
            return zzh;
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4468c0.f16697a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzjs<zzc> zzjsVar = zzi;
                    zzjs<zzc> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzjs<zzc> zzjsVar3 = zzi;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzh);
                                    zzi = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m10386a(String str) {
            str.getClass();
            this.zzc |= 8;
            this.zzg = str;
        }

        /* renamed from: p */
        public final zzf m10385p() {
            zzf zzfVar = this.zzd;
            zzf zzfVar2 = zzfVar;
            if (zzfVar == null) {
                zzfVar2 = zzf.m10347w();
            }
            return zzfVar2;
        }

        /* renamed from: q */
        public final boolean m10384q() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: r */
        public final zzd m10383r() {
            zzd zzdVar = this.zze;
            zzd zzdVar2 = zzdVar;
            if (zzdVar == null) {
                zzdVar2 = zzd.m10367y();
            }
            return zzdVar2;
        }

        /* renamed from: s */
        public final boolean m10382s() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: t */
        public final boolean m10381t() {
            return this.zzf;
        }

        /* renamed from: u */
        public final boolean m10380u() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: v */
        public final String m10379v() {
            return this.zzg;
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzd.class */
    public static final class zzd extends zzhy<zzd, zzb> implements zzjl {
        public static final zzd zzi;
        public static volatile zzjs<zzd> zzj;
        public int zzc;
        public int zzd;
        public boolean zze;
        public String zzf = "";
        public String zzg = "";
        public String zzh = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzd$zza.class */
        public enum zza implements zzid {
            UNKNOWN_COMPARISON_TYPE(0),
            LESS_THAN(1),
            GREATER_THAN(2),
            EQUAL(3),
            BETWEEN(4);
            
            public static final zzic<zza> zzf = new C4482e0();
            public final int zzg;

            zza(int i) {
                this.zzg = i;
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

            public static zzif zzb() {
                return C4475d0.f16723a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzid
            public final int zza() {
                return this.zzg;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzd$zzb.class */
        public static final class zzb extends zzhy.zzb<zzd, zzb> implements zzjl {
            public zzb() {
                super(zzd.zzi);
            }

            public /* synthetic */ zzb(C4468c0 c0Var) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzi = zzdVar;
            zzhy.m9666a(zzd.class, zzdVar);
        }

        /* renamed from: y */
        public static zzd m10367y() {
            return zzi;
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4468c0.f16697a[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzhy.m9668a(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zzc", "zzd", zza.zzb(), "zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzjs<zzd> zzjsVar = zzj;
                    zzjs<zzd> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzjs<zzd> zzjsVar3 = zzj;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzi);
                                    zzj = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: p */
        public final zza m10376p() {
            zza zza2 = zza.zza(this.zzd);
            zza zzaVar = zza2;
            if (zza2 == null) {
                zzaVar = zza.UNKNOWN_COMPARISON_TYPE;
            }
            return zzaVar;
        }

        /* renamed from: q */
        public final boolean m10375q() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: r */
        public final boolean m10374r() {
            return this.zze;
        }

        /* renamed from: s */
        public final boolean m10373s() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: t */
        public final String m10372t() {
            return this.zzf;
        }

        /* renamed from: u */
        public final boolean m10371u() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: v */
        public final String m10370v() {
            return this.zzg;
        }

        /* renamed from: w */
        public final boolean m10369w() {
            return (this.zzc & 16) != 0;
        }

        /* renamed from: x */
        public final String m10368x() {
            return this.zzh;
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zze.class */
    public static final class zze extends zzhy<zze, zza> implements zzjl {
        public static final zze zzj;
        public static volatile zzjs<zze> zzk;
        public int zzc;
        public int zzd;
        public String zze = "";
        public zzc zzf;
        public boolean zzg;
        public boolean zzh;
        public boolean zzi;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zze$zza.class */
        public static final class zza extends zzhy.zzb<zze, zza> implements zzjl {
            public zza() {
                super(zze.zzj);
            }

            public /* synthetic */ zza(C4468c0 c0Var) {
                this();
            }

            @Override // com.google.android.gms.internal.measurement.zzgi
            /* renamed from: a */
            public final zza mo9794a(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zze) this.f29500b).m10364a(str);
                return this;
            }
        }

        static {
            zze zzeVar = new zze();
            zzj = zzeVar;
            zzhy.m9666a(zze.class, zzeVar);
        }

        /* renamed from: w */
        public static zza m10356w() {
            return zzj.m9663k();
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4468c0.f16697a[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001င��\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    zzjs<zze> zzjsVar = zzk;
                    zzjs<zze> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzjs<zze> zzjsVar3 = zzk;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzj);
                                    zzk = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m10364a(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* renamed from: p */
        public final int m10363p() {
            return this.zzd;
        }

        /* renamed from: q */
        public final String m10362q() {
            return this.zze;
        }

        /* renamed from: r */
        public final zzc m10361r() {
            zzc zzcVar = this.zzf;
            zzc zzcVar2 = zzcVar;
            if (zzcVar == null) {
                zzcVar2 = zzc.m10378w();
            }
            return zzcVar2;
        }

        /* renamed from: s */
        public final boolean m10360s() {
            return this.zzg;
        }

        /* renamed from: t */
        public final boolean m10359t() {
            return this.zzh;
        }

        /* renamed from: u */
        public final boolean m10358u() {
            return (this.zzc & 32) != 0;
        }

        /* renamed from: v */
        public final boolean m10357v() {
            return this.zzi;
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzf.class */
    public static final class zzf extends zzhy<zzf, zza> implements zzjl {
        public static final zzf zzh;
        public static volatile zzjs<zzf> zzi;
        public int zzc;
        public int zzd;
        public boolean zzf;
        public String zze = "";
        public zzig<String> zzg = zzhy.m9659o();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzf$zza.class */
        public static final class zza extends zzhy.zzb<zzf, zza> implements zzjl {
            public zza() {
                super(zzf.zzh);
            }

            public /* synthetic */ zza(C4468c0 c0Var) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzf$zzb.class */
        public enum zzb implements zzid {
            UNKNOWN_MATCH_TYPE(0),
            REGEXP(1),
            BEGINS_WITH(2),
            ENDS_WITH(3),
            PARTIAL(4),
            EXACT(5),
            IN_LIST(6);
            
            public static final zzic<zzb> zzh = new C4489f0();
            public final int zzi;

            zzb(int i) {
                this.zzi = i;
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

            public static zzif zzb() {
                return C4496g0.f16747a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzi + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzid
            public final int zza() {
                return this.zzi;
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzh = zzfVar;
            zzhy.m9666a(zzf.class, zzfVar);
        }

        /* renamed from: w */
        public static zzf m10347w() {
            return zzh;
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4468c0.f16697a[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဌ��\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zzc", "zzd", zzb.zzb(), "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzjs<zzf> zzjsVar = zzi;
                    zzjs<zzf> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzjs<zzf> zzjsVar3 = zzi;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzh);
                                    zzi = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: p */
        public final zzb m10354p() {
            zzb zza2 = zzb.zza(this.zzd);
            zzb zzbVar = zza2;
            if (zza2 == null) {
                zzbVar = zzb.UNKNOWN_MATCH_TYPE;
            }
            return zzbVar;
        }

        /* renamed from: q */
        public final boolean m10353q() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: r */
        public final String m10352r() {
            return this.zze;
        }

        /* renamed from: s */
        public final boolean m10351s() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: t */
        public final boolean m10350t() {
            return this.zzf;
        }

        /* renamed from: u */
        public final List<String> m10349u() {
            return this.zzg;
        }

        /* renamed from: v */
        public final int m10348v() {
            return this.zzg.size();
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }
}
