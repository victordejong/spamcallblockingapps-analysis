package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p253a.la0;
import p131c.p161d.p170b.p224d.p252g.p253a.ma0;
import p131c.p161d.p170b.p224d.p252g.p253a.na0;
import p131c.p161d.p170b.p224d.p252g.p253a.oa0;
import p131c.p161d.p170b.p224d.p252g.p253a.pa0;
import p131c.p161d.p170b.p224d.p252g.p253a.ra0;
import p131c.p161d.p170b.p224d.p252g.p253a.sa0;
import p131c.p161d.p170b.p224d.p252g.p253a.ta0;
import p131c.p161d.p170b.p224d.p252g.p253a.ua0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent.class */
public final class zzent {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zza.class */
    public static final class zza extends zzejz<zza, zzb> implements zzell {
        public static volatile zzelw<zza> zzel;
        public static final zza zziqi;
        public int zzdw;
        public int zziqb;
        public C10497zza zziqc;
        public zzeip zziqd;
        public zzeip zziqe;
        public boolean zziqf;
        public boolean zziqg;
        public byte zziqh = (byte) 2;

        /* renamed from: com.google.android.gms.internal.ads.zzent$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zza$zza.class */
        public static final class C10497zza extends zzejz<C10497zza, C10498zza> implements zzell {
            public static volatile zzelw<C10497zza> zzel;
            public static final C10497zza zziqn;
            public int zzdw;
            public String zziqj = "";
            public String zziqk = "";
            public String zziql = "";
            public int zziqm;

            /* renamed from: com.google.android.gms.internal.ads.zzent$zza$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zza$zza$zza.class */
            public static final class C10498zza extends zzejz.zzb<C10497zza, C10498zza> implements zzell {
                public C10498zza() {
                    super(C10497zza.zziqn);
                }

                public /* synthetic */ C10498zza(la0 la0Var) {
                    this();
                }
            }

