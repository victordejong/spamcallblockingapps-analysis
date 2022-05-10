package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.ah0;
import p131c.p161d.p170b.p224d.p252g.p253a.bh0;
import p131c.p161d.p170b.p224d.p252g.p253a.eh0;
import p131c.p161d.p170b.p224d.p252g.p253a.fh0;
import p131c.p161d.p170b.p224d.p252g.p253a.gh0;
import p131c.p161d.p170b.p224d.p252g.p253a.hh0;
import p131c.p161d.p170b.p224d.p252g.p253a.ih0;
import p131c.p161d.p170b.p224d.p252g.p253a.jh0;
import p131c.p161d.p170b.p224d.p252g.p253a.kh0;
import p131c.p161d.p170b.p224d.p252g.p253a.lh0;
import p131c.p161d.p170b.p224d.p252g.p253a.mh0;
import p131c.p161d.p170b.p224d.p252g.p253a.tg0;
import p131c.p161d.p170b.p224d.p252g.p253a.ug0;
import p131c.p161d.p170b.p224d.p252g.p253a.vg0;
import p131c.p161d.p170b.p224d.p252g.p253a.wg0;
import p131c.p161d.p170b.p224d.p252g.p253a.xg0;
import p131c.p161d.p170b.p224d.p252g.p253a.yg0;
import p131c.p161d.p170b.p224d.p252g.p253a.zg0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua.class */
public final class zzua {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zza.class */
    public static final class zza extends zzejz<zza, zzb> implements zzell {
        public static final zza zzbyp;
        public static volatile zzelw<zza> zzel;
        public int zzbye;
        public zzd zzbyg;
        public zze zzbyh;
        public zzf zzbyj;
        public zzp zzbyk;
        public zzn zzbyl;
        public zzk zzbym;
        public zzl zzbyn;
        public int zzdw;
        public int zzbyf = 1000;
        public zzekk<zzc> zzbyi = zzejz.m12394l();
        public zzekk<zzv> zzbyo = zzejz.m12394l();

        /* renamed from: com.google.android.gms.internal.ads.zzua$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zza$zza.class */
        public enum EnumC10505zza implements zzeke {
            AD_INITIATER_UNSPECIFIED(0),
            BANNER(1),
            DFP_BANNER(2),
            INTERSTITIAL(3),
            DFP_INTERSTITIAL(4),
            NATIVE_EXPRESS(5),
            AD_LOADER(6),
            REWARD_BASED_VIDEO_AD(7),
            BANNER_SEARCH_ADS(8),
            GOOGLE_MOBILE_ADS_SDK_ADAPTER(9),
            APP_OPEN(10);
            
            public static final zzekd<EnumC10505zza> zzes = new ug0();
            public final int value;

            EnumC10505zza(int i) {
                this.value = i;
            }

            public static EnumC10505zza zzbz(int i) {
                switch (i) {
                    case 0:
                        return AD_INITIATER_UNSPECIFIED;
                    case 1:
                        return BANNER;
                    case 2:
                        return DFP_BANNER;
                    case 3:
                        return INTERSTITIAL;
                    case 4:
                        return DFP_INTERSTITIAL;
                    case 5:
                        return NATIVE_EXPRESS;
                    case 6:
                        return AD_LOADER;
                    case 7:
                        return REWARD_BASED_VIDEO_AD;
                    case 8:
                        return BANNER_SEARCH_ADS;
                    case 9:
                        return GOOGLE_MOBILE_ADS_SDK_ADAPTER;
                    case 10:
                        return APP_OPEN;
                    default:
                        return null;
                }
            }

