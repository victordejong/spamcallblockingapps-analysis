package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhz;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv.class */
public final class zzbv {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zza.class */
    public static final class zza extends zzhz<zza, C2483zza> implements zzjj {
        private static final zza zzi;
        private static volatile zzju<zza> zzj;
        private int zzc;
        private int zzd;
        private zzii<zze> zze = zzhz.m12420z();
        private zzii<zzb> zzf = zzhz.m12420z();
        private boolean zzg;
        private boolean zzh;

        /* renamed from: com.google.android.gms.internal.measurement.zzbv$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zza$zza.class */
        public static final class C2483zza extends zzhz.zza<zza, C2483zza> implements zzjj {
            private C2483zza() {
                super(zza.zzi);
            }

            /* synthetic */ C2483zza(zzbw zzbwVar) {
                this();
            }

            /* renamed from: A */
            public final zze m13383A(int i) {
                return ((zza) this.f8519g).m13396A(i);
            }

            /* renamed from: C */
            public final int m13382C() {
                return ((zza) this.f8519g).m13385N();
            }

            /* renamed from: D */
            public final zzb m13381D(int i) {
                return ((zza) this.f8519g).m13389J(i);
            }

            /* renamed from: x */
            public final int m13380x() {
                return ((zza) this.f8519g).m13387L();
            }

            /* renamed from: y */
            public final C2483zza m13379y(int i, zzb.zza zzaVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zza) this.f8519g).m13395C(i, (zzb) ((zzhz) zzaVar.mo12321k()));
                return this;
            }