            static {
                C10497zza zzaVar = new C10497zza();
                zziqn = zzaVar;
                zzejz.m12401a(C10497zza.class, zzaVar);
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                switch (la0.f13948a[i - 1]) {
                    case 1:
                        return new C10497zza();
                    case 2:
                        return new C10498zza(null);
                    case 3:
                        return zzejz.m12403a(zziqn, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003", new Object[]{"zzdw", "zziqj", "zziqk", "zziql", "zziqm"});
                    case 4:
                        return zziqn;
                    case 5:
                        zzelw<C10497zza> zzelwVar = zzel;
                        zzelw<C10497zza> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (C10497zza.class) {
                                try {
                                    zzelw<C10497zza> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zziqn);
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
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zza$zzb.class */
        public static final class zzb extends zzejz.zzb<zza, zzb> implements zzell {
            public zzb() {
                super(zza.zziqi);
            }

            public /* synthetic */ zzb(la0 la0Var) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zza$zzc.class */
        public enum zzc implements zzeke {
            SAFE(0),
            DANGEROUS(1),
            UNKNOWN(2),
            POTENTIALLY_UNWANTED(3),
            DANGEROUS_HOST(4);
            
            public static final zzekd<zzc> zzes = new na0();
            public final int value;

            zzc(int i) {
                this.value = i;
            }

            public static zzc zzht(int i) {
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

            public static zzekg zzw() {
                return ma0.f14029a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzc.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzeke
            public final int zzv() {
                return this.value;
            }
        }

        static {
            zza zzaVar = new zza();
            zziqi = zzaVar;
            zzejz.m12401a(zza.class, zzaVar);
        }

        public zza() {
            zzeip zzeipVar = zzeip.zzier;
            this.zziqd = zzeipVar;
            this.zziqe = zzeipVar;
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            int i2 = 1;
            switch (la0.f13948a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzejz.m12403a(zziqi, "\u0001\u0006��\u0001\u0001\u0006\u0006����\u0001\u0001ᔌ��\u0002ဉ\u0001\u0003ည\u0002\u0004ည\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzdw", "zziqb", zzc.zzw(), "zziqc", "zziqd", "zziqe", "zziqf", "zziqg"});
                case 4:
                    return zziqi;
                case 5:
                    zzelw<zza> zzelwVar = zzel;
                    zzelw<zza> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzelw<zza> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zziqi);
                                    zzel = zzelwVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzelwVar2;
                case 6:
                    return Byte.valueOf(this.zziqh);
                case 7:
                    if (obj == null) {
                        i2 = 0;
                    }
                    this.zziqh = (byte) i2;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb.class */
    public static final class zzb extends zzejz<zzb, zza> implements zzell {
        public static volatile zzelw<zzb> zzel;
        public static final zzb zzirj;
        public int zzbzr;
        public int zzdw;
        public int zziqu;
        public C10499zzb zziqx;
        public zzf zzira;
        public boolean zzirb;
        public boolean zzire;
        public boolean zzirf;
        public zzi zzirg;
        public byte zziqh = (byte) 2;
        public String zziqk = "";
        public String zziqv = "";
        public String zziqw = "";
        public zzekk<zzh> zziqy = zzejz.m12394l();
        public String zziqz = "";
        public zzekk<String> zzirc = zzejz.m12394l();
        public String zzird = "";
        public zzeip zziqd = zzeip.zzier;
        public zzekk<String> zzirh = zzejz.m12394l();
        public zzekk<String> zziri = zzejz.m12394l();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zza.class */
        public static final class zza extends zzejz.zzb<zzb, zza> implements zzell {
            public zza() {
                super(zzb.zzirj);
            }

            public /* synthetic */ zza(la0 la0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m12294a(C10499zzb zzbVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m12321a(zzbVar);
                return this;
            }

            /* renamed from: a */
            public final zza m12293a(zzf zzfVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m12320a(zzfVar);
                return this;
            }

            /* renamed from: a */
            public final zza m12292a(zzg zzgVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m12319a(zzgVar);
                return this;
            }

            /* renamed from: a */
            public final zza m12291a(zzh zzhVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m12318a(zzhVar);
                return this;
            }

            /* renamed from: a */
            public final zza m12290a(zzi zziVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m12317a(zziVar);
                return this;
            }

            /* renamed from: a */
            public final zza m12289a(Iterable<String> iterable) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m12308a(iterable);
                return this;
            }

            /* renamed from: a */
            public final zza m12288a(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m12307a(str);
                return this;
            }

            /* renamed from: b */
            public final zza m12287b(Iterable<String> iterable) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m12304b(iterable);
                return this;
            }

            /* renamed from: b */
            public final zza m12286b(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m12301c(str);
                return this;
            }

            /* renamed from: c */
            public final zza m12285c(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m12303b(str);
                return this;
            }

            /* renamed from: p */
            public final String m12284p() {
                return ((zzb) this.f28072b).m12300m();
            }

            /* renamed from: q */
            public final List<zzh> m12283q() {
                return Collections.unmodifiableList(((zzb) this.f28072b).m12299n());
            }

            /* renamed from: r */
            public final String m12282r() {
                return ((zzb) this.f28072b).m12298o();
            }

            /* renamed from: s */
            public final zza m12281s() {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m12297p();
                return this;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.zzent$zzb$zzb  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzb.class */
        public static final class C10499zzb extends zzejz<C10499zzb, zza> implements zzell {
            public static volatile zzelw<C10499zzb> zzel;
            public static final C10499zzb zzirl;
            public int zzdw;
            public String zzirk = "";

            /* renamed from: com.google.android.gms.internal.ads.zzent$zzb$zzb$zza */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzb$zza.class */
            public static final class zza extends zzejz.zzb<C10499zzb, zza> implements zzell {
                public zza() {
                    super(C10499zzb.zzirl);
                }

                public /* synthetic */ zza(la0 la0Var) {
                    this();
                }

                /* renamed from: a */
                public final zza m12276a(String str) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((C10499zzb) this.f28072b).m12279a(str);
                    return this;
                }
            }

            static {
                C10499zzb zzbVar = new C10499zzb();
                zzirl = zzbVar;
                zzejz.m12401a(C10499zzb.class, zzbVar);
            }

            /* renamed from: m */
            public static zza m12278m() {
                return zzirl.m12399b();
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                switch (la0.f13948a[i - 1]) {
                    case 1:
                        return new C10499zzb();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzejz.m12403a(zzirl, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zzdw", "zzirk"});
                    case 4:
                        return zzirl;
                    case 5:
                        zzelw<C10499zzb> zzelwVar = zzel;
                        zzelw<C10499zzb> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (C10499zzb.class) {
                                try {
                                    zzelw<C10499zzb> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zzirl);
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

            /* renamed from: a */
            public final void m12279a(String str) {
                str.getClass();
                this.zzdw |= 1;
                this.zzirk = str;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzc.class */
        public static final class zzc extends zzejz<zzc, zza> implements zzell {
            public static volatile zzelw<zzc> zzel;
            public static final zzc zzirn;
            public int zzdw;
            public zzeip zzhzi;
            public byte zziqh = (byte) 2;
            public zzeip zzirm;

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzc$zza.class */
            public static final class zza extends zzejz.zzb<zzc, zza> implements zzell {
                public zza() {
                    super(zzc.zzirn);
                }

                public /* synthetic */ zza(la0 la0Var) {
                    this();
                }

                /* renamed from: a */
                public final zza m12269a(zzeip zzeipVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzc) this.f28072b).m12273b(zzeipVar);
                    return this;
                }

                /* renamed from: b */
                public final zza m12268b(zzeip zzeipVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzc) this.f28072b).m12275a(zzeipVar);
                    return this;
                }
            }

            static {
                zzc zzcVar = new zzc();
                zzirn = zzcVar;
                zzejz.m12401a(zzc.class, zzcVar);
            }

            public zzc() {
                zzeip zzeipVar = zzeip.zzier;
                this.zzirm = zzeipVar;
                this.zzhzi = zzeipVar;
            }

            /* renamed from: m */
            public static zza m12271m() {
                return zzirn.m12399b();
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                int i2 = 1;
                switch (la0.f13948a[i - 1]) {
                    case 1:
                        return new zzc();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzejz.m12403a(zzirn, "\u0001\u0002��\u0001\u0001\u0002\u0002����\u0001\u0001ᔊ��\u0002ည\u0001", new Object[]{"zzdw", "zzirm", "zzhzi"});
                    case 4:
                        return zzirn;
                    case 5:
                        zzelw<zzc> zzelwVar = zzel;
                        zzelw<zzc> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (zzc.class) {
                                try {
                                    zzelw<zzc> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zzirn);
                                        zzel = zzelwVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzelwVar2;
                    case 6:
                        return Byte.valueOf(this.zziqh);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zziqh = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            /* renamed from: a */
            public final void m12275a(zzeip zzeipVar) {
                zzeipVar.getClass();
                this.zzdw |= 2;
                this.zzhzi = zzeipVar;
            }

            /* renamed from: b */
            public final void m12273b(zzeip zzeipVar) {
                zzeipVar.getClass();
                this.zzdw |= 1;
                this.zzirm = zzeipVar;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzd.class */
        public static final class zzd extends zzejz<zzd, zza> implements zzell {
            public static volatile zzelw<zzd> zzel;
            public static final zzd zzirt;
            public int zzdw;
            public C10500zzb zziro;
            public zzeip zzirq;
            public zzeip zzirr;
            public int zzirs;
            public byte zziqh = (byte) 2;
            public zzekk<zzc> zzirp = zzejz.m12394l();

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzd$zza.class */
            public static final class zza extends zzejz.zzb<zzd, zza> implements zzell {
                public zza() {
                    super(zzd.zzirt);
                }

                public /* synthetic */ zza(la0 la0Var) {
                    this();
                }

                /* renamed from: a */
                public final zza m12263a(zzc zzcVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzd) this.f28072b).m12267a(zzcVar);
                    return this;
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.zzent$zzb$zzd$zzb  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzd$zzb.class */
            public static final class C10500zzb extends zzejz<C10500zzb, zza> implements zzell {
                public static volatile zzelw<C10500zzb> zzel;
                public static final C10500zzb zzirx;
                public int zzdw;
                public zzeip zziru;
                public zzeip zzirv;
                public zzeip zzirw;

                /* renamed from: com.google.android.gms.internal.ads.zzent$zzb$zzd$zzb$zza */
                /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzd$zzb$zza.class */
                public static final class zza extends zzejz.zzb<C10500zzb, zza> implements zzell {
                    public zza() {
                        super(C10500zzb.zzirx);
                    }

                    public /* synthetic */ zza(la0 la0Var) {
                        this();
                    }
                }

                static {
                    C10500zzb zzbVar = new C10500zzb();
                    zzirx = zzbVar;
                    zzejz.m12401a(C10500zzb.class, zzbVar);
                }

                public C10500zzb() {
                    zzeip zzeipVar = zzeip.zzier;
                    this.zziru = zzeipVar;
                    this.zzirv = zzeipVar;
                    this.zzirw = zzeipVar;
                }

                @Override // com.google.android.gms.internal.ads.zzejz
                /* renamed from: a */
                public final Object mo11212a(int i, Object obj, Object obj2) {
                    switch (la0.f13948a[i - 1]) {
                        case 1:
                            return new C10500zzb();
                        case 2:
                            return new zza(null);
                        case 3:
                            return zzejz.m12403a(zzirx, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ည��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdw", "zziru", "zzirv", "zzirw"});
                        case 4:
                            return zzirx;
                        case 5:
                            zzelw<C10500zzb> zzelwVar = zzel;
                            zzelw<C10500zzb> zzelwVar2 = zzelwVar;
                            if (zzelwVar == null) {
                                synchronized (C10500zzb.class) {
                                    try {
                                        zzelw<C10500zzb> zzelwVar3 = zzel;
                                        zzelwVar2 = zzelwVar3;
                                        if (zzelwVar3 == null) {
                                            zzelwVar2 = new zzejz.zza<>(zzirx);
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
            }

            static {
                zzd zzdVar = new zzd();
                zzirt = zzdVar;
                zzejz.m12401a(zzd.class, zzdVar);
            }

            public zzd() {
                zzeip zzeipVar = zzeip.zzier;
                this.zzirq = zzeipVar;
                this.zzirr = zzeipVar;
            }

            /* renamed from: m */
            public static zza m12265m() {
                return zzirt.m12399b();
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                int i2 = 1;
                switch (la0.f13948a[i - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzejz.m12403a(zzirt, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzdw", "zziro", "zzirp", zzc.class, "zzirq", "zzirr", "zzirs"});
                    case 4:
                        return zzirt;
                    case 5:
                        zzelw<zzd> zzelwVar = zzel;
                        zzelw<zzd> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (zzd.class) {
                                try {
                                    zzelw<zzd> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zzirt);
                                        zzel = zzelwVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzelwVar2;
                    case 6:
                        return Byte.valueOf(this.zziqh);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zziqh = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            /* renamed from: a */
            public final void m12267a(zzc zzcVar) {
                zzcVar.getClass();
                zzekk<zzc> zzekkVar = this.zzirp;
                if (!zzekkVar.mo12360w()) {
                    this.zzirp = zzejz.m12404a(zzekkVar);
                }
                this.zzirp.add(zzcVar);
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zze.class */
        public static final class zze extends zzejz<zze, zza> implements zzell {
            public static volatile zzelw<zze> zzel;
            public static final zze zzisa;
            public int zzdw;
            public byte zziqh = (byte) 2;
            public zzekk<zzc> zzirp = zzejz.m12394l();
            public zzeip zzirq;
            public zzeip zzirr;
            public int zzirs;
            public C10501zzb zziry;
            public zzeip zzirz;

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zze$zza.class */
            public static final class zza extends zzejz.zzb<zze, zza> implements zzell {
                public zza() {
                    super(zze.zzisa);
                }

                public /* synthetic */ zza(la0 la0Var) {
                    this();
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.zzent$zzb$zze$zzb  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zze$zzb.class */
            public static final class C10501zzb extends zzejz<C10501zzb, zza> implements zzell {
                public static volatile zzelw<C10501zzb> zzel;
                public static final C10501zzb zzisd;
                public int zzdw;
                public zzeip zzirw;
                public int zzisb;
                public zzeip zzisc;

                /* renamed from: com.google.android.gms.internal.ads.zzent$zzb$zze$zzb$zza */
                /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zze$zzb$zza.class */
                public static final class zza extends zzejz.zzb<C10501zzb, zza> implements zzell {
                    public zza() {
                        super(C10501zzb.zzisd);
                    }

                    public /* synthetic */ zza(la0 la0Var) {
                        this();
                    }
                }

                static {
                    C10501zzb zzbVar = new C10501zzb();
                    zzisd = zzbVar;
                    zzejz.m12401a(C10501zzb.class, zzbVar);
                }

                public C10501zzb() {
                    zzeip zzeipVar = zzeip.zzier;
                    this.zzisc = zzeipVar;
                    this.zzirw = zzeipVar;
                }

                @Override // com.google.android.gms.internal.ads.zzejz
                /* renamed from: a */
                public final Object mo11212a(int i, Object obj, Object obj2) {
                    switch (la0.f13948a[i - 1]) {
                        case 1:
                            return new C10501zzb();
                        case 2:
                            return new zza(null);
                        case 3:
                            return zzejz.m12403a(zzisd, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdw", "zzisb", "zzisc", "zzirw"});
                        case 4:
                            return zzisd;
                        case 5:
                            zzelw<C10501zzb> zzelwVar = zzel;
                            zzelw<C10501zzb> zzelwVar2 = zzelwVar;
                            if (zzelwVar == null) {
                                synchronized (C10501zzb.class) {
                                    try {
                                        zzelw<C10501zzb> zzelwVar3 = zzel;
                                        zzelwVar2 = zzelwVar3;
                                        if (zzelwVar3 == null) {
                                            zzelwVar2 = new zzejz.zza<>(zzisd);
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
            }

            static {
                zze zzeVar = new zze();
                zzisa = zzeVar;
                zzejz.m12401a(zze.class, zzeVar);
            }

            public zze() {
                zzeip zzeipVar = zzeip.zzier;
                this.zzirq = zzeipVar;
                this.zzirr = zzeipVar;
                this.zzirz = zzeipVar;
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                int i2 = 1;
                switch (la0.f13948a[i - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzejz.m12403a(zzisa, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzdw", "zziry", "zzirp", zzc.class, "zzirq", "zzirr", "zzirs", "zzirz"});
                    case 4:
                        return zzisa;
                    case 5:
                        zzelw<zze> zzelwVar = zzel;
                        zzelw<zze> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (zze.class) {
                                try {
                                    zzelw<zze> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zzisa);
                                        zzel = zzelwVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzelwVar2;
                    case 6:
                        return Byte.valueOf(this.zziqh);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zziqh = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzf.class */
        public static final class zzf extends zzejz<zzf, zza> implements zzell {
            public static volatile zzelw<zzf> zzel;
            public static final zzf zzisg;
            public int zzbzr;
            public int zzdw;
            public String zzise = "";
            public zzeip zzisf = zzeip.zzier;

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzf$zza.class */
            public static final class zza extends zzejz.zzb<zzf, zza> implements zzell {
                public zza() {
                    super(zzf.zzisg);
                }

                public /* synthetic */ zza(la0 la0Var) {
                    this();
                }

                /* renamed from: a */
                public final zza m12251a(zzeip zzeipVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzf) this.f28072b).m12259a(zzeipVar);
                    return this;
                }

                /* renamed from: a */
                public final zza m12250a(EnumC10502zzb zzbVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzf) this.f28072b).m12258a(zzbVar);
                    return this;
                }

                /* renamed from: a */
                public final zza m12249a(String str) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzf) this.f28072b).m12254a(str);
                    return this;
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.zzent$zzb$zzf$zzb  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzf$zzb.class */
            public enum EnumC10502zzb implements zzeke {
                TYPE_UNKNOWN(0),
                TYPE_CREATIVE(1);
                
                public static final zzekd<EnumC10502zzb> zzes = new oa0();
                public final int value;

                EnumC10502zzb(int i) {
                    this.value = i;
                }

                public static EnumC10502zzb zzhu(int i) {
                    if (i == 0) {
                        return TYPE_UNKNOWN;
                    }
                    if (i != 1) {
                        return null;
                    }
                    return TYPE_CREATIVE;
                }

                public static zzekg zzw() {
                    return pa0.f14420a;
                }

                @Override // java.lang.Enum
                public final String toString() {
                    return "<" + EnumC10502zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
                }

                @Override // com.google.android.gms.internal.ads.zzeke
                public final int zzv() {
                    return this.value;
                }
            }

            static {
                zzf zzfVar = new zzf();
                zzisg = zzfVar;
                zzejz.m12401a(zzf.class, zzfVar);
            }

            /* renamed from: m */
            public static zza m12253m() {
                return zzisg.m12399b();
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                switch (la0.f13948a[i - 1]) {
                    case 1:
                        return new zzf();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzejz.m12403a(zzisg, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဈ\u0001\u0003ည\u0002", new Object[]{"zzdw", "zzbzr", EnumC10502zzb.zzw(), "zzise", "zzisf"});
                    case 4:
                        return zzisg;
                    case 5:
                        zzelw<zzf> zzelwVar = zzel;
                        zzelw<zzf> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (zzf.class) {
                                try {
                                    zzelw<zzf> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zzisg);
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

            /* renamed from: a */
            public final void m12259a(zzeip zzeipVar) {
                zzeipVar.getClass();
                this.zzdw |= 4;
                this.zzisf = zzeipVar;
            }

            /* renamed from: a */
            public final void m12258a(EnumC10502zzb zzbVar) {
                this.zzbzr = zzbVar.zzv();
                this.zzdw |= 1;
            }

            /* renamed from: a */
            public final void m12254a(String str) {
                str.getClass();
                this.zzdw |= 2;
                this.zzise = str;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzg.class */
        public enum zzg implements zzeke {
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
            
            public static final zzekd<zzg> zzes = new sa0();
            public final int value;

            zzg(int i) {
                this.value = i;
            }

            public static zzg zzhv(int i) {
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

            public static zzekg zzw() {
                return ra0.f14887a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzg.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzeke
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzh.class */
        public static final class zzh extends zzejz<zzh, C10503zzb> implements zzell {
            public static volatile zzelw<zzh> zzel;
            public static final zzh zziti;
            public int zzdw;
            public int zzita;
            public zzd zzitb;
            public zze zzitc;
            public int zzitd;
            public int zzitg;
            public byte zziqh = (byte) 2;
            public String zziqk = "";
            public zzekf zzite = zzejz.m12396f();
            public String zzitf = "";
            public zzekk<String> zzith = zzejz.m12394l();

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzh$zza.class */
            public enum zza implements zzeke {
                AD_RESOURCE_UNKNOWN(0),
                AD_RESOURCE_CREATIVE(1),
                AD_RESOURCE_POST_CLICK(2),
                AD_RESOURCE_AUTO_CLICK_DESTINATION(3);
                
                public static final zzekd<zza> zzes = new ua0();
                public final int value;

                zza(int i) {
                    this.value = i;
                }

                public static zza zzhw(int i) {
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

                public static zzekg zzw() {
                    return ta0.f15371a;
                }

                @Override // java.lang.Enum
                public final String toString() {
                    return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
                }

                @Override // com.google.android.gms.internal.ads.zzeke
                public final int zzv() {
                    return this.value;
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.zzent$zzb$zzh$zzb  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzh$zzb.class */
            public static final class C10503zzb extends zzejz.zzb<zzh, C10503zzb> implements zzell {
                public C10503zzb() {
                    super(zzh.zziti);
                }

                public /* synthetic */ C10503zzb(la0 la0Var) {
                    this();
                }

                /* renamed from: a */
                public final C10503zzb m12234a(int i) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzh) this.f28072b).m12241b(i);
                    return this;
                }

                /* renamed from: a */
                public final C10503zzb m12233a(zzd zzdVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzh) this.f28072b).m12248a(zzdVar);
                    return this;
                }

                /* renamed from: a */
                public final C10503zzb m12232a(zza zzaVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzh) this.f28072b).m12247a(zzaVar);
                    return this;
                }

                /* renamed from: a */
                public final C10503zzb m12231a(String str) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzh) this.f28072b).m12242a(str);
                    return this;
                }

                /* renamed from: b */
                public final C10503zzb m12230b(String str) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzh) this.f28072b).m12239b(str);
                    return this;
                }
            }

            static {
                zzh zzhVar = new zzh();
                zziti = zzhVar;
                zzejz.m12401a(zzh.class, zzhVar);
            }

            /* renamed from: o */
            public static C10503zzb m12236o() {
                return zziti.m12399b();
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                int i2 = 1;
                switch (la0.f13948a[i - 1]) {
                    case 1:
                        return new zzh();
                    case 2:
                        return new C10503zzb(null);
                    case 3:
                        return zzejz.m12403a(zziti, "\u0001\t��\u0001\u0001\t\t��\u0002\u0003\u0001ᔄ��\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\bဌ\u0006\t\u001a", new Object[]{"zzdw", "zzita", "zziqk", "zzitb", "zzitc", "zzitd", "zzite", "zzitf", "zzitg", zza.zzw(), "zzith"});
                    case 4:
                        return zziti;
                    case 5:
                        zzelw<zzh> zzelwVar = zzel;
                        zzelw<zzh> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (zzh.class) {
                                try {
                                    zzelw<zzh> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zziti);
                                        zzel = zzelwVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzelwVar2;
                    case 6:
                        return Byte.valueOf(this.zziqh);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zziqh = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            /* renamed from: a */
            public final void m12248a(zzd zzdVar) {
                zzdVar.getClass();
                this.zzitb = zzdVar;
                this.zzdw |= 4;
            }

            /* renamed from: a */
            public final void m12247a(zza zzaVar) {
                this.zzitg = zzaVar.zzv();
                this.zzdw |= 64;
            }

            /* renamed from: a */
            public final void m12242a(String str) {
                str.getClass();
                this.zzdw |= 2;
                this.zziqk = str;
            }

            /* renamed from: b */
            public final void m12241b(int i) {
                this.zzdw |= 1;
                this.zzita = i;
            }

            /* renamed from: b */
            public final void m12239b(String str) {
                str.getClass();
                zzekk<String> zzekkVar = this.zzith;
                if (!zzekkVar.mo12360w()) {
                    this.zzith = zzejz.m12404a(zzekkVar);
                }
                this.zzith.add(str);
            }

            /* renamed from: m */
            public final String m12238m() {
                return this.zziqk;
            }

            /* renamed from: n */
            public final int m12237n() {
                return this.zzith.size();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzi.class */
        public static final class zzi extends zzejz<zzi, zza> implements zzell {
            public static volatile zzelw<zzi> zzel;
            public static final zzi zzitm;
            public int zzdw;
            public String zzitj = "";
            public long zzitk;
            public boolean zzitl;

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzent$zzb$zzi$zza.class */
            public static final class zza extends zzejz.zzb<zzi, zza> implements zzell {
                public zza() {
                    super(zzi.zzitm);
                }

                public /* synthetic */ zza(la0 la0Var) {
                    this();
                }

                /* renamed from: a */
                public final zza m12221a(long j) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzi) this.f28072b).m12229a(j);
                    return this;
                }

                /* renamed from: a */
                public final zza m12220a(String str) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzi) this.f28072b).m12225a(str);
                    return this;
                }

                /* renamed from: a */
                public final zza m12219a(boolean z) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzi) this.f28072b).m12224a(z);
                    return this;
                }
            }

            static {
                zzi zziVar = new zzi();
                zzitm = zziVar;
                zzejz.m12401a(zzi.class, zziVar);
            }

            /* renamed from: m */
            public static zza m12223m() {
                return zzitm.m12399b();
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                switch (la0.f13948a[i - 1]) {
                    case 1:
                        return new zzi();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzejz.m12403a(zzitm, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဂ\u0001\u0003ဇ\u0002", new Object[]{"zzdw", "zzitj", "zzitk", "zzitl"});
                    case 4:
                        return zzitm;
                    case 5:
                        zzelw<zzi> zzelwVar = zzel;
                        zzelw<zzi> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (zzi.class) {
                                try {
                                    zzelw<zzi> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zzitm);
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

            /* renamed from: a */
            public final void m12229a(long j) {
                this.zzdw |= 2;
                this.zzitk = j;
            }

            /* renamed from: a */
            public final void m12225a(String str) {
                str.getClass();
                this.zzdw |= 1;
                this.zzitj = str;
            }

            /* renamed from: a */
            public final void m12224a(boolean z) {
                this.zzdw |= 4;
                this.zzitl = z;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzirj = zzbVar;
            zzejz.m12401a(zzb.class, zzbVar);
        }

        /* renamed from: q */
        public static zza m12296q() {
            return zzirj.m12399b();
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            int i2 = 1;
            switch (la0.f13948a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzirj, "\u0001\u0012��\u0001\u0001\u0015\u0012��\u0004\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ��\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0011ဉ\r\u0014\u001a\u0015\u001a", new Object[]{"zzdw", "zziqk", "zziqv", "zziqw", "zziqy", zzh.class, "zzirb", "zzirc", "zzird", "zzire", "zzirf", "zzbzr", zzg.zzw(), "zziqu", zza.zzc.zzw(), "zziqx", "zziqz", "zzira", "zziqd", "zzirg", "zzirh", "zziri"});
                case 4:
                    return zzirj;
                case 5:
                    zzelw<zzb> zzelwVar = zzel;
                    zzelw<zzb> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzelw<zzb> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzirj);
                                    zzel = zzelwVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzelwVar2;
                case 6:
                    return Byte.valueOf(this.zziqh);
                case 7:
                    if (obj == null) {
                        i2 = 0;
                    }
                    this.zziqh = (byte) i2;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m12321a(C10499zzb zzbVar) {
            zzbVar.getClass();
            this.zziqx = zzbVar;
            this.zzdw |= 32;
        }

        /* renamed from: a */
        public final void m12320a(zzf zzfVar) {
            zzfVar.getClass();
            this.zzira = zzfVar;
            this.zzdw |= 128;
        }

        /* renamed from: a */
        public final void m12319a(zzg zzgVar) {
            this.zzbzr = zzgVar.zzv();
            this.zzdw |= 1;
        }

        /* renamed from: a */
        public final void m12318a(zzh zzhVar) {
            zzhVar.getClass();
            zzekk<zzh> zzekkVar = this.zziqy;
            if (!zzekkVar.mo12360w()) {
                this.zziqy = zzejz.m12404a(zzekkVar);
            }
            this.zziqy.add(zzhVar);
        }

        /* renamed from: a */
        public final void m12317a(zzi zziVar) {
            zziVar.getClass();
            this.zzirg = zziVar;
            this.zzdw |= 8192;
        }

        /* renamed from: a */
        public final void m12308a(Iterable<String> iterable) {
            zzekk<String> zzekkVar = this.zzirh;
            if (!zzekkVar.mo12360w()) {
                this.zzirh = zzejz.m12404a(zzekkVar);
            }
            zzeif.m12534a(iterable, this.zzirh);
        }

        /* renamed from: a */
        public final void m12307a(String str) {
            str.getClass();
            this.zzdw |= 4;
            this.zziqk = str;
        }

        /* renamed from: b */
        public final void m12304b(Iterable<String> iterable) {
            zzekk<String> zzekkVar = this.zziri;
            if (!zzekkVar.mo12360w()) {
                this.zziri = zzejz.m12404a(zzekkVar);
            }
            zzeif.m12534a(iterable, this.zziri);
        }

        /* renamed from: b */
        public final void m12303b(String str) {
            str.getClass();
            this.zzdw |= 64;
            this.zziqz = str;
        }

        /* renamed from: c */
        public final void m12301c(String str) {
            str.getClass();
            this.zzdw |= 8;
            this.zziqv = str;
        }

        /* renamed from: m */
        public final String m12300m() {
            return this.zziqk;
        }

        /* renamed from: n */
        public final List<zzh> m12299n() {
            return this.zziqy;
        }

        /* renamed from: o */
        public final String m12298o() {
            return this.zziqz;
        }

        /* renamed from: p */
        public final void m12297p() {
            this.zzdw &= -65;
            this.zziqz = zzirj.zziqz;
        }
    }
}