            public static zzekg zzw() {
                return vg0.f15861a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + EnumC10505zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzeke
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zza$zzb.class */
        public static final class zzb extends zzejz.zzb<zza, zzb> implements zzell {
            public zzb() {
                super(zza.zzbyp);
            }

            public /* synthetic */ zzb(tg0 tg0Var) {
                this();
            }

            /* renamed from: a */
            public final zzb m11408a(EnumC10505zza zzaVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m11415a(zzaVar);
                return this;
            }

            /* renamed from: a */
            public final zzb m11407a(zze.zza zzaVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m11412a((zze) ((zzejz) zzaVar.mo12342K()));
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zzbyp = zzaVar;
            zzejz.m12401a(zza.class, zzaVar);
        }

        /* renamed from: n */
        public static zza m11410n() {
            return zzbyp;
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzejz.m12403a(zzbyp, "\u0001\u000b��\u0001\u0007\u0011\u000b��\u0002��\u0007ဌ��\bဌ\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzdw", "zzbye", EnumC10505zza.zzw(), "zzbyf", zzuk.zzw(), "zzbyg", "zzbyh", "zzbyi", zzc.class, "zzbyj", "zzbyk", "zzbyl", "zzbym", "zzbyn", "zzbyo", zzv.class});
                case 4:
                    return zzbyp;
                case 5:
                    zzelw<zza> zzelwVar = zzel;
                    zzelw<zza> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzelw<zza> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzbyp);
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
        public final void m11415a(EnumC10505zza zzaVar) {
            this.zzbye = zzaVar.zzv();
            this.zzdw |= 1;
        }

        /* renamed from: a */
        public final void m11412a(zze zzeVar) {
            zzeVar.getClass();
            this.zzbyh = zzeVar;
            this.zzdw |= 8;
        }

        /* renamed from: m */
        public final zze m11411m() {
            zze zzeVar = this.zzbyh;
            zze zzeVar2 = zzeVar;
            if (zzeVar == null) {
                zzeVar2 = zze.m11353m();
            }
            return zzeVar2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzaa.class */
    public static final class zzaa extends zzejz<zzaa, zza> implements zzell {
        public static final zzaa zzcgl;
        public static volatile zzelw<zzaa> zzel;
        public int zzccm = 1000;
        public zzx zzcfx;
        public zzt zzcfy;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzaa$zza.class */
        public static final class zza extends zzejz.zzb<zzaa, zza> implements zzell {
            public zza() {
                super(zzaa.zzcgl);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzaa zzaaVar = new zzaa();
            zzcgl = zzaaVar;
            zzejz.m12401a(zzaa.class, zzaaVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzaa();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcgl, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdw", "zzccm", zzuk.zzw(), "zzcfx", "zzcfy"});
                case 4:
                    return zzcgl;
                case 5:
                    zzelw<zzaa> zzelwVar = zzel;
                    zzelw<zzaa> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzaa.class) {
                            try {
                                zzelw<zzaa> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcgl);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzab.class */
    public static final class zzab extends zzejz<zzab, zza> implements zzell {
        public static final zzab zzcgn;
        public static volatile zzelw<zzab> zzel;
        public int zzccm = 1000;
        public int zzcfn;
        public int zzcfo;
        public zzx zzcfx;
        public int zzcgj;
        public long zzcgm;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzab$zza.class */
        public static final class zza extends zzejz.zzb<zzab, zza> implements zzell {
            public zza() {
                super(zzab.zzcgn);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzab zzabVar = new zzab();
            zzcgn = zzabVar;
            zzejz.m12401a(zzab.class, zzabVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzab();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcgn, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဌ��\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzdw", "zzccm", zzuk.zzw(), "zzcfx", "zzcfn", "zzcfo", "zzcgj", "zzcgm"});
                case 4:
                    return zzcgn;
                case 5:
                    zzelw<zzab> zzelwVar = zzel;
                    zzelw<zzab> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzab.class) {
                            try {
                                zzelw<zzab> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcgn);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzac.class */
    public static final class zzac extends zzejz<zzac, zza> implements zzell {
        public static final zzac zzcgo;
        public static volatile zzelw<zzac> zzel;
        public int zzccm = 1000;
        public zzx zzcfx;
        public zzt zzcfy;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzac$zza.class */
        public static final class zza extends zzejz.zzb<zzac, zza> implements zzell {
            public zza() {
                super(zzac.zzcgo);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzac zzacVar = new zzac();
            zzcgo = zzacVar;
            zzejz.m12401a(zzac.class, zzacVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzac();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcgo, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdw", "zzccm", zzuk.zzw(), "zzcfx", "zzcfy"});
                case 4:
                    return zzcgo;
                case 5:
                    zzelw<zzac> zzelwVar = zzel;
                    zzelw<zzac> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzac.class) {
                            try {
                                zzelw<zzac> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcgo);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzad.class */
    public static final class zzad extends zzejz<zzad, zza> implements zzell {
        public static final zzad zzcgp;
        public static volatile zzelw<zzad> zzel;
        public int zzccm = 1000;
        public zzx zzcfx;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzad$zza.class */
        public static final class zza extends zzejz.zzb<zzad, zza> implements zzell {
            public zza() {
                super(zzad.zzcgp);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzad zzadVar = new zzad();
            zzcgp = zzadVar;
            zzejz.m12401a(zzad.class, zzadVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzad();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcgp, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzdw", "zzccm", zzuk.zzw(), "zzcfx"});
                case 4:
                    return zzcgp;
                case 5:
                    zzelw<zzad> zzelwVar = zzel;
                    zzelw<zzad> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzad.class) {
                            try {
                                zzelw<zzad> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcgp);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzae.class */
    public static final class zzae extends zzejz<zzae, zza> implements zzell {
        public static final zzae zzcgs;
        public static volatile zzelw<zzae> zzel;
        public boolean zzcgq;
        public int zzcgr;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzae$zza.class */
        public static final class zza extends zzejz.zzb<zzae, zza> implements zzell {
            public zza() {
                super(zzae.zzcgs);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m11395a(int i) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzae) this.f28072b).m11399b(i);
                return this;
            }

            /* renamed from: a */
            public final zza m11394a(boolean z) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzae) this.f28072b).m11400a(z);
                return this;
            }

            /* renamed from: p */
            public final boolean m11393p() {
                return ((zzae) this.f28072b).m11398m();
            }
        }

        static {
            zzae zzaeVar = new zzae();
            zzcgs = zzaeVar;
            zzejz.m12401a(zzae.class, zzaeVar);
        }

        /* renamed from: n */
        public static zza m11397n() {
            return zzcgs.m12399b();
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzae();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcgs, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002င\u0001", new Object[]{"zzdw", "zzcgq", "zzcgr"});
                case 4:
                    return zzcgs;
                case 5:
                    zzelw<zzae> zzelwVar = zzel;
                    zzelw<zzae> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzae.class) {
                            try {
                                zzelw<zzae> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcgs);
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
        public final void m11400a(boolean z) {
            this.zzdw |= 1;
            this.zzcgq = z;
        }

        /* renamed from: b */
        public final void m11399b(int i) {
            this.zzdw |= 2;
            this.zzcgr = i;
        }

        /* renamed from: m */
        public final boolean m11398m() {
            return this.zzcgq;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzb.class */
    public static final class zzb extends zzejz<zzb, C10507zzb> implements zzell {
        public static final zzb zzbzh;
        public static volatile zzelw<zzb> zzel;
        public zzekk<zza> zzbzg = zzejz.m12394l();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzb$zza.class */
        public static final class zza extends zzejz<zza, C10506zza> implements zzell {
            public static final zza zzbzf;
            public static volatile zzelw<zza> zzel;
            public int zzbzc;
            public zzd zzbzd;
            public zze zzbze;
            public int zzdw;

            /* renamed from: com.google.android.gms.internal.ads.zzua$zzb$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzb$zza$zza.class */
            public static final class C10506zza extends zzejz.zzb<zza, C10506zza> implements zzell {
                public C10506zza() {
                    super(zza.zzbzf);
                }

                public /* synthetic */ C10506zza(tg0 tg0Var) {
                    this();
                }

                /* renamed from: a */
                public final C10506zza m11380a(zzc zzcVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11385a(zzcVar);
                    return this;
                }

                /* renamed from: a */
                public final C10506zza m11379a(zzd.zza zzaVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11384a((zzd) ((zzejz) zzaVar.mo12342K()));
                    return this;
                }

                /* renamed from: a */
                public final C10506zza m11378a(zze.zza zzaVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11383a((zze) ((zzejz) zzaVar.mo12342K()));
                    return this;
                }
            }

            static {
                zza zzaVar = new zza();
                zzbzf = zzaVar;
                zzejz.m12401a(zza.class, zzaVar);
            }

            /* renamed from: m */
            public static C10506zza m11382m() {
                return zzbzf.m12399b();
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                switch (tg0.f15404a[i - 1]) {
                    case 1:
                        return new zza();
                    case 2:
                        return new C10506zza(null);
                    case 3:
                        return zzejz.m12403a(zzbzf, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdw", "zzbzc", zzc.zzw(), "zzbzd", "zzbze"});
                    case 4:
                        return zzbzf;
                    case 5:
                        zzelw<zza> zzelwVar = zzel;
                        zzelw<zza> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (zza.class) {
                                try {
                                    zzelw<zza> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zzbzf);
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
            public final void m11385a(zzc zzcVar) {
                this.zzbzc = zzcVar.zzv();
                this.zzdw |= 1;
            }

            /* renamed from: a */
            public final void m11384a(zzd zzdVar) {
                zzdVar.getClass();
                this.zzbzd = zzdVar;
                this.zzdw |= 2;
            }

            /* renamed from: a */
            public final void m11383a(zze zzeVar) {
                zzeVar.getClass();
                this.zzbze = zzeVar;
                this.zzdw |= 4;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.zzua$zzb$zzb  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzb$zzb.class */
        public static final class C10507zzb extends zzejz.zzb<zzb, C10507zzb> implements zzell {
            public C10507zzb() {
                super(zzb.zzbzh);
            }

            public /* synthetic */ C10507zzb(tg0 tg0Var) {
                this();
            }

            /* renamed from: a */
            public final C10507zzb m11377a(zza.C10506zza zzaVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzb) this.f28072b).m11392a((zza) ((zzejz) zzaVar.mo12342K()));
                return this;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzb$zzc.class */
        public enum zzc implements zzeke {
            UNSPECIFIED(0),
            IN_MEMORY(1);
            
            public static final zzekd<zzc> zzes = new wg0();
            public final int value;

            zzc(int i) {
                this.value = i;
            }

            public static zzc zzca(int i) {
                if (i == 0) {
                    return UNSPECIFIED;
                }
                if (i != 1) {
                    return null;
                }
                return IN_MEMORY;
            }

            public static zzekg zzw() {
                return xg0.f16044a;
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

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzb$zzd.class */
        public static final class zzd extends zzejz<zzd, zza> implements zzell {
            public static final zzd zzbzn;
            public static volatile zzelw<zzd> zzel;
            public boolean zzbzl;
            public int zzbzm;
            public int zzdw;

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzb$zzd$zza.class */
            public static final class zza extends zzejz.zzb<zzd, zza> implements zzell {
                public zza() {
                    super(zzd.zzbzn);
                }

                public /* synthetic */ zza(tg0 tg0Var) {
                    this();
                }

                /* renamed from: a */
                public final zza m11370a(int i) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzd) this.f28072b).m11373b(i);
                    return this;
                }

                /* renamed from: a */
                public final zza m11369a(boolean z) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zzd) this.f28072b).m11374a(z);
                    return this;
                }
            }

            static {
                zzd zzdVar = new zzd();
                zzbzn = zzdVar;
                zzejz.m12401a(zzd.class, zzdVar);
            }

            /* renamed from: m */
            public static zza m11372m() {
                return zzbzn.m12399b();
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                switch (tg0.f15404a[i - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzejz.m12403a(zzbzn, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002ဋ\u0001", new Object[]{"zzdw", "zzbzl", "zzbzm"});
                    case 4:
                        return zzbzn;
                    case 5:
                        zzelw<zzd> zzelwVar = zzel;
                        zzelw<zzd> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (zzd.class) {
                                try {
                                    zzelw<zzd> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zzbzn);
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
            public final void m11374a(boolean z) {
                this.zzdw |= 1;
                this.zzbzl = z;
            }

            /* renamed from: b */
            public final void m11373b(int i) {
                this.zzdw |= 2;
                this.zzbzm = i;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzb$zze.class */
        public static final class zze extends zzejz<zze, zza> implements zzell {
            public static final zze zzbzq;
            public static volatile zzelw<zze> zzel;
            public int zzbzm;
            public boolean zzbzo;
            public boolean zzbzp;
            public int zzdw;

            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzb$zze$zza.class */
            public static final class zza extends zzejz.zzb<zze, zza> implements zzell {
                public zza() {
                    super(zze.zzbzq);
                }

                public /* synthetic */ zza(tg0 tg0Var) {
                    this();
                }

                /* renamed from: a */
                public final zza m11360a(int i) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zze) this.f28072b).m11365b(i);
                    return this;
                }

                /* renamed from: a */
                public final zza m11359a(boolean z) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zze) this.f28072b).m11366a(z);
                    return this;
                }

                /* renamed from: b */
                public final zza m11358b(boolean z) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zze) this.f28072b).m11363b(z);
                    return this;
                }
            }

            static {
                zze zzeVar = new zze();
                zzbzq = zzeVar;
                zzejz.m12401a(zze.class, zzeVar);
            }

            /* renamed from: m */
            public static zza m11362m() {
                return zzbzq.m12399b();
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                switch (tg0.f15404a[i - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzejz.m12403a(zzbzq, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဇ��\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzdw", "zzbzo", "zzbzp", "zzbzm"});
                    case 4:
                        return zzbzq;
                    case 5:
                        zzelw<zze> zzelwVar = zzel;
                        zzelw<zze> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (zze.class) {
                                try {
                                    zzelw<zze> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zzbzq);
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
            public final void m11366a(boolean z) {
                this.zzdw |= 1;
                this.zzbzo = z;
            }

            /* renamed from: b */
            public final void m11365b(int i) {
                this.zzdw |= 4;
                this.zzbzm = i;
            }

            /* renamed from: b */
            public final void m11363b(boolean z) {
                this.zzdw |= 2;
                this.zzbzp = z;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzbzh = zzbVar;
            zzejz.m12401a(zzb.class, zzbVar);
        }

        /* renamed from: m */
        public static C10507zzb m11390m() {
            return zzbzh.m12399b();
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new C10507zzb(null);
                case 3:
                    return zzejz.m12403a(zzbzh, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzbzg", zza.class});
                case 4:
                    return zzbzh;
                case 5:
                    zzelw<zzb> zzelwVar = zzel;
                    zzelw<zzb> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzelw<zzb> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzbzh);
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
        public final void m11392a(zza zzaVar) {
            zzaVar.getClass();
            zzekk<zza> zzekkVar = this.zzbzg;
            if (!zzekkVar.mo12360w()) {
                this.zzbzg = zzejz.m12404a(zzekkVar);
            }
            this.zzbzg.add(zzaVar);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzc.class */
    public static final class zzc extends zzejz<zzc, zzb> implements zzell {
        public static final zzc zzbzt;
        public static volatile zzelw<zzc> zzel;
        public int zzbzr;
        public zzr zzbzs;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzc$zza.class */
        public enum zza implements zzeke {
            AD_FORMAT_TYPE_UNSPECIFIED(0),
            BANNER(1),
            INTERSTITIAL(2),
            NATIVE_EXPRESS(3),
            NATIVE_CONTENT(4),
            NATIVE_APP_INSTALL(5),
            NATIVE_CUSTOM_TEMPLATE(6),
            DFP_BANNER(7),
            DFP_INTERSTITIAL(8),
            REWARD_BASED_VIDEO_AD(9),
            BANNER_SEARCH_ADS(10);
            
            public static final zzekd<zza> zzes = new yg0();
            public final int value;

            zza(int i) {
                this.value = i;
            }

            public static zza zzce(int i) {
                switch (i) {
                    case 0:
                        return AD_FORMAT_TYPE_UNSPECIFIED;
                    case 1:
                        return BANNER;
                    case 2:
                        return INTERSTITIAL;
                    case 3:
                        return NATIVE_EXPRESS;
                    case 4:
                        return NATIVE_CONTENT;
                    case 5:
                        return NATIVE_APP_INSTALL;
                    case 6:
                        return NATIVE_CUSTOM_TEMPLATE;
                    case 7:
                        return DFP_BANNER;
                    case 8:
                        return DFP_INTERSTITIAL;
                    case 9:
                        return REWARD_BASED_VIDEO_AD;
                    case 10:
                        return BANNER_SEARCH_ADS;
                    default:
                        return null;
                }
            }

            public static zzekg zzw() {
                return zg0.f16453a;
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

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzc$zzb.class */
        public static final class zzb extends zzejz.zzb<zzc, zzb> implements zzell {
            public zzb() {
                super(zzc.zzbzt);
            }

            public /* synthetic */ zzb(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzbzt = zzcVar;
            zzejz.m12401a(zzc.class, zzcVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzejz.m12403a(zzbzt, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzdw", "zzbzr", zza.zzw(), "zzbzs"});
                case 4:
                    return zzbzt;
                case 5:
                    zzelw<zzc> zzelwVar = zzel;
                    zzelw<zzc> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzelw<zzc> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzbzt);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzd.class */
    public static final class zzd extends zzejz<zzd, zza> implements zzell {
        public static final zzd zzcaj;
        public static volatile zzelw<zzd> zzel;
        public String zzcag = "";
        public zzekk<zzc> zzcah = zzejz.m12394l();
        public int zzcai;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzd$zza.class */
        public static final class zza extends zzejz.zzb<zzd, zza> implements zzell {
            public zza() {
                super(zzd.zzcaj);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzcaj = zzdVar;
            zzejz.m12401a(zzd.class, zzdVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcaj, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001", new Object[]{"zzdw", "zzcag", "zzcah", zzc.class, "zzcai", zzuk.zzw()});
                case 4:
                    return zzcaj;
                case 5:
                    zzelw<zzd> zzelwVar = zzel;
                    zzelw<zzd> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzelw<zzd> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcaj);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zze.class */
    public static final class zze extends zzejz<zze, zza> implements zzell {
        public static final zze zzcap;
        public static volatile zzelw<zze> zzel;
        public String zzcak = "";
        public zzekk<zzc> zzcal = zzejz.m12394l();
        public int zzcam = 1000;
        public int zzcan = 1000;
        public int zzcao = 1000;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zze$zza.class */
        public static final class zza extends zzejz.zzb<zze, zza> implements zzell {
            public zza() {
                super(zze.zzcap);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m11351a(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zze) this.f28072b).m11354a(str);
                return this;
            }
        }

        static {
            zze zzeVar = new zze();
            zzcap = zzeVar;
            zzejz.m12401a(zze.class, zzeVar);
        }

        /* renamed from: m */
        public static zze m11353m() {
            return zzcap;
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcap, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001\u0004ဌ\u0002\u0005ဌ\u0003", new Object[]{"zzdw", "zzcak", "zzcal", zzc.class, "zzcam", zzuk.zzw(), "zzcan", zzuk.zzw(), "zzcao", zzuk.zzw()});
                case 4:
                    return zzcap;
                case 5:
                    zzelw<zze> zzelwVar = zzel;
                    zzelw<zze> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzelw<zze> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcap);
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
        public final void m11354a(String str) {
            str.getClass();
            this.zzdw |= 1;
            this.zzcak = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzf.class */
    public static final class zzf extends zzejz<zzf, zza> implements zzell {
        public static final zzf zzcaw;
        public static volatile zzelw<zzf> zzel;
        public int zzcaq;
        public zzt zzcar;
        public zzt zzcas;
        public zzt zzcat;
        public zzekk<zzt> zzcau = zzejz.m12394l();
        public int zzcav;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzf$zza.class */
        public static final class zza extends zzejz.zzb<zzf, zza> implements zzell {
            public zza() {
                super(zzf.zzcaw);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzcaw = zzfVar;
            zzejz.m12401a(zzf.class, zzfVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcaw, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zzdw", "zzcaq", "zzcar", "zzcas", "zzcat", "zzcau", zzt.class, "zzcav"});
                case 4:
                    return zzcaw;
                case 5:
                    zzelw<zzf> zzelwVar = zzel;
                    zzelw<zzf> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzelw<zzf> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcaw);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzg.class */
    public static final class zzg extends zzejz<zzg, zza> implements zzell {
        public static final zzg zzcbf;
        public static volatile zzelw<zzg> zzel;
        public zzt zzcay;
        public int zzcaz;
        public zzu zzcba;
        public int zzcbb;
        public int zzdw;
        public String zzcax = "";
        public int zzcbc = 1000;
        public int zzcbd = 1000;
        public int zzcbe = 1000;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzg$zza.class */
        public static final class zza extends zzejz.zzb<zzg, zza> implements zzell {
            public zza() {
                super(zzg.zzcbf);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m11343a(zzu zzuVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzg) this.f28072b).m11347a(zzuVar);
                return this;
            }

            /* renamed from: a */
            public final zza m11342a(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzg) this.f28072b).m11346a(str);
                return this;
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzcbf = zzgVar;
            zzejz.m12401a(zzg.class, zzgVar);
        }

        /* renamed from: m */
        public static zzg m11345m() {
            return zzcbf;
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcbf, "\u0001\b��\u0001\u0001\b\b������\u0001ဈ��\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006ဌ\u0005\u0007ဌ\u0006\bဌ\u0007", new Object[]{"zzdw", "zzcax", "zzcay", "zzcaz", "zzcba", "zzcbb", "zzcbc", zzuk.zzw(), "zzcbd", zzuk.zzw(), "zzcbe", zzuk.zzw()});
                case 4:
                    return zzcbf;
                case 5:
                    zzelw<zzg> zzelwVar = zzel;
                    zzelw<zzg> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzg.class) {
                            try {
                                zzelw<zzg> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcbf);
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
        public final void m11347a(zzu zzuVar) {
            zzuVar.getClass();
            this.zzcba = zzuVar;
            this.zzdw |= 8;
        }

        /* renamed from: a */
        public final void m11346a(String str) {
            str.getClass();
            this.zzdw |= 1;
            this.zzcax = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzh.class */
    public static final class zzh extends zzejz<zzh, zza> implements zzell {
        public static final zzh zzcbk;
        public static volatile zzelw<zzh> zzel;
        public int zzcbg;
        public zzu zzcbh;
        public String zzcbi = "";
        public String zzcbj = "";
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzh$zza.class */
        public static final class zza extends zzejz.zzb<zzh, zza> implements zzell {
            public zza() {
                super(zzh.zzcbk);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzh$zzb.class */
        public enum zzb implements zzeke {
            PLATFORM_UNSPECIFIED(0),
            IOS(1),
            ANDROID(2);
            
            public static final zzekd<zzb> zzes = new ah0();
            public final int value;

            zzb(int i) {
                this.value = i;
            }

            public static zzb zzcf(int i) {
                if (i == 0) {
                    return PLATFORM_UNSPECIFIED;
                }
                if (i == 1) {
                    return IOS;
                }
                if (i != 2) {
                    return null;
                }
                return ANDROID;
            }

            public static zzekg zzw() {
                return bh0.f12477a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzeke
            public final int zzv() {
                return this.value;
            }
        }

        static {
            zzh zzhVar = new zzh();
            zzcbk = zzhVar;
            zzejz.m12401a(zzh.class, zzhVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcbk, "\u0001\u0004��\u0001\u0005\b\u0004������\u0005ဌ��\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzdw", "zzcbg", zzb.zzw(), "zzcbh", "zzcbi", "zzcbj"});
                case 4:
                    return zzcbk;
                case 5:
                    zzelw<zzh> zzelwVar = zzel;
                    zzelw<zzh> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzh.class) {
                            try {
                                zzelw<zzh> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcbk);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzi.class */
    public static final class zzi extends zzejz<zzi, zza> implements zzell {
        public static final zzi zzccg;
        public static volatile zzelw<zzi> zzel;
        public int zzcbt;
        public int zzcbv;
        public zzu zzcbx;
        public zzg zzcbz;
        public zzh zzcca;
        public zzm zzccb;
        public zza zzccc;
        public zzo zzccd;
        public zzae zzcce;
        public zzb zzccf;
        public int zzdw;
        public String zzcbu = "";
        public int zzcbw = 1000;
        public zzekh zzcby = zzejz.m12395i();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzi$zza.class */
        public static final class zza extends zzejz.zzb<zzi, zza> implements zzell {
            public zza() {
                super(zzi.zzccg);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m11319a(zza.zzb zzbVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzi) this.f28072b).m11340a((zza) ((zzejz) zzbVar.mo12342K()));
                return this;
            }

            /* renamed from: a */
            public final zza m11318a(zzae zzaeVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzi) this.f28072b).m11339a(zzaeVar);
                return this;
            }

            /* renamed from: a */
            public final zza m11317a(zzb zzbVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzi) this.f28072b).m11338a(zzbVar);
                return this;
            }

            /* renamed from: a */
            public final zza m11316a(zzg.zza zzaVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzi) this.f28072b).m11337a((zzg) ((zzejz) zzaVar.mo12342K()));
                return this;
            }

            /* renamed from: a */
            public final zza m11315a(zzo zzoVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzi) this.f28072b).m11328a(zzoVar);
                return this;
            }

            /* renamed from: a */
            public final zza m11314a(Iterable<? extends Long> iterable) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzi) this.f28072b).m11327a(iterable);
                return this;
            }

            /* renamed from: a */
            public final zza m11313a(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzi) this.f28072b).m11326a(str);
                return this;
            }

            /* renamed from: p */
            public final String m11312p() {
                return ((zzi) this.f28072b).m11325m();
            }

            /* renamed from: q */
            public final zza m11311q() {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzi) this.f28072b).m11322p();
                return this;
            }

            /* renamed from: r */
            public final zzg m11310r() {
                return ((zzi) this.f28072b).m11324n();
            }

            /* renamed from: s */
            public final zza m11309s() {
                return ((zzi) this.f28072b).m11323o();
            }
        }

        static {
            zzi zziVar = new zzi();
            zzccg = zziVar;
            zzejz.m12401a(zzi.class, zziVar);
        }

        /* renamed from: q */
        public static zza m11321q() {
            return zzccg.m12399b();
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzccg, "\u0001\r��\u0001\t\u0015\r��\u0001��\tင��\nဈ\u0001\u000bဋ\u0002\fဌ\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzdw", "zzcbt", "zzcbu", "zzcbv", "zzcbw", zzuk.zzw(), "zzcbx", "zzcby", "zzcbz", "zzcca", "zzccb", "zzccc", "zzccd", "zzcce", "zzccf"});
                case 4:
                    return zzccg;
                case 5:
                    zzelw<zzi> zzelwVar = zzel;
                    zzelw<zzi> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzi.class) {
                            try {
                                zzelw<zzi> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzccg);
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
        public final void m11340a(zza zzaVar) {
            zzaVar.getClass();
            this.zzccc = zzaVar;
            this.zzdw |= 256;
        }

        /* renamed from: a */
        public final void m11339a(zzae zzaeVar) {
            zzaeVar.getClass();
            this.zzcce = zzaeVar;
            this.zzdw |= 1024;
        }

        /* renamed from: a */
        public final void m11338a(zzb zzbVar) {
            zzbVar.getClass();
            this.zzccf = zzbVar;
            this.zzdw |= RecyclerView.AbstractC0495b0.FLAG_MOVED;
        }

        /* renamed from: a */
        public final void m11337a(zzg zzgVar) {
            zzgVar.getClass();
            this.zzcbz = zzgVar;
            this.zzdw |= 32;
        }

        /* renamed from: a */
        public final void m11328a(zzo zzoVar) {
            zzoVar.getClass();
            this.zzccd = zzoVar;
            this.zzdw |= RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN;
        }

        /* renamed from: a */
        public final void m11327a(Iterable<? extends Long> iterable) {
            zzekh zzekhVar = this.zzcby;
            if (!zzekhVar.mo12360w()) {
                int size = zzekhVar.size();
                this.zzcby = zzekhVar.mo12362h(size == 0 ? 10 : size << 1);
            }
            zzeif.m12534a(iterable, this.zzcby);
        }

        /* renamed from: a */
        public final void m11326a(String str) {
            str.getClass();
            this.zzdw |= 2;
            this.zzcbu = str;
        }

        /* renamed from: m */
        public final String m11325m() {
            return this.zzcbu;
        }

        /* renamed from: n */
        public final zzg m11324n() {
            zzg zzgVar = this.zzcbz;
            zzg zzgVar2 = zzgVar;
            if (zzgVar == null) {
                zzgVar2 = zzg.m11345m();
            }
            return zzgVar2;
        }

        /* renamed from: o */
        public final zza m11323o() {
            zza zzaVar = this.zzccc;
            zza zzaVar2 = zzaVar;
            if (zzaVar == null) {
                zzaVar2 = zza.m11410n();
            }
            return zzaVar2;
        }

        /* renamed from: p */
        public final void m11322p() {
            this.zzcby = zzejz.m12395i();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzj.class */
    public static final class zzj extends zzejz<zzj, zza> implements zzell {
        public static final zzj zzccl;
        public static volatile zzelw<zzj> zzel;
        public int zzcci;
        public zzt zzcck;
        public int zzdw;
        public String zzcch = "";
        public zzekf zzccj = zzejz.m12396f();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzj$zza.class */
        public static final class zza extends zzejz.zzb<zzj, zza> implements zzell {
            public zza() {
                super(zzj.zzccl);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzj zzjVar = new zzj();
            zzccl = zzjVar;
            zzejz.m12401a(zzj.class, zzjVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzccl, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဈ��\u0002ဌ\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zzdw", "zzcch", "zzcci", zzuk.zzw(), "zzccj", "zzcck"});
                case 4:
                    return zzccl;
                case 5:
                    zzelw<zzj> zzelwVar = zzel;
                    zzelw<zzj> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzj.class) {
                            try {
                                zzelw<zzj> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzccl);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzk.class */
    public static final class zzk extends zzejz<zzk, zza> implements zzell {
        public static final zzk zzccn;
        public static volatile zzelw<zzk> zzel;
        public zzekf zzccj = zzejz.m12396f();
        public int zzccm;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzk$zza.class */
        public static final class zza extends zzejz.zzb<zzk, zza> implements zzell {
            public zza() {
                super(zzk.zzccn);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzccn = zzkVar;
            zzejz.m12401a(zzk.class, zzkVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzccn, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u0016", new Object[]{"zzdw", "zzccm", zzuk.zzw(), "zzccj"});
                case 4:
                    return zzccn;
                case 5:
                    zzelw<zzk> zzelwVar = zzel;
                    zzelw<zzk> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzk.class) {
                            try {
                                zzelw<zzk> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzccn);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzl.class */
    public static final class zzl extends zzejz<zzl, zza> implements zzell {
        public static final zzl zzccq;
        public static volatile zzelw<zzl> zzel;
        public zzt zzcck;
        public int zzccm;
        public zzj zzcco;
        public zzekk<zzs> zzccp = zzejz.m12394l();
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzl$zza.class */
        public static final class zza extends zzejz.zzb<zzl, zza> implements zzell {
            public zza() {
                super(zzl.zzccq);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzl zzlVar = new zzl();
            zzccq = zzlVar;
            zzejz.m12401a(zzl.class, zzlVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzl();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzccq, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဉ��\u0002\u001b\u0003ဌ\u0001\u0004ဉ\u0002", new Object[]{"zzdw", "zzcco", "zzccp", zzs.class, "zzccm", zzuk.zzw(), "zzcck"});
                case 4:
                    return zzccq;
                case 5:
                    zzelw<zzl> zzelwVar = zzel;
                    zzelw<zzl> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzl.class) {
                            try {
                                zzelw<zzl> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzccq);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzm.class */
    public static final class zzm extends zzejz<zzm, zza> implements zzell {
        public static final zzm zzccs;
        public static volatile zzelw<zzm> zzel;
        public int zzbzr;
        public int zzccr;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzm$zza.class */
        public static final class zza extends zzejz.zzb<zzm, zza> implements zzell {
            public zza() {
                super(zzm.zzccs);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m11299a(zzb zzbVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzm) this.f28072b).m11305a(zzbVar);
                return this;
            }

            /* renamed from: a */
            public final zza m11298a(zzc zzcVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzm) this.f28072b).m11304a(zzcVar);
                return this;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzm$zzb.class */
        public enum zzb implements zzeke {
            CELLULAR_NETWORK_TYPE_UNSPECIFIED(0),
            TWO_G(1),
            THREE_G(2),
            LTE(4);
            
            public static final zzekd<zzb> zzes = new eh0();
            public final int value;

            zzb(int i) {
                this.value = i;
            }

            public static zzb zzch(int i) {
                if (i == 0) {
                    return CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                }
                if (i == 1) {
                    return TWO_G;
                }
                if (i == 2) {
                    return THREE_G;
                }
                if (i != 4) {
                    return null;
                }
                return LTE;
            }

            public static zzekg zzw() {
                return fh0.f12970a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzeke
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzm$zzc.class */
        public enum zzc implements zzeke {
            NETWORKTYPE_UNSPECIFIED(0),
            CELL(1),
            WIFI(2);
            
            public static final zzekd<zzc> zzes = new hh0();
            public final int value;

            zzc(int i) {
                this.value = i;
            }

            public static zzc zzci(int i) {
                if (i == 0) {
                    return NETWORKTYPE_UNSPECIFIED;
                }
                if (i == 1) {
                    return CELL;
                }
                if (i != 2) {
                    return null;
                }
                return WIFI;
            }

            public static zzekg zzw() {
                return gh0.f13209a;
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
            zzm zzmVar = new zzm();
            zzccs = zzmVar;
            zzejz.m12401a(zzm.class, zzmVar);
        }

        /* renamed from: m */
        public static zza m11301m() {
            return zzccs.m12399b();
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzm();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzccs, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဌ\u0001", new Object[]{"zzdw", "zzbzr", zzc.zzw(), "zzccr", zzb.zzw()});
                case 4:
                    return zzccs;
                case 5:
                    zzelw<zzm> zzelwVar = zzel;
                    zzelw<zzm> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzm.class) {
                            try {
                                zzelw<zzm> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzccs);
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
        public final void m11305a(zzb zzbVar) {
            this.zzccr = zzbVar.zzv();
            this.zzdw |= 2;
        }

        /* renamed from: a */
        public final void m11304a(zzc zzcVar) {
            this.zzbzr = zzcVar.zzv();
            this.zzdw |= 1;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzn.class */
    public static final class zzn extends zzejz<zzn, zza> implements zzell {
        public static final zzn zzcde;
        public static volatile zzelw<zzn> zzel;
        public int zzcdc;
        public zzt zzcdd;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzn$zza.class */
        public static final class zza extends zzejz.zzb<zzn, zza> implements zzell {
            public zza() {
                super(zzn.zzcde);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzn zznVar = new zzn();
            zzcde = zznVar;
            zzejz.m12401a(zzn.class, zznVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzn();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcde, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzdw", "zzcdc", zzuk.zzw(), "zzcdd"});
                case 4:
                    return zzcde;
                case 5:
                    zzelw<zzn> zzelwVar = zzel;
                    zzelw<zzn> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzn.class) {
                            try {
                                zzelw<zzn> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcde);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzo.class */
    public static final class zzo extends zzejz<zzo, zzc> implements zzell {
        public static final zzo zzcdy;
        public static volatile zzelw<zzo> zzel;
        public int zzcdt;
        public int zzcdu;
        public long zzcdv;
        public long zzcdx;
        public int zzdw;
        public zzekk<zza> zzbzg = zzejz.m12394l();
        public String zzdx = "";
        public String zzcdw = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzo$zza.class */
        public static final class zza extends zzejz<zza, C10508zza> implements zzell {
            public static final zzeki<Integer, zzc.zza> zzcdk = new ih0();
            public static final zza zzcds;
            public static volatile zzelw<zza> zzel;
            public long zzcdf;
            public int zzcdg;
            public long zzcdh;
            public long zzcdi;
            public zzekf zzcdj = zzejz.m12396f();
            public zzm zzcdl;
            public int zzcdm;
            public int zzcdn;
            public int zzcdo;
            public int zzcdp;
            public int zzcdq;
            public int zzcdr;
            public int zzdw;

            /* renamed from: com.google.android.gms.internal.ads.zzua$zzo$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzo$zza$zza.class */
            public static final class C10508zza extends zzejz.zzb<zza, C10508zza> implements zzell {
                public C10508zza() {
                    super(zza.zzcds);
                }

                public /* synthetic */ C10508zza(tg0 tg0Var) {
                    this();
                }

                /* renamed from: a */
                public final C10508zza m11251a(int i) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11268b(i);
                    return this;
                }

                /* renamed from: a */
                public final C10508zza m11250a(long j) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11280a(j);
                    return this;
                }

                /* renamed from: a */
                public final C10508zza m11249a(zzm zzmVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11279a(zzmVar);
                    return this;
                }

                /* renamed from: a */
                public final C10508zza m11248a(zzb zzbVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11272a(zzbVar);
                    return this;
                }

                /* renamed from: a */
                public final C10508zza m11247a(zzuk zzukVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11271a(zzukVar);
                    return this;
                }

                /* renamed from: a */
                public final C10508zza m11246a(Iterable<? extends zzc.zza> iterable) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11270a(iterable);
                    return this;
                }

                /* renamed from: b */
                public final C10508zza m11245b(long j) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11267b(j);
                    return this;
                }

                /* renamed from: b */
                public final C10508zza m11244b(zzuk zzukVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11264b(zzukVar);
                    return this;
                }

                /* renamed from: c */
                public final C10508zza m11243c(long j) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11263c(j);
                    return this;
                }

                /* renamed from: c */
                public final C10508zza m11242c(zzuk zzukVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11260c(zzukVar);
                    return this;
                }

                /* renamed from: d */
                public final C10508zza m11241d(zzuk zzukVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11258d(zzukVar);
                    return this;
                }

                /* renamed from: e */
                public final C10508zza m11240e(zzuk zzukVar) {
                    if (this.f28073c) {
                        m12381m();
                        this.f28073c = false;
                    }
                    ((zza) this.f28072b).m11256e(zzukVar);
                    return this;
                }
            }

            static {
                zza zzaVar = new zza();
                zzcds = zzaVar;
                zzejz.m12401a(zza.class, zzaVar);
            }

            /* renamed from: a */
            public static zza m11269a(byte[] bArr) throws zzekj {
                return (zza) zzejz.m12408a(zzcds, bArr);
            }

            /* renamed from: o */
            public static C10508zza m11253o() {
                return zzcds.m12399b();
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                switch (tg0.f15404a[i - 1]) {
                    case 1:
                        return new zza();
                    case 2:
                        return new C10508zza(null);
                    case 3:
                        return zzejz.m12403a(zzcds, "\u0001\f��\u0001\u0001\f\f��\u0001��\u0001ဂ��\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005\u001e\u0006ဉ\u0004\u0007ဌ\u0005\bဌ\u0006\tဌ\u0007\nင\b\u000bဌ\t\fဌ\n", new Object[]{"zzdw", "zzcdf", "zzcdg", zzuk.zzw(), "zzcdh", "zzcdi", "zzcdj", zzc.zza.zzw(), "zzcdl", "zzcdm", zzuk.zzw(), "zzcdn", zzuk.zzw(), "zzcdo", zzuk.zzw(), "zzcdp", "zzcdq", zzuk.zzw(), "zzcdr", zzb.zzw()});
                    case 4:
                        return zzcds;
                    case 5:
                        zzelw<zza> zzelwVar = zzel;
                        zzelw<zza> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (zza.class) {
                                try {
                                    zzelw<zza> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zzcds);
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
            public final void m11280a(long j) {
                this.zzdw |= 1;
                this.zzcdf = j;
            }

            /* renamed from: a */
            public final void m11279a(zzm zzmVar) {
                zzmVar.getClass();
                this.zzcdl = zzmVar;
                this.zzdw |= 16;
            }

            /* renamed from: a */
            public final void m11272a(zzb zzbVar) {
                this.zzcdr = zzbVar.zzv();
                this.zzdw |= 1024;
            }

            /* renamed from: a */
            public final void m11271a(zzuk zzukVar) {
                this.zzcdg = zzukVar.zzv();
                this.zzdw |= 2;
            }

            /* renamed from: a */
            public final void m11270a(Iterable<? extends zzc.zza> iterable) {
                zzekf zzekfVar = this.zzcdj;
                if (!zzekfVar.mo12360w()) {
                    this.zzcdj = zzejz.m12405a(zzekfVar);
                }
                for (zzc.zza zzaVar : iterable) {
                    this.zzcdj.mo12364k(zzaVar.zzv());
                }
            }

            /* renamed from: b */
            public final void m11268b(int i) {
                this.zzdw |= 256;
                this.zzcdp = i;
            }

            /* renamed from: b */
            public final void m11267b(long j) {
                this.zzdw |= 4;
                this.zzcdh = j;
            }

            /* renamed from: b */
            public final void m11264b(zzuk zzukVar) {
                this.zzcdm = zzukVar.zzv();
                this.zzdw |= 32;
            }

            /* renamed from: c */
            public final void m11263c(long j) {
                this.zzdw |= 8;
                this.zzcdi = j;
            }

            /* renamed from: c */
            public final void m11260c(zzuk zzukVar) {
                this.zzcdn = zzukVar.zzv();
                this.zzdw |= 64;
            }

            /* renamed from: d */
            public final void m11258d(zzuk zzukVar) {
                this.zzcdo = zzukVar.zzv();
                this.zzdw |= 128;
            }

            /* renamed from: e */
            public final void m11256e(zzuk zzukVar) {
                this.zzcdq = zzukVar.zzv();
                this.zzdw |= RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN;
            }

            /* renamed from: m */
            public final long m11255m() {
                return this.zzcdf;
            }

            /* renamed from: n */
            public final zzuk m11254n() {
                zzuk zzcg = zzuk.zzcg(this.zzcdg);
                zzuk zzukVar = zzcg;
                if (zzcg == null) {
                    zzukVar = zzuk.ENUM_FALSE;
                }
                return zzukVar;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzo$zzb.class */
        public enum zzb implements zzeke {
            UNSPECIFIED(0),
            CONNECTING(1),
            CONNECTED(2),
            DISCONNECTING(3),
            DISCONNECTED(4),
            SUSPENDED(5);
            
            public static final zzekd<zzb> zzes = new kh0();
            public final int value;

            zzb(int i) {
                this.value = i;
            }

            public static zzb zzcn(int i) {
                if (i == 0) {
                    return UNSPECIFIED;
                }
                if (i == 1) {
                    return CONNECTING;
                }
                if (i == 2) {
                    return CONNECTED;
                }
                if (i == 3) {
                    return DISCONNECTING;
                }
                if (i == 4) {
                    return DISCONNECTED;
                }
                if (i != 5) {
                    return null;
                }
                return SUSPENDED;
            }

            public static zzekg zzw() {
                return jh0.f13789a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzeke
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzo$zzc.class */
        public static final class zzc extends zzejz.zzb<zzo, zzc> implements zzell {
            public zzc() {
                super(zzo.zzcdy);
            }

            public /* synthetic */ zzc(tg0 tg0Var) {
                this();
            }

            /* renamed from: a */
            public final zzc m11239a(int i) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzo) this.f28072b).m11289b(i);
                return this;
            }

            /* renamed from: a */
            public final zzc m11238a(long j) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzo) this.f28072b).m11296a(j);
                return this;
            }

            /* renamed from: a */
            public final zzc m11237a(Iterable<? extends zza> iterable) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzo) this.f28072b).m11291a(iterable);
                return this;
            }

            /* renamed from: a */
            public final zzc m11236a(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzo) this.f28072b).m11284b(str);
                return this;
            }

            /* renamed from: b */
            public final zzc m11235b(int i) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzo) this.f28072b).m11283c(i);
                return this;
            }

            /* renamed from: b */
            public final zzc m11234b(long j) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzo) this.f28072b).m11288b(j);
                return this;
            }

            /* renamed from: b */
            public final zzc m11233b(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzo) this.f28072b).m11290a(str);
                return this;
            }
        }

        static {
            zzo zzoVar = new zzo();
            zzcdy = zzoVar;
            zzejz.m12401a(zzo.class, zzoVar);
        }

        /* renamed from: m */
        public static zzc m11282m() {
            return zzcdy.m12399b();
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzo();
                case 2:
                    return new zzc(null);
                case 3:
                    return zzejz.m12403a(zzcdy, "\u0001\u0007��\u0001\u0001\u0007\u0007��\u0001��\u0001\u001b\u0002င��\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005", new Object[]{"zzdw", "zzbzg", zza.class, "zzcdt", "zzcdu", "zzcdv", "zzdx", "zzcdw", "zzcdx"});
                case 4:
                    return zzcdy;
                case 5:
                    zzelw<zzo> zzelwVar = zzel;
                    zzelw<zzo> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzo.class) {
                            try {
                                zzelw<zzo> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcdy);
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
        public final void m11296a(long j) {
            this.zzdw |= 4;
            this.zzcdv = j;
        }

        /* renamed from: a */
        public final void m11291a(Iterable<? extends zza> iterable) {
            zzekk<zza> zzekkVar = this.zzbzg;
            if (!zzekkVar.mo12360w()) {
                this.zzbzg = zzejz.m12404a(zzekkVar);
            }
            zzeif.m12534a(iterable, this.zzbzg);
        }

        /* renamed from: a */
        public final void m11290a(String str) {
            str.getClass();
            this.zzdw |= 16;
            this.zzcdw = str;
        }

        /* renamed from: b */
        public final void m11289b(int i) {
            this.zzdw |= 1;
            this.zzcdt = i;
        }

        /* renamed from: b */
        public final void m11288b(long j) {
            this.zzdw |= 32;
            this.zzcdx = j;
        }

        /* renamed from: b */
        public final void m11284b(String str) {
            str.getClass();
            this.zzdw |= 8;
            this.zzdx = str;
        }

        /* renamed from: c */
        public final void m11283c(int i) {
            this.zzdw |= 2;
            this.zzcdu = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzp.class */
    public static final class zzp extends zzejz<zzp, zza> implements zzell {
        public static final zzp zzcer;
        public static volatile zzelw<zzp> zzel;
        public int zzceg = 1000;
        public int zzceh = 1000;
        public int zzcei;
        public int zzcej;
        public int zzcek;
        public int zzcel;
        public int zzcem;
        public int zzcen;
        public int zzceo;
        public int zzcep;
        public zzq zzceq;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzp$zza.class */
        public static final class zza extends zzejz.zzb<zzp, zza> implements zzell {
            public zza() {
                super(zzp.zzcer);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzp zzpVar = new zzp();
            zzcer = zzpVar;
            zzejz.m12401a(zzp.class, zzpVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzp();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcer, "\u0001\u000b��\u0001\u0001\u000b\u000b������\u0001ဌ��\u0002ဌ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tင\b\nင\t\u000bဉ\n", new Object[]{"zzdw", "zzceg", zzuk.zzw(), "zzceh", zzuk.zzw(), "zzcei", "zzcej", "zzcek", "zzcel", "zzcem", "zzcen", "zzceo", "zzcep", "zzceq"});
                case 4:
                    return zzcer;
                case 5:
                    zzelw<zzp> zzelwVar = zzel;
                    zzelw<zzp> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzp.class) {
                            try {
                                zzelw<zzp> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcer);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzq.class */
    public static final class zzq extends zzejz<zzq, zza> implements zzell {
        public static final zzq zzceu;
        public static volatile zzelw<zzq> zzel;
        public int zzces;
        public int zzcet;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzq$zza.class */
        public static final class zza extends zzejz.zzb<zzq, zza> implements zzell {
            public zza() {
                super(zzq.zzceu);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzq zzqVar = new zzq();
            zzceu = zzqVar;
            zzejz.m12401a(zzq.class, zzqVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzq();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzceu, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzdw", "zzces", "zzcet"});
                case 4:
                    return zzceu;
                case 5:
                    zzelw<zzq> zzelwVar = zzel;
                    zzelw<zzq> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzq.class) {
                            try {
                                zzelw<zzq> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzceu);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzr.class */
    public static final class zzr extends zzejz<zzr, zza> implements zzell {
        public static final zzr zzcex;
        public static volatile zzelw<zzr> zzel;
        public int zzcev;
        public int zzcew;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzr$zza.class */
        public static final class zza extends zzejz.zzb<zzr, zza> implements zzell {
            public zza() {
                super(zzr.zzcex);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzr zzrVar = new zzr();
            zzcex = zzrVar;
            zzejz.m12401a(zzr.class, zzrVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzr();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcex, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzdw", "zzcev", "zzcew"});
                case 4:
                    return zzcex;
                case 5:
                    zzelw<zzr> zzelwVar = zzel;
                    zzelw<zzr> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzr.class) {
                            try {
                                zzelw<zzr> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcex);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzs.class */
    public static final class zzs extends zzejz<zzs, zza> implements zzell {
        public static final zzs zzcey;
        public static volatile zzelw<zzs> zzel;
        public String zzcch = "";
        public int zzcci;
        public zzt zzcck;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzs$zza.class */
        public static final class zza extends zzejz.zzb<zzs, zza> implements zzell {
            public zza() {
                super(zzs.zzcey);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzs zzsVar = new zzs();
            zzcey = zzsVar;
            zzejz.m12401a(zzs.class, zzsVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzs();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcey, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဌ\u0001\u0003ဉ\u0002", new Object[]{"zzdw", "zzcch", "zzcci", zzuk.zzw(), "zzcck"});
                case 4:
                    return zzcey;
                case 5:
                    zzelw<zzs> zzelwVar = zzel;
                    zzelw<zzs> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzs.class) {
                            try {
                                zzelw<zzs> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcey);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzt.class */
    public static final class zzt extends zzejz<zzt, zza> implements zzell {
        public static final zzt zzcfb;
        public static volatile zzelw<zzt> zzel;
        public int zzcez;
        public int zzcfa;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzt$zza.class */
        public static final class zza extends zzejz.zzb<zzt, zza> implements zzell {
            public zza() {
                super(zzt.zzcfb);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzt zztVar = new zzt();
            zzcfb = zztVar;
            zzejz.m12401a(zzt.class, zztVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzt();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcfb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzdw", "zzcez", "zzcfa"});
                case 4:
                    return zzcfb;
                case 5:
                    zzelw<zzt> zzelwVar = zzel;
                    zzelw<zzt> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzt.class) {
                            try {
                                zzelw<zzt> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcfb);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzu.class */
    public static final class zzu extends zzejz<zzu, zza> implements zzell {
        public static final zzu zzcff;
        public static volatile zzelw<zzu> zzel;
        public int zzcfc;
        public int zzcfd;
        public int zzcfe;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzu$zza.class */
        public static final class zza extends zzejz.zzb<zzu, zza> implements zzell {
            public zza() {
                super(zzu.zzcff);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m11219a(int i) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzu) this.f28072b).m11226b(i);
                return this;
            }

            /* renamed from: b */
            public final zza m11218b(int i) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzu) this.f28072b).m11224c(i);
                return this;
            }

            /* renamed from: c */
            public final zza m11217c(int i) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zzu) this.f28072b).m11222d(i);
                return this;
            }
        }

        static {
            zzu zzuVar = new zzu();
            zzcff = zzuVar;
            zzejz.m12401a(zzu.class, zzuVar);
        }

        /* renamed from: m */
        public static zza m11221m() {
            return zzcff.m12399b();
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzu();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcff, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002င\u0001\u0003င\u0002", new Object[]{"zzdw", "zzcfc", "zzcfd", "zzcfe"});
                case 4:
                    return zzcff;
                case 5:
                    zzelw<zzu> zzelwVar = zzel;
                    zzelw<zzu> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzu.class) {
                            try {
                                zzelw<zzu> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcff);
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

        /* renamed from: b */
        public final void m11226b(int i) {
            this.zzdw |= 1;
            this.zzcfc = i;
        }

        /* renamed from: c */
        public final void m11224c(int i) {
            this.zzdw |= 2;
            this.zzcfd = i;
        }

        /* renamed from: d */
        public final void m11222d(int i) {
            this.zzdw |= 4;
            this.zzcfe = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzv.class */
    public static final class zzv extends zzejz<zzv, zza> implements zzell {
        public static final zzv zzcfw;
        public static volatile zzelw<zzv> zzel;
        public zzz zzcfg;
        public zzab zzcfh;
        public zzac zzcfi;
        public zzad zzcfj;
        public zzw zzcfk;
        public zzaa zzcfl;
        public zzy zzcfm;
        public int zzcfn;
        public int zzcfo;
        public zzt zzcfp;
        public int zzcfq;
        public int zzcfr;
        public int zzcfs;
        public int zzcft;
        public int zzcfu;
        public long zzcfv;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzv$zza.class */
        public static final class zza extends zzejz.zzb<zzv, zza> implements zzell {
            public zza() {
                super(zzv.zzcfw);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzv zzvVar = new zzv();
            zzcfw = zzvVar;
            zzejz.m12401a(zzv.class, zzvVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzv();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcfw, "\u0001\u0010��\u0001\u0005\u0014\u0010������\u0005ဉ��\u0006ဉ\u0001\u0007ဉ\u0002\bဉ\u0003\tဉ\u0004\nဉ\u0005\u000bဉ\u0006\fင\u0007\rင\b\u000eဉ\t\u000fင\n\u0010င\u000b\u0011င\f\u0012င\r\u0013င\u000e\u0014ဃ\u000f", new Object[]{"zzdw", "zzcfg", "zzcfh", "zzcfi", "zzcfj", "zzcfk", "zzcfl", "zzcfm", "zzcfn", "zzcfo", "zzcfp", "zzcfq", "zzcfr", "zzcfs", "zzcft", "zzcfu", "zzcfv"});
                case 4:
                    return zzcfw;
                case 5:
                    zzelw<zzv> zzelwVar = zzel;
                    zzelw<zzv> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzv.class) {
                            try {
                                zzelw<zzv> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcfw);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzw.class */
    public static final class zzw extends zzejz<zzw, zza> implements zzell {
        public static final zzw zzcfz;
        public static volatile zzelw<zzw> zzel;
        public int zzccm = 1000;
        public zzx zzcfx;
        public zzt zzcfy;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzw$zza.class */
        public static final class zza extends zzejz.zzb<zzw, zza> implements zzell {
            public zza() {
                super(zzw.zzcfz);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzw zzwVar = new zzw();
            zzcfz = zzwVar;
            zzejz.m12401a(zzw.class, zzwVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzw();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcfz, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdw", "zzccm", zzuk.zzw(), "zzcfx", "zzcfy"});
                case 4:
                    return zzcfz;
                case 5:
                    zzelw<zzw> zzelwVar = zzel;
                    zzelw<zzw> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzw.class) {
                            try {
                                zzelw<zzw> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcfz);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzx.class */
    public static final class zzx extends zzejz<zzx, zza> implements zzell {
        public static final zzx zzcgb;
        public static volatile zzelw<zzx> zzel;
        public int zzcga;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzx$zza.class */
        public static final class zza extends zzejz.zzb<zzx, zza> implements zzell {
            public zza() {
                super(zzx.zzcgb);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzx$zzb.class */
        public enum zzb implements zzeke {
            VIDEO_ERROR_CODE_UNSPECIFIED(0),
            OPENGL_RENDERING_FAILED(1),
            CACHE_LOAD_FAILED(2),
            ANDROID_TARGET_API_TOO_LOW(3);
            
            public static final zzekd<zzb> zzes = new lh0();
            public final int value;

            zzb(int i) {
                this.value = i;
            }

            public static zzb zzcw(int i) {
                if (i == 0) {
                    return VIDEO_ERROR_CODE_UNSPECIFIED;
                }
                if (i == 1) {
                    return OPENGL_RENDERING_FAILED;
                }
                if (i == 2) {
                    return CACHE_LOAD_FAILED;
                }
                if (i != 3) {
                    return null;
                }
                return ANDROID_TARGET_API_TOO_LOW;
            }

            public static zzekg zzw() {
                return mh0.f14175a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzeke
            public final int zzv() {
                return this.value;
            }
        }

        static {
            zzx zzxVar = new zzx();
            zzcgb = zzxVar;
            zzejz.m12401a(zzx.class, zzxVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzx();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcgb, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဌ��", new Object[]{"zzdw", "zzcga", zzb.zzw()});
                case 4:
                    return zzcgb;
                case 5:
                    zzelw<zzx> zzelwVar = zzel;
                    zzelw<zzx> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzx.class) {
                            try {
                                zzelw<zzx> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcgb);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzy.class */
    public static final class zzy extends zzejz<zzy, zza> implements zzell {
        public static final zzy zzcgi;
        public static volatile zzelw<zzy> zzel;
        public int zzccm = 1000;
        public zzx zzcfx;
        public zzt zzcfy;
        public zzu zzcgh;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzy$zza.class */
        public static final class zza extends zzejz.zzb<zzy, zza> implements zzell {
            public zza() {
                super(zzy.zzcgi);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzy zzyVar = new zzy();
            zzcgi = zzyVar;
            zzejz.m12401a(zzy.class, zzyVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzy();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcgi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဌ\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzdw", "zzcgh", "zzccm", zzuk.zzw(), "zzcfx", "zzcfy"});
                case 4:
                    return zzcgi;
                case 5:
                    zzelw<zzy> zzelwVar = zzel;
                    zzelw<zzy> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzy.class) {
                            try {
                                zzelw<zzy> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcgi);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzz.class */
    public static final class zzz extends zzejz<zzz, zza> implements zzell {
        public static final zzz zzcgk;
        public static volatile zzelw<zzz> zzel;
        public int zzccm = 1000;
        public int zzcfn;
        public int zzcfo;
        public zzx zzcfx;
        public int zzcgj;
        public int zzdw;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua$zzz$zza.class */
        public static final class zza extends zzejz.zzb<zzz, zza> implements zzell {
            public zza() {
                super(zzz.zzcgk);
            }

            public /* synthetic */ zza(tg0 tg0Var) {
                this();
            }
        }

        static {
            zzz zzzVar = new zzz();
            zzcgk = zzzVar;
            zzejz.m12401a(zzz.class, zzzVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (tg0.f15404a[i - 1]) {
                case 1:
                    return new zzz();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzcgk, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzdw", "zzccm", zzuk.zzw(), "zzcfx", "zzcfn", "zzcfo", "zzcgj"});
                case 4:
                    return zzcgk;
                case 5:
                    zzelw<zzz> zzelwVar = zzel;
                    zzelw<zzz> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzz.class) {
                            try {
                                zzelw<zzz> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzcgk);
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
}