            /* renamed from: z */
            public final C2483zza m13378z(int i, zze.zza zzaVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zza) this.f8519g).m13394D(i, (zze) ((zzhz) zzaVar.mo12321k()));
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zzi = zzaVar;
            zzhz.m12426r(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: C */
        public final void m13395C(int i, zzb zzbVar) {
            zzbVar.getClass();
            zzii<zzb> zziiVar = this.zzf;
            if (!zziiVar.zza()) {
                this.zzf = zzhz.m12430n(zziiVar);
            }
            this.zzf.set(i, zzbVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: D */
        public final void m13394D(int i, zze zzeVar) {
            zzeVar.getClass();
            zzii<zze> zziiVar = this.zze;
            if (!zziiVar.zza()) {
                this.zze = zzhz.m12430n(zziiVar);
            }
            this.zze.set(i, zzeVar);
        }

        /* renamed from: A */
        public final zze m13396A(int i) {
            return this.zze.get(i);
        }

        /* renamed from: G */
        public final boolean m13391G() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: H */
        public final int m13390H() {
            return this.zzd;
        }

        /* renamed from: J */
        public final zzb m13389J(int i) {
            return this.zzf.get(i);
        }

        /* renamed from: K */
        public final List<zze> m13388K() {
            return this.zze;
        }

        /* renamed from: L */
        public final int m13387L() {
            return this.zze.size();
        }

        /* renamed from: M */
        public final List<zzb> m13386M() {
            return this.zzf;
        }

        /* renamed from: N */
        public final int m13385N() {
            return this.zzf.size();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzbw.f8299a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C2483zza(null);
                case 3:
                    return zzhz.m12428p(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001င��\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zzc", "zzd", "zze", zze.class, "zzf", zzb.class, "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzju<zza> zzjuVar = zzj;
                    zzju<zza> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzju<zza> zzjuVar3 = zzj;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzi);
                                    zzj = zzjuVar2;
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzb.class */
    public static final class zzb extends zzhz<zzb, zza> implements zzjj {
        private static final zzb zzl;
        private static volatile zzju<zzb> zzm;
        private int zzc;
        private int zzd;
        private String zze = "";
        private zzii<zzc> zzf = zzhz.m12420z();
        private boolean zzg;
        private zzd zzh;
        private boolean zzi;
        private boolean zzj;
        private boolean zzk;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzb$zza.class */
        public static final class zza extends zzhz.zza<zzb, zza> implements zzjj {
            private zza() {
                super(zzb.zzl);
            }

            /* synthetic */ zza(zzbw zzbwVar) {
                this();
            }

            /* renamed from: A */
            public final String m13359A() {
                return ((zzb) this.f8519g).m13370J();
            }

            /* renamed from: C */
            public final int m13358C() {
                return ((zzb) this.f8519g).m13368L();
            }

            /* renamed from: x */
            public final zza m13357x(int i, zzc zzcVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzb) this.f8519g).m13376C(i, zzcVar);
                return this;
            }

            /* renamed from: y */
            public final zza m13356y(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzb) this.f8519g).m13373F(str);
                return this;
            }

            /* renamed from: z */
            public final zzc m13355z(int i) {
                return ((zzb) this.f8519g).m13377A(i);
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzl = zzbVar;
            zzhz.m12426r(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: C */
        public final void m13376C(int i, zzc zzcVar) {
            zzcVar.getClass();
            zzii<zzc> zziiVar = this.zzf;
            if (!zziiVar.zza()) {
                this.zzf = zzhz.m12430n(zziiVar);
            }
            this.zzf.set(i, zzcVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: F */
        public final void m13373F(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* renamed from: S */
        public static zza m13361S() {
            return zzl.m12424v();
        }

        /* renamed from: A */
        public final zzc m13377A(int i) {
            return this.zzf.get(i);
        }

        /* renamed from: G */
        public final boolean m13372G() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: H */
        public final int m13371H() {
            return this.zzd;
        }

        /* renamed from: J */
        public final String m13370J() {
            return this.zze;
        }

        /* renamed from: K */
        public final List<zzc> m13369K() {
            return this.zzf;
        }

        /* renamed from: L */
        public final int m13368L() {
            return this.zzf.size();
        }

        /* renamed from: M */
        public final boolean m13367M() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: N */
        public final zzd m13366N() {
            zzd zzdVar = this.zzh;
            zzd zzdVar2 = zzdVar;
            if (zzdVar == null) {
                zzdVar2 = zzd.m13331M();
            }
            return zzdVar2;
        }

        /* renamed from: O */
        public final boolean m13365O() {
            return this.zzi;
        }

        /* renamed from: P */
        public final boolean m13364P() {
            return this.zzj;
        }

        /* renamed from: Q */
        public final boolean m13363Q() {
            return (this.zzc & 64) != 0;
        }

        /* renamed from: R */
        public final boolean m13362R() {
            return this.zzk;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzbw.f8299a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzl, "\u0001\b��\u0001\u0001\b\b��\u0001��\u0001င��\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zzc", "zzd", "zze", "zzf", zzc.class, "zzg", "zzh", "zzi", "zzj", "zzk"});
                case 4:
                    return zzl;
                case 5:
                    zzju<zzb> zzjuVar = zzm;
                    zzju<zzb> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzju<zzb> zzjuVar3 = zzm;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzl);
                                    zzm = zzjuVar2;
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzc.class */
    public static final class zzc extends zzhz<zzc, zza> implements zzjj {
        private static final zzc zzh;
        private static volatile zzju<zzc> zzi;
        private int zzc;
        private zzf zzd;
        private zzd zze;
        private boolean zzf;
        private String zzg = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzc$zza.class */
        public static final class zza extends zzhz.zza<zzc, zza> implements zzjj {
            private zza() {
                super(zzc.zzh);
            }

            /* synthetic */ zza(zzbw zzbwVar) {
                this();
            }

            /* renamed from: x */
            public final zza m13342x(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzc) this.f8519g).m13353C(str);
                return this;
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzh = zzcVar;
            zzhz.m12426r(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: C */
        public final void m13353C(String str) {
            str.getClass();
            this.zzc |= 8;
            this.zzg = str;
        }

        /* renamed from: M */
        public static zzc m13344M() {
            return zzh;
        }

        /* renamed from: D */
        public final boolean m13352D() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: E */
        public final zzf m13351E() {
            zzf zzfVar = this.zzd;
            zzf zzfVar2 = zzfVar;
            if (zzfVar == null) {
                zzfVar2 = zzf.m13308K();
            }
            return zzfVar2;
        }

        /* renamed from: F */
        public final boolean m13350F() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: G */
        public final zzd m13349G() {
            zzd zzdVar = this.zze;
            zzd zzdVar2 = zzdVar;
            if (zzdVar == null) {
                zzdVar2 = zzd.m13331M();
            }
            return zzdVar2;
        }

        /* renamed from: H */
        public final boolean m13348H() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: J */
        public final boolean m13347J() {
            return this.zzf;
        }

        /* renamed from: K */
        public final boolean m13346K() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: L */
        public final String m13345L() {
            return this.zzg;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzbw.f8299a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzju<zzc> zzjuVar = zzi;
                    zzju<zzc> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzju<zzc> zzjuVar3 = zzi;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzh);
                                    zzi = zzjuVar2;
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzd.class */
    public static final class zzd extends zzhz<zzd, zzb> implements zzjj {
        private static final zzd zzi;
        private static volatile zzju<zzd> zzj;
        private int zzc;
        private int zzd;
        private boolean zze;
        private String zzf = "";
        private String zzg = "";
        private String zzh = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzd$zza.class */
        public enum zza implements zzib {
            UNKNOWN_COMPARISON_TYPE(0),
            LESS_THAN(1),
            GREATER_THAN(2),
            EQUAL(3),
            BETWEEN(4);
            
            private static final zzie<zza> zzf = new zzby();
            private final int zzg;

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

            public static zzid zzb() {
                return zzbx.f8300a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzib
            public final int zza() {
                return this.zzg;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzd$zzb.class */
        public static final class zzb extends zzhz.zza<zzd, zzb> implements zzjj {
            private zzb() {
                super(zzd.zzi);
            }

            /* synthetic */ zzb(zzbw zzbwVar) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzi = zzdVar;
            zzhz.m12426r(zzd.class, zzdVar);
        }

        private zzd() {
        }

        /* renamed from: M */
        public static zzd m13331M() {
            return zzi;
        }

        /* renamed from: A */
        public final boolean m13341A() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: C */
        public final zza m13340C() {
            zza zza2 = zza.zza(this.zzd);
            zza zzaVar = zza2;
            if (zza2 == null) {
                zzaVar = zza.UNKNOWN_COMPARISON_TYPE;
            }
            return zzaVar;
        }

        /* renamed from: D */
        public final boolean m13339D() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: E */
        public final boolean m13338E() {
            return this.zze;
        }

        /* renamed from: F */
        public final boolean m13337F() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: G */
        public final String m13336G() {
            return this.zzf;
        }

        /* renamed from: H */
        public final boolean m13335H() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: J */
        public final String m13334J() {
            return this.zzg;
        }

        /* renamed from: K */
        public final boolean m13333K() {
            return (this.zzc & 16) != 0;
        }

        /* renamed from: L */
        public final String m13332L() {
            return this.zzh;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzbw.f8299a[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzhz.m12428p(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zzc", "zzd", zza.zzb(), "zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzju<zzd> zzjuVar = zzj;
                    zzju<zzd> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzju<zzd> zzjuVar3 = zzj;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzi);
                                    zzj = zzjuVar2;
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zze.class */
    public static final class zze extends zzhz<zze, zza> implements zzjj {
        private static final zze zzj;
        private static volatile zzju<zze> zzk;
        private int zzc;
        private int zzd;
        private String zze = "";
        private zzc zzf;
        private boolean zzg;
        private boolean zzh;
        private boolean zzi;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zze$zza.class */
        public static final class zza extends zzhz.zza<zze, zza> implements zzjj {
            private zza() {
                super(zze.zzj);
            }

            /* synthetic */ zza(zzbw zzbwVar) {
                this();
            }

            /* renamed from: x */
            public final zza m13317x(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zze) this.f8519g).m13328C(str);
                return this;
            }
        }

        static {
            zze zzeVar = new zze();
            zzj = zzeVar;
            zzhz.m12426r(zze.class, zzeVar);
        }

        private zze() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: C */
        public final void m13328C(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* renamed from: M */
        public static zza m13319M() {
            return zzj.m12424v();
        }

        /* renamed from: D */
        public final boolean m13327D() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: E */
        public final int m13326E() {
            return this.zzd;
        }

        /* renamed from: F */
        public final String m13325F() {
            return this.zze;
        }

        /* renamed from: G */
        public final zzc m13324G() {
            zzc zzcVar = this.zzf;
            zzc zzcVar2 = zzcVar;
            if (zzcVar == null) {
                zzcVar2 = zzc.m13344M();
            }
            return zzcVar2;
        }

        /* renamed from: H */
        public final boolean m13323H() {
            return this.zzg;
        }

        /* renamed from: J */
        public final boolean m13322J() {
            return this.zzh;
        }

        /* renamed from: K */
        public final boolean m13321K() {
            return (this.zzc & 32) != 0;
        }

        /* renamed from: L */
        public final boolean m13320L() {
            return this.zzi;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzbw.f8299a[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001င��\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    zzju<zze> zzjuVar = zzk;
                    zzju<zze> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzju<zze> zzjuVar3 = zzk;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzj);
                                    zzk = zzjuVar2;
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzf.class */
    public static final class zzf extends zzhz<zzf, zza> implements zzjj {
        private static final zzf zzh;
        private static volatile zzju<zzf> zzi;
        private int zzc;
        private int zzd;
        private boolean zzf;
        private String zze = "";
        private zzii<String> zzg = zzhz.m12420z();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzf$zza.class */
        public static final class zza extends zzhz.zza<zzf, zza> implements zzjj {
            private zza() {
                super(zzf.zzh);
            }

            /* synthetic */ zza(zzbw zzbwVar) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv$zzf$zzb.class */
        public enum zzb implements zzib {
            UNKNOWN_MATCH_TYPE(0),
            REGEXP(1),
            BEGINS_WITH(2),
            ENDS_WITH(3),
            PARTIAL(4),
            EXACT(5),
            IN_LIST(6);
            
            private static final zzie<zzb> zzh = new zzbz();
            private final int zzi;

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

            public static zzid zzb() {
                return zzcb.f8301a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzi + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzib
            public final int zza() {
                return this.zzi;
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzh = zzfVar;
            zzhz.m12426r(zzf.class, zzfVar);
        }

        private zzf() {
        }

        /* renamed from: K */
        public static zzf m13308K() {
            return zzh;
        }

        /* renamed from: A */
        public final boolean m13316A() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: C */
        public final zzb m13315C() {
            zzb zza2 = zzb.zza(this.zzd);
            zzb zzbVar = zza2;
            if (zza2 == null) {
                zzbVar = zzb.UNKNOWN_MATCH_TYPE;
            }
            return zzbVar;
        }

        /* renamed from: D */
        public final boolean m13314D() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: E */
        public final String m13313E() {
            return this.zze;
        }

        /* renamed from: F */
        public final boolean m13312F() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: G */
        public final boolean m13311G() {
            return this.zzf;
        }

        /* renamed from: H */
        public final List<String> m13310H() {
            return this.zzg;
        }

        /* renamed from: J */
        public final int m13309J() {
            return this.zzg.size();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzbw.f8299a[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဌ��\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zzc", "zzd", zzb.zzb(), "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzju<zzf> zzjuVar = zzi;
                    zzju<zzf> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzju<zzf> zzjuVar3 = zzi;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzh);
                                    zzi = zzjuVar2;
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
