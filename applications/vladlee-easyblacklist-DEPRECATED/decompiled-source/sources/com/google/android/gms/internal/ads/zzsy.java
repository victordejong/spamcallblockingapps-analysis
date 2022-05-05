package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.internal.ads.zzdrt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy.class */
public final class zzsy {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zza.class */
    public static final class zza extends zzdrt<zza, zzb> implements zzdtg {
        private static final zza zzbuj;
        private static volatile zzdtn<zza> zzdz;
        private zzdsb<C3504zza> zzbui = ajg.m5241b();

        /* renamed from: com.google.android.gms.internal.ads.zzsy$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zza$zza.class */
        public static final class C3504zza extends zzdrt<C3504zza, C3505zza> implements zzdtg {
            private static final C3504zza zzbuh;
            private static volatile zzdtn<C3504zza> zzdz;
            private int zzbue;
            private zzd zzbuf;
            private zze zzbug;
            private int zzdl;

            /* renamed from: com.google.android.gms.internal.ads.zzsy$zza$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zza$zza$zza.class */
            public static final class C3505zza extends zzdrt.zzb<C3504zza, C3505zza> implements zzdtg {
                private C3505zza() {
                    super(C3504zza.zzbuh);
                }

                /* synthetic */ C3505zza(byte b) {
                    this();
                }

                public final C3505zza zza(zzd.C3506zza zzaVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    C3504zza.m3062a((C3504zza) this.f14556a, (zzd) ((zzdrt) zzaVar.zzbaf()));
                    return this;
                }

                public final C3505zza zza(zze.C3507zza zzaVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    C3504zza.m3061a((C3504zza) this.f14556a, (zze) ((zzdrt) zzaVar.zzbaf()));
                    return this;
                }

                public final C3505zza zzb(zzc zzcVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    C3504zza.m3063a((C3504zza) this.f14556a, zzcVar);
                    return this;
                }
            }

            static {
                C3504zza zzaVar = new C3504zza();
                zzbuh = zzaVar;
                zzdrt.m3364a(C3504zza.class, zzaVar);
            }

            private C3504zza() {
            }

            /* renamed from: a */
            static /* synthetic */ void m3063a(C3504zza zzaVar, zzc zzcVar) {
                zzaVar.zzbue = zzcVar.zzae();
                zzaVar.zzdl |= 1;
            }

            /* renamed from: a */
            static /* synthetic */ void m3062a(C3504zza zzaVar, zzd zzdVar) {
                zzdVar.getClass();
                zzaVar.zzbuf = zzdVar;
                zzaVar.zzdl |= 2;
            }

            /* renamed from: a */
            static /* synthetic */ void m3061a(C3504zza zzaVar, zze zzeVar) {
                zzeVar.getClass();
                zzaVar.zzbug = zzeVar;
                zzaVar.zzdl |= 4;
            }

            public static C3505zza zzmx() {
                return zzbuh.m3360c();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                switch (aqs.f8183a[i - 1]) {
                    case 1:
                        return new C3504zza();
                    case 2:
                        return new C3505zza((byte) 0);
                    case 3:
                        return m3366a(zzbuh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\f��\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzdl", "zzbue", zzc.zzaf(), "zzbuf", "zzbug"});
                    case 4:
                        return zzbuh;
                    case 5:
                        zzdtn<C3504zza> zzdtnVar = zzdz;
                        zzdtn<C3504zza> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (C3504zza.class) {
                                try {
                                    zzdtn<C3504zza> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzbuh);
                                        zzdz = zzdtnVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzdtnVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zza$zzb.class */
        public static final class zzb extends zzdrt.zzb<zza, zzb> implements zzdtg {
            private zzb() {
                super(zza.zzbuj);
            }

            /* synthetic */ zzb(byte b) {
                this();
            }

            public final zzb zza(C3504zza.C3505zza zzaVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3065a((zza) this.f14556a, (C3504zza) ((zzdrt) zzaVar.zzbaf()));
                return this;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zza$zzc.class */
        public enum zzc implements zzdry {
            UNSPECIFIED(0),
            IN_MEMORY(1);
            

            /* renamed from: b */
            private static final zzdrx<zzc> f15470b = new aqt();

            /* renamed from: c */
            private final int f15472c;

            zzc(int i) {
                this.f15472c = i;
            }

            public static zzdsa zzaf() {
                return aqv.f8187a;
            }

            public static zzc zzbs(int i) {
                if (i == 0) {
                    return UNSPECIFIED;
                }
                if (i != 1) {
                    return null;
                }
                return IN_MEMORY;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f15472c + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f15472c;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zza$zzd.class */
        public static final class zzd extends zzdrt<zzd, C3506zza> implements zzdtg {
            private static final zzd zzbup;
            private static volatile zzdtn<zzd> zzdz;
            private boolean zzbun;
            private int zzbuo;
            private int zzdl;

            /* renamed from: com.google.android.gms.internal.ads.zzsy$zza$zzd$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zza$zzd$zza.class */
            public static final class C3506zza extends zzdrt.zzb<zzd, C3506zza> implements zzdtg {
                private C3506zza() {
                    super(zzd.zzbup);
                }

                /* synthetic */ C3506zza(byte b) {
                    this();
                }

                public final C3506zza zzbu(int i) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzd.m3059a((zzd) this.f14556a, i);
                    return this;
                }

                public final C3506zza zzt(boolean z) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzd.m3058a((zzd) this.f14556a, z);
                    return this;
                }
            }

            static {
                zzd zzdVar = new zzd();
                zzbup = zzdVar;
                zzdrt.m3364a(zzd.class, zzdVar);
            }

            private zzd() {
            }

            /* renamed from: a */
            static /* synthetic */ void m3059a(zzd zzdVar, int i) {
                zzdVar.zzdl |= 2;
                zzdVar.zzbuo = i;
            }

            /* renamed from: a */
            static /* synthetic */ void m3058a(zzd zzdVar, boolean z) {
                zzdVar.zzdl |= 1;
                zzdVar.zzbun = z;
            }

            public static C3506zza zznb() {
                return zzbup.m3360c();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                switch (aqs.f8183a[i - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new C3506zza((byte) 0);
                    case 3:
                        return m3366a(zzbup, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\u0007��\u0002\u000b\u0001", new Object[]{"zzdl", "zzbun", "zzbuo"});
                    case 4:
                        return zzbup;
                    case 5:
                        zzdtn<zzd> zzdtnVar = zzdz;
                        zzdtn<zzd> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zzd.class) {
                                try {
                                    zzdtn<zzd> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzbup);
                                        zzdz = zzdtnVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzdtnVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zza$zze.class */
        public static final class zze extends zzdrt<zze, C3507zza> implements zzdtg {
            private static final zze zzbus;
            private static volatile zzdtn<zze> zzdz;
            private int zzbuo;
            private boolean zzbuq;
            private boolean zzbur;
            private int zzdl;

            /* renamed from: com.google.android.gms.internal.ads.zzsy$zza$zze$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zza$zze$zza.class */
            public static final class C3507zza extends zzdrt.zzb<zze, C3507zza> implements zzdtg {
                private C3507zza() {
                    super(zze.zzbus);
                }

                /* synthetic */ C3507zza(byte b) {
                    this();
                }

                public final C3507zza zzbv(int i) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3056a((zze) this.f14556a, i);
                    return this;
                }

                public final C3507zza zzu(boolean z) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3055a((zze) this.f14556a, z);
                    return this;
                }

                public final C3507zza zzv(boolean z) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3054b((zze) this.f14556a, z);
                    return this;
                }
            }

            static {
                zze zzeVar = new zze();
                zzbus = zzeVar;
                zzdrt.m3364a(zze.class, zzeVar);
            }

            private zze() {
            }

            /* renamed from: a */
            static /* synthetic */ void m3056a(zze zzeVar, int i) {
                zzeVar.zzdl |= 4;
                zzeVar.zzbuo = i;
            }

            /* renamed from: a */
            static /* synthetic */ void m3055a(zze zzeVar, boolean z) {
                zzeVar.zzdl |= 1;
                zzeVar.zzbuq = z;
            }

            /* renamed from: b */
            static /* synthetic */ void m3054b(zze zzeVar, boolean z) {
                zzeVar.zzdl |= 2;
                zzeVar.zzbur = z;
            }

            public static C3507zza zznd() {
                return zzbus.m3360c();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                switch (aqs.f8183a[i - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new C3507zza((byte) 0);
                    case 3:
                        return m3366a(zzbus, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\u0007��\u0002\u0007\u0001\u0003\u000b\u0002", new Object[]{"zzdl", "zzbuq", "zzbur", "zzbuo"});
                    case 4:
                        return zzbus;
                    case 5:
                        zzdtn<zze> zzdtnVar = zzdz;
                        zzdtn<zze> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zze.class) {
                                try {
                                    zzdtn<zze> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzbus);
                                        zzdz = zzdtnVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzdtnVar2;
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
            zza zzaVar = new zza();
            zzbuj = zzaVar;
            zzdrt.m3364a(zza.class, zzaVar);
        }

        private zza() {
        }

        /* renamed from: a */
        static /* synthetic */ void m3065a(zza zzaVar, C3504zza zzaVar2) {
            zzaVar2.getClass();
            if (!zzaVar.zzbui.zzaxp()) {
                zzaVar.zzbui = zzdrt.m3367a(zzaVar.zzbui);
            }
            zzaVar.zzbui.add(zzaVar2);
        }

        public static zzb zzmz() {
            return zzbuj.m3360c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb((byte) 0);
                case 3:
                    return m3366a(zzbuj, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzbui", C3504zza.class});
                case 4:
                    return zzbuj;
                case 5:
                    zzdtn<zza> zzdtnVar = zzdz;
                    zzdtn<zza> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzdtn<zza> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbuj);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzb.class */
    public static final class zzb extends zzdrt<zzb, C3508zzb> implements zzdtg {
        private static final zzb zzbuv;
        private static volatile zzdtn<zzb> zzdz;
        private int zzbut;
        private zzm zzbuu;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzb$zza.class */
        public enum zza implements zzdry {
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
            

            /* renamed from: g */
            private static final zzdrx<zza> f15479g = new aqw();

            /* renamed from: h */
            private final int f15481h;

            zza(int i) {
                this.f15481h = i;
            }

            public static zzdsa zzaf() {
                return aqx.f8188a;
            }

            public static zza zzbw(int i) {
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

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f15481h + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f15481h;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.zzsy$zzb$zzb  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzb$zzb.class */
        public static final class C3508zzb extends zzdrt.zzb<zzb, C3508zzb> implements zzdtg {
            private C3508zzb() {
                super(zzb.zzbuv);
            }

            /* synthetic */ C3508zzb(byte b) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzbuv = zzbVar;
            zzdrt.m3364a(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new C3508zzb((byte) 0);
                case 3:
                    return m3366a(zzbuv, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\f��\u0002\t\u0001", new Object[]{"zzdl", "zzbut", zza.zzaf(), "zzbuu"});
                case 4:
                    return zzbuv;
                case 5:
                    zzdtn<zzb> zzdtnVar = zzdz;
                    zzdtn<zzb> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzdtn<zzb> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbuv);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzc.class */
    public static final class zzc extends zzdrt<zzc, zza> implements zzdtg {
        private static final zzc zzbvl;
        private static volatile zzdtn<zzc> zzdz;
        private String zzbvi = "";
        private zzdsb<zzb> zzbvj = ajg.m5241b();
        private int zzbvk;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzc$zza.class */
        public static final class zza extends zzdrt.zzb<zzc, zza> implements zzdtg {
            private zza() {
                super(zzc.zzbvl);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzbvl = zzcVar;
            zzdrt.m3364a(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbvl, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0001��\u0001\b��\u0002\u001b\u0003\f\u0001", new Object[]{"zzdl", "zzbvi", "zzbvj", zzb.class, "zzbvk", zzte.zzaf()});
                case 4:
                    return zzbvl;
                case 5:
                    zzdtn<zzc> zzdtnVar = zzdz;
                    zzdtn<zzc> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzdtn<zzc> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbvl);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzd.class */
    public static final class zzd extends zzdrt<zzd, zza> implements zzdtg {
        private static final zzd zzbvs;
        private static volatile zzdtn<zzd> zzdz;
        private int zzbvm;
        private zzo zzbvn;
        private zzo zzbvo;
        private zzo zzbvp;
        private zzdsb<zzo> zzbvq = ajg.m5241b();
        private int zzbvr;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzd$zza.class */
        public static final class zza extends zzdrt.zzb<zzd, zza> implements zzdtg {
            private zza() {
                super(zzd.zzbvs);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzbvs = zzdVar;
            zzdrt.m3364a(zzd.class, zzdVar);
        }

        private zzd() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbvs, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001\u0004��\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003\u0005\u001b\u0006\u0004\u0004", new Object[]{"zzdl", "zzbvm", "zzbvn", "zzbvo", "zzbvp", "zzbvq", zzo.class, "zzbvr"});
                case 4:
                    return zzbvs;
                case 5:
                    zzdtn<zzd> zzdtnVar = zzdz;
                    zzdtn<zzd> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzdtn<zzd> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbvs);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zze.class */
    public static final class zze extends zzdrt<zze, zza> implements zzdtg {
        private static final zze zzbwb;
        private static volatile zzdtn<zze> zzdz;
        private int zzbvy;
        private zzo zzbwa;
        private int zzdl;
        private String zzbvx = "";
        private zzdrz zzbvz = aig.m5327b();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zze$zza.class */
        public static final class zza extends zzdrt.zzb<zze, zza> implements zzdtg {
            private zza() {
                super(zze.zzbwb);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zze zzeVar = new zze();
            zzbwb = zzeVar;
            zzdrt.m3364a(zze.class, zzeVar);
        }

        private zze() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbwb, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\b��\u0002\f\u0001\u0003\u0016\u0004\t\u0002", new Object[]{"zzdl", "zzbvx", "zzbvy", zzte.zzaf(), "zzbvz", "zzbwa"});
                case 4:
                    return zzbwb;
                case 5:
                    zzdtn<zze> zzdtnVar = zzdz;
                    zzdtn<zze> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzdtn<zze> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbwb);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzf.class */
    public static final class zzf extends zzdrt<zzf, zza> implements zzdtg {
        private static final zzf zzbwd;
        private static volatile zzdtn<zzf> zzdz;
        private zzdrz zzbvz = aig.m5327b();
        private int zzbwc;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzf$zza.class */
        public static final class zza extends zzdrt.zzb<zzf, zza> implements zzdtg {
            private zza() {
                super(zzf.zzbwd);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzbwd = zzfVar;
            zzdrt.m3364a(zzf.class, zzfVar);
        }

        private zzf() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbwd, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\f��\u0002\u0016", new Object[]{"zzdl", "zzbwc", zzte.zzaf(), "zzbvz"});
                case 4:
                    return zzbwd;
                case 5:
                    zzdtn<zzf> zzdtnVar = zzdz;
                    zzdtn<zzf> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzdtn<zzf> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbwd);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzg.class */
    public static final class zzg extends zzdrt<zzg, zza> implements zzdtg {
        private static final zzg zzbwg;
        private static volatile zzdtn<zzg> zzdz;
        private zzo zzbwa;
        private int zzbwc;
        private zze zzbwe;
        private zzdsb<zzn> zzbwf = ajg.m5241b();
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzg$zza.class */
        public static final class zza extends zzdrt.zzb<zzg, zza> implements zzdtg {
            private zza() {
                super(zzg.zzbwg);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzbwg = zzgVar;
            zzdrt.m3364a(zzg.class, zzgVar);
        }

        private zzg() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbwg, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\t��\u0002\u001b\u0003\f\u0001\u0004\t\u0002", new Object[]{"zzdl", "zzbwe", "zzbwf", zzn.class, "zzbwc", zzte.zzaf(), "zzbwa"});
                case 4:
                    return zzbwg;
                case 5:
                    zzdtn<zzg> zzdtnVar = zzdz;
                    zzdtn<zzg> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzg.class) {
                            try {
                                zzdtn<zzg> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbwg);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzh.class */
    public static final class zzh extends zzdrt<zzh, zzb> implements zzdtg {
        private static final zzh zzbwi;
        private static volatile zzdtn<zzh> zzdz;
        private int zzbut;
        private int zzbwh;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzh$zza.class */
        public enum zza implements zzdry {
            CELLULAR_NETWORK_TYPE_UNSPECIFIED(0),
            TWO_G(1),
            THREE_G(2),
            LTE(4);
            

            /* renamed from: a */
            private static final zzdrx<zza> f15482a = new arb();

            /* renamed from: b */
            private final int f15484b;

            zza(int i) {
                this.f15484b = i;
            }

            public static zzdsa zzaf() {
                return ara.f8193a;
            }

            public static zza zzby(int i) {
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

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f15484b + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f15484b;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzh$zzb.class */
        public static final class zzb extends zzdrt.zzb<zzh, zzb> implements zzdtg {
            private zzb() {
                super(zzh.zzbwi);
            }

            /* synthetic */ zzb(byte b) {
                this();
            }

            public final zzb zzb(zza zzaVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzh.m3046a((zzh) this.f14556a, zzaVar);
                return this;
            }

            public final zzb zzb(zzc zzcVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzh.m3045a((zzh) this.f14556a, zzcVar);
                return this;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzh$zzc.class */
        public enum zzc implements zzdry {
            NETWORKTYPE_UNSPECIFIED(0),
            CELL(1),
            WIFI(2);
            

            /* renamed from: a */
            private static final zzdrx<zzc> f15485a = new arc();

            /* renamed from: b */
            private final int f15487b;

            zzc(int i) {
                this.f15487b = i;
            }

            public static zzdsa zzaf() {
                return ard.f8194a;
            }

            public static zzc zzbz(int i) {
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

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f15487b + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f15487b;
            }
        }

        static {
            zzh zzhVar = new zzh();
            zzbwi = zzhVar;
            zzdrt.m3364a(zzh.class, zzhVar);
        }

        private zzh() {
        }

        /* renamed from: a */
        static /* synthetic */ void m3046a(zzh zzhVar, zza zzaVar) {
            zzhVar.zzbwh = zzaVar.zzae();
            zzhVar.zzdl |= 2;
        }

        /* renamed from: a */
        static /* synthetic */ void m3045a(zzh zzhVar, zzc zzcVar) {
            zzhVar.zzbut = zzcVar.zzae();
            zzhVar.zzdl |= 1;
        }

        public static zzb zznl() {
            return zzbwi.m3360c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zzb((byte) 0);
                case 3:
                    return m3366a(zzbwi, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\f��\u0002\f\u0001", new Object[]{"zzdl", "zzbut", zzc.zzaf(), "zzbwh", zza.zzaf()});
                case 4:
                    return zzbwi;
                case 5:
                    zzdtn<zzh> zzdtnVar = zzdz;
                    zzdtn<zzh> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzh.class) {
                            try {
                                zzdtn<zzh> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbwi);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzi.class */
    public static final class zzi extends zzdrt<zzi, zza> implements zzdtg {
        private static final zzi zzbwu;
        private static volatile zzdtn<zzi> zzdz;
        private int zzbws;
        private zzo zzbwt;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzi$zza.class */
        public static final class zza extends zzdrt.zzb<zzi, zza> implements zzdtg {
            private zza() {
                super(zzi.zzbwu);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzi zziVar = new zzi();
            zzbwu = zziVar;
            zzdrt.m3364a(zzi.class, zziVar);
        }

        private zzi() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbwu, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\f��\u0002\t\u0001", new Object[]{"zzdl", "zzbws", zzte.zzaf(), "zzbwt"});
                case 4:
                    return zzbwu;
                case 5:
                    zzdtn<zzi> zzdtnVar = zzdz;
                    zzdtn<zzi> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzi.class) {
                            try {
                                zzdtn<zzi> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbwu);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzj.class */
    public static final class zzj extends zzdrt<zzj, zzb> implements zzdtg {
        private static final zzj zzbxa;
        private static volatile zzdtn<zzj> zzdz;
        private int zzbwv;
        private int zzbww;
        private long zzbwx;
        private long zzbwz;
        private int zzdl;
        private zzdsb<zza> zzbui = ajg.m5241b();
        private String zzdm = "";
        private String zzbwy = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzj$zza.class */
        public static final class zza extends zzdrt<zza, C3509zza> implements zzdtg {
            private static final zzdsc<Integer, zzb.zza> zzbxg = new are();
            private static final zza zzbxo;
            private static volatile zzdtn<zza> zzdz;
            private long zzbxb;
            private int zzbxc;
            private long zzbxd;
            private long zzbxe;
            private zzdrz zzbxf = aig.m5327b();
            private zzh zzbxh;
            private int zzbxi;
            private int zzbxj;
            private int zzbxk;
            private int zzbxl;
            private int zzbxm;
            private int zzbxn;
            private int zzdl;

            /* renamed from: com.google.android.gms.internal.ads.zzsy$zzj$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzj$zza$zza.class */
            public static final class C3509zza extends zzdrt.zzb<zza, C3509zza> implements zzdtg {
                private C3509zza() {
                    super(zza.zzbxo);
                }

                /* synthetic */ C3509zza(byte b) {
                    this();
                }

                public final C3509zza zzb(zzh zzhVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3032a((zza) this.f14556a, zzhVar);
                    return this;
                }

                public final C3509zza zzb(zzc zzcVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3031a((zza) this.f14556a, zzcVar);
                    return this;
                }

                public final C3509zza zzcf(int i) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3034a((zza) this.f14556a, i);
                    return this;
                }

                public final C3509zza zzd(Iterable<? extends zzb.zza> iterable) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3029a((zza) this.f14556a, iterable);
                    return this;
                }

                public final C3509zza zzeu(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3033a((zza) this.f14556a, j);
                    return this;
                }

                public final C3509zza zzev(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3028b((zza) this.f14556a, j);
                    return this;
                }

                public final C3509zza zzew(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3026c((zza) this.f14556a, j);
                    return this;
                }

                public final C3509zza zzf(zzte zzteVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3030a((zza) this.f14556a, zzteVar);
                    return this;
                }

                public final C3509zza zzg(zzte zzteVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3027b((zza) this.f14556a, zzteVar);
                    return this;
                }

                public final C3509zza zzh(zzte zzteVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3025c((zza) this.f14556a, zzteVar);
                    return this;
                }

                public final C3509zza zzi(zzte zzteVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3024d((zza) this.f14556a, zzteVar);
                    return this;
                }

                public final C3509zza zzj(zzte zzteVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zza.m3023e((zza) this.f14556a, zzteVar);
                    return this;
                }
            }

            static {
                zza zzaVar = new zza();
                zzbxo = zzaVar;
                zzdrt.m3364a(zza.class, zzaVar);
            }

            private zza() {
            }

            /* renamed from: a */
            static /* synthetic */ void m3034a(zza zzaVar, int i) {
                zzaVar.zzdl |= 256;
                zzaVar.zzbxl = i;
            }

            /* renamed from: a */
            static /* synthetic */ void m3033a(zza zzaVar, long j) {
                zzaVar.zzdl |= 1;
                zzaVar.zzbxb = j;
            }

            /* renamed from: a */
            static /* synthetic */ void m3032a(zza zzaVar, zzh zzhVar) {
                zzhVar.getClass();
                zzaVar.zzbxh = zzhVar;
                zzaVar.zzdl |= 16;
            }

            /* renamed from: a */
            static /* synthetic */ void m3031a(zza zzaVar, zzc zzcVar) {
                zzaVar.zzbxn = zzcVar.zzae();
                zzaVar.zzdl |= 1024;
            }

            /* renamed from: a */
            static /* synthetic */ void m3030a(zza zzaVar, zzte zzteVar) {
                zzaVar.zzbxc = zzteVar.zzae();
                zzaVar.zzdl |= 2;
            }

            /* renamed from: a */
            static /* synthetic */ void m3029a(zza zzaVar, Iterable iterable) {
                if (!zzaVar.zzbxf.zzaxp()) {
                    zzaVar.zzbxf = zzdrt.m3368a(zzaVar.zzbxf);
                }
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    zzaVar.zzbxf.zzgl(((zzb.zza) it.next()).zzae());
                }
            }

            /* renamed from: b */
            static /* synthetic */ void m3028b(zza zzaVar, long j) {
                zzaVar.zzdl |= 4;
                zzaVar.zzbxd = j;
            }

            /* renamed from: b */
            static /* synthetic */ void m3027b(zza zzaVar, zzte zzteVar) {
                zzaVar.zzbxi = zzteVar.zzae();
                zzaVar.zzdl |= 32;
            }

            /* renamed from: c */
            static /* synthetic */ void m3026c(zza zzaVar, long j) {
                zzaVar.zzdl |= 8;
                zzaVar.zzbxe = j;
            }

            /* renamed from: c */
            static /* synthetic */ void m3025c(zza zzaVar, zzte zzteVar) {
                zzaVar.zzbxj = zzteVar.zzae();
                zzaVar.zzdl |= 64;
            }

            /* renamed from: d */
            static /* synthetic */ void m3024d(zza zzaVar, zzte zzteVar) {
                zzaVar.zzbxk = zzteVar.zzae();
                zzaVar.zzdl |= 128;
            }

            /* renamed from: e */
            static /* synthetic */ void m3023e(zza zzaVar, zzte zzteVar) {
                zzaVar.zzbxm = zzteVar.zzae();
                zzaVar.zzdl |= AdRequest.MAX_CONTENT_URL_LENGTH;
            }

            public static zza zzg(byte[] bArr) {
                return (zza) zzdrt.m3371a(zzbxo, bArr);
            }

            public static C3509zza zznr() {
                return zzbxo.m3360c();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                switch (aqs.f8183a[i - 1]) {
                    case 1:
                        return new zza();
                    case 2:
                        return new C3509zza((byte) 0);
                    case 3:
                        return m3366a(zzbxo, "\u0001\f��\u0001\u0001\f\f��\u0001��\u0001\u0002��\u0002\f\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u001e\u0006\t\u0004\u0007\f\u0005\b\f\u0006\t\f\u0007\n\u0004\b\u000b\f\t\f\f\n", new Object[]{"zzdl", "zzbxb", "zzbxc", zzte.zzaf(), "zzbxd", "zzbxe", "zzbxf", zzb.zza.zzaf(), "zzbxh", "zzbxi", zzte.zzaf(), "zzbxj", zzte.zzaf(), "zzbxk", zzte.zzaf(), "zzbxl", "zzbxm", zzte.zzaf(), "zzbxn", zzc.zzaf()});
                    case 4:
                        return zzbxo;
                    case 5:
                        zzdtn<zza> zzdtnVar = zzdz;
                        zzdtn<zza> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zza.class) {
                                try {
                                    zzdtn<zza> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzbxo);
                                        zzdz = zzdtnVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzdtnVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            public final long getTimestamp() {
                return this.zzbxb;
            }

            public final zzte zznq() {
                zzte zzbx = zzte.zzbx(this.zzbxc);
                zzte zzteVar = zzbx;
                if (zzbx == null) {
                    zzteVar = zzte.ENUM_FALSE;
                }
                return zzteVar;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzj$zzb.class */
        public static final class zzb extends zzdrt.zzb<zzj, zzb> implements zzdtg {
            private zzb() {
                super(zzj.zzbxa);
            }

            /* synthetic */ zzb(byte b) {
                this();
            }

            public final zzb zzc(Iterable<? extends zza> iterable) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzj.m3040a((zzj) this.f14556a, iterable);
                return this;
            }

            public final zzb zzca(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzj.m3039a((zzj) this.f14556a, str);
                return this;
            }

            public final zzb zzcb(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzj.m3036b((zzj) this.f14556a, str);
                return this;
            }

            public final zzb zzcd(int i) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzj.m3042a((zzj) this.f14556a, i);
                return this;
            }

            public final zzb zzce(int i) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzj.m3038b((zzj) this.f14556a, i);
                return this;
            }

            public final zzb zzes(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzj.m3041a((zzj) this.f14556a, j);
                return this;
            }

            public final zzb zzet(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzj.m3037b((zzj) this.f14556a, j);
                return this;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzj$zzc.class */
        public enum zzc implements zzdry {
            UNSPECIFIED(0),
            CONNECTING(1),
            CONNECTED(2),
            DISCONNECTING(3),
            DISCONNECTED(4),
            SUSPENDED(5);
            

            /* renamed from: a */
            private static final zzdrx<zzc> f15488a = new arf();

            /* renamed from: b */
            private final int f15490b;

            zzc(int i) {
                this.f15490b = i;
            }

            public static zzdsa zzaf() {
                return arg.f8195a;
            }

            public static zzc zzcg(int i) {
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

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f15490b + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f15490b;
            }
        }

        static {
            zzj zzjVar = new zzj();
            zzbxa = zzjVar;
            zzdrt.m3364a(zzj.class, zzjVar);
        }

        private zzj() {
        }

        /* renamed from: a */
        static /* synthetic */ void m3042a(zzj zzjVar, int i) {
            zzjVar.zzdl |= 1;
            zzjVar.zzbwv = i;
        }

        /* renamed from: a */
        static /* synthetic */ void m3041a(zzj zzjVar, long j) {
            zzjVar.zzdl |= 4;
            zzjVar.zzbwx = j;
        }

        /* renamed from: a */
        static /* synthetic */ void m3040a(zzj zzjVar, Iterable iterable) {
            if (!zzjVar.zzbui.zzaxp()) {
                zzjVar.zzbui = zzdrt.m3367a(zzjVar.zzbui);
            }
            List list = zzjVar.zzbui;
            zzdrv.m3351a(iterable);
            if (iterable instanceof zzdsl) {
                List<?> zzbav = ((zzdsl) iterable).zzbav();
                zzdsl zzdslVar = (zzdsl) list;
                int size = list.size();
                for (Object obj : zzbav) {
                    if (obj == null) {
                        int size2 = zzdslVar.size();
                        StringBuilder sb = new StringBuilder(37);
                        sb.append("Element at index ");
                        sb.append(size2 - size);
                        sb.append(" is null.");
                        String sb2 = sb.toString();
                        for (int size3 = zzdslVar.size() - 1; size3 >= size; size3--) {
                            zzdslVar.remove(size3);
                        }
                        throw new NullPointerException(sb2);
                    } else if (obj instanceof zzdqk) {
                        zzdslVar.zzbg((zzdqk) obj);
                    } else {
                        zzdslVar.add((String) obj);
                    }
                }
            } else if (iterable instanceof aje) {
                list.addAll((Collection) iterable);
            } else {
                if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                    ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
                }
                int size4 = list.size();
                for (Object obj2 : iterable) {
                    if (obj2 == null) {
                        int size5 = list.size();
                        StringBuilder sb3 = new StringBuilder(37);
                        sb3.append("Element at index ");
                        sb3.append(size5 - size4);
                        sb3.append(" is null.");
                        String sb4 = sb3.toString();
                        for (int size6 = list.size() - 1; size6 >= size4; size6--) {
                            list.remove(size6);
                        }
                        throw new NullPointerException(sb4);
                    }
                    list.add(obj2);
                }
            }
        }

        /* renamed from: a */
        static /* synthetic */ void m3039a(zzj zzjVar, String str) {
            str.getClass();
            zzjVar.zzdl |= 8;
            zzjVar.zzdm = str;
        }

        /* renamed from: b */
        static /* synthetic */ void m3038b(zzj zzjVar, int i) {
            zzjVar.zzdl |= 2;
            zzjVar.zzbww = i;
        }

        /* renamed from: b */
        static /* synthetic */ void m3037b(zzj zzjVar, long j) {
            zzjVar.zzdl |= 32;
            zzjVar.zzbwz = j;
        }

        /* renamed from: b */
        static /* synthetic */ void m3036b(zzj zzjVar, String str) {
            str.getClass();
            zzjVar.zzdl |= 16;
            zzjVar.zzbwy = str;
        }

        public static zzb zzno() {
            return zzbxa.m3360c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zzb((byte) 0);
                case 3:
                    return m3366a(zzbxa, "\u0001\u0007��\u0001\u0001\u0007\u0007��\u0001��\u0001\u001b\u0002\u0004��\u0003\u0004\u0001\u0004\u0002\u0002\u0005\b\u0003\u0006\b\u0004\u0007\u0002\u0005", new Object[]{"zzdl", "zzbui", zza.class, "zzbwv", "zzbww", "zzbwx", "zzdm", "zzbwy", "zzbwz"});
                case 4:
                    return zzbxa;
                case 5:
                    zzdtn<zzj> zzdtnVar = zzdz;
                    zzdtn<zzj> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzj.class) {
                            try {
                                zzdtn<zzj> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbxa);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzk.class */
    public static final class zzk extends zzdrt<zzk, zza> implements zzdtg {
        private static final zzk zzbyh;
        private static volatile zzdtn<zzk> zzdz;
        private int zzbxw = 1000;
        private int zzbxx = 1000;
        private int zzbxy;
        private int zzbxz;
        private int zzbya;
        private int zzbyb;
        private int zzbyc;
        private int zzbyd;
        private int zzbye;
        private int zzbyf;
        private zzl zzbyg;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzk$zza.class */
        public static final class zza extends zzdrt.zzb<zzk, zza> implements zzdtg {
            private zza() {
                super(zzk.zzbyh);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzbyh = zzkVar;
            zzdrt.m3364a(zzk.class, zzkVar);
        }

        private zzk() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbyh, "\u0001\u000b��\u0001\u0001\u000b\u000b������\u0001\f��\u0002\f\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004\u0006\u0004\u0005\u0007\u0004\u0006\b\u0004\u0007\t\u0004\b\n\u0004\t\u000b\t\n", new Object[]{"zzdl", "zzbxw", zzte.zzaf(), "zzbxx", zzte.zzaf(), "zzbxy", "zzbxz", "zzbya", "zzbyb", "zzbyc", "zzbyd", "zzbye", "zzbyf", "zzbyg"});
                case 4:
                    return zzbyh;
                case 5:
                    zzdtn<zzk> zzdtnVar = zzdz;
                    zzdtn<zzk> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzk.class) {
                            try {
                                zzdtn<zzk> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbyh);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzl.class */
    public static final class zzl extends zzdrt<zzl, zza> implements zzdtg {
        private static final zzl zzbyk;
        private static volatile zzdtn<zzl> zzdz;
        private int zzbyi;
        private int zzbyj;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzl$zza.class */
        public static final class zza extends zzdrt.zzb<zzl, zza> implements zzdtg {
            private zza() {
                super(zzl.zzbyk);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzl zzlVar = new zzl();
            zzbyk = zzlVar;
            zzdrt.m3364a(zzl.class, zzlVar);
        }

        private zzl() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzl();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbyk, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\u0004��\u0002\u0004\u0001", new Object[]{"zzdl", "zzbyi", "zzbyj"});
                case 4:
                    return zzbyk;
                case 5:
                    zzdtn<zzl> zzdtnVar = zzdz;
                    zzdtn<zzl> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzl.class) {
                            try {
                                zzdtn<zzl> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbyk);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzm.class */
    public static final class zzm extends zzdrt<zzm, zza> implements zzdtg {
        private static final zzm zzbyn;
        private static volatile zzdtn<zzm> zzdz;
        private int zzbyl;
        private int zzbym;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzm$zza.class */
        public static final class zza extends zzdrt.zzb<zzm, zza> implements zzdtg {
            private zza() {
                super(zzm.zzbyn);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzm zzmVar = new zzm();
            zzbyn = zzmVar;
            zzdrt.m3364a(zzm.class, zzmVar);
        }

        private zzm() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzm();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbyn, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\u0004��\u0002\u0004\u0001", new Object[]{"zzdl", "zzbyl", "zzbym"});
                case 4:
                    return zzbyn;
                case 5:
                    zzdtn<zzm> zzdtnVar = zzdz;
                    zzdtn<zzm> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzm.class) {
                            try {
                                zzdtn<zzm> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbyn);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzn.class */
    public static final class zzn extends zzdrt<zzn, zza> implements zzdtg {
        private static final zzn zzbyo;
        private static volatile zzdtn<zzn> zzdz;
        private String zzbvx = "";
        private int zzbvy;
        private zzo zzbwa;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzn$zza.class */
        public static final class zza extends zzdrt.zzb<zzn, zza> implements zzdtg {
            private zza() {
                super(zzn.zzbyo);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzn zznVar = new zzn();
            zzbyo = zznVar;
            zzdrt.m3364a(zzn.class, zznVar);
        }

        private zzn() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzn();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbyo, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\b��\u0002\f\u0001\u0003\t\u0002", new Object[]{"zzdl", "zzbvx", "zzbvy", zzte.zzaf(), "zzbwa"});
                case 4:
                    return zzbyo;
                case 5:
                    zzdtn<zzn> zzdtnVar = zzdz;
                    zzdtn<zzn> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzn.class) {
                            try {
                                zzdtn<zzn> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbyo);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzo.class */
    public static final class zzo extends zzdrt<zzo, zza> implements zzdtg {
        private static final zzo zzbyr;
        private static volatile zzdtn<zzo> zzdz;
        private int zzbyp;
        private int zzbyq;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzo$zza.class */
        public static final class zza extends zzdrt.zzb<zzo, zza> implements zzdtg {
            private zza() {
                super(zzo.zzbyr);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzo zzoVar = new zzo();
            zzbyr = zzoVar;
            zzdrt.m3364a(zzo.class, zzoVar);
        }

        private zzo() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzo();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbyr, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\u0004��\u0002\u0004\u0001", new Object[]{"zzdl", "zzbyp", "zzbyq"});
                case 4:
                    return zzbyr;
                case 5:
                    zzdtn<zzo> zzdtnVar = zzdz;
                    zzdtn<zzo> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzo.class) {
                            try {
                                zzdtn<zzo> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbyr);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzp.class */
    public static final class zzp extends zzdrt<zzp, zza> implements zzdtg {
        private static final zzp zzbyu;
        private static volatile zzdtn<zzp> zzdz;
        private int zzbwc = 1000;
        private zzq zzbys;
        private zzo zzbyt;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzp$zza.class */
        public static final class zza extends zzdrt.zzb<zzp, zza> implements zzdtg {
            private zza() {
                super(zzp.zzbyu);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzp zzpVar = new zzp();
            zzbyu = zzpVar;
            zzdrt.m3364a(zzp.class, zzpVar);
        }

        private zzp() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzp();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbyu, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\f��\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzdl", "zzbwc", zzte.zzaf(), "zzbys", "zzbyt"});
                case 4:
                    return zzbyu;
                case 5:
                    zzdtn<zzp> zzdtnVar = zzdz;
                    zzdtn<zzp> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzp.class) {
                            try {
                                zzdtn<zzp> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbyu);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzq.class */
    public static final class zzq extends zzdrt<zzq, zzb> implements zzdtg {
        private static final zzq zzbyw;
        private static volatile zzdtn<zzq> zzdz;
        private int zzbyv;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzq$zza.class */
        public enum zza implements zzdry {
            VIDEO_ERROR_CODE_UNSPECIFIED(0),
            OPENGL_RENDERING_FAILED(1),
            CACHE_LOAD_FAILED(2),
            ANDROID_TARGET_API_TOO_LOW(3);
            

            /* renamed from: e */
            private static final zzdrx<zza> f15495e = new ari();

            /* renamed from: f */
            private final int f15497f;

            zza(int i) {
                this.f15497f = i;
            }

            public static zzdsa zzaf() {
                return arh.f8196a;
            }

            public static zza zzch(int i) {
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

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f15497f + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f15497f;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzq$zzb.class */
        public static final class zzb extends zzdrt.zzb<zzq, zzb> implements zzdtg {
            private zzb() {
                super(zzq.zzbyw);
            }

            /* synthetic */ zzb(byte b) {
                this();
            }
        }

        static {
            zzq zzqVar = new zzq();
            zzbyw = zzqVar;
            zzdrt.m3364a(zzq.class, zzqVar);
        }

        private zzq() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzq();
                case 2:
                    return new zzb((byte) 0);
                case 3:
                    return m3366a(zzbyw, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001\f��", new Object[]{"zzdl", "zzbyv", zza.zzaf()});
                case 4:
                    return zzbyw;
                case 5:
                    zzdtn<zzq> zzdtnVar = zzdz;
                    zzdtn<zzq> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzq.class) {
                            try {
                                zzdtn<zzq> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbyw);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzr.class */
    public static final class zzr extends zzdrt<zzr, zza> implements zzdtg {
        private static final zzr zzbzf;
        private static volatile zzdtn<zzr> zzdz;
        private int zzbwc = 1000;
        private zzq zzbys;
        private int zzbzc;
        private int zzbzd;
        private int zzbze;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzr$zza.class */
        public static final class zza extends zzdrt.zzb<zzr, zza> implements zzdtg {
            private zza() {
                super(zzr.zzbzf);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzr zzrVar = new zzr();
            zzbzf = zzrVar;
            zzdrt.m3364a(zzr.class, zzrVar);
        }

        private zzr() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzr();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbzf, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001\f��\u0002\t\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004", new Object[]{"zzdl", "zzbwc", zzte.zzaf(), "zzbys", "zzbzc", "zzbzd", "zzbze"});
                case 4:
                    return zzbzf;
                case 5:
                    zzdtn<zzr> zzdtnVar = zzdz;
                    zzdtn<zzr> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzr.class) {
                            try {
                                zzdtn<zzr> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbzf);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzs.class */
    public static final class zzs extends zzdrt<zzs, zza> implements zzdtg {
        private static final zzs zzbzg;
        private static volatile zzdtn<zzs> zzdz;
        private int zzbwc = 1000;
        private zzq zzbys;
        private zzo zzbyt;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzs$zza.class */
        public static final class zza extends zzdrt.zzb<zzs, zza> implements zzdtg {
            private zza() {
                super(zzs.zzbzg);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzs zzsVar = new zzs();
            zzbzg = zzsVar;
            zzdrt.m3364a(zzs.class, zzsVar);
        }

        private zzs() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzs();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbzg, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\f��\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzdl", "zzbwc", zzte.zzaf(), "zzbys", "zzbyt"});
                case 4:
                    return zzbzg;
                case 5:
                    zzdtn<zzs> zzdtnVar = zzdz;
                    zzdtn<zzs> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzs.class) {
                            try {
                                zzdtn<zzs> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbzg);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzt.class */
    public static final class zzt extends zzdrt<zzt, zza> implements zzdtg {
        private static final zzt zzbzi;
        private static volatile zzdtn<zzt> zzdz;
        private int zzbwc = 1000;
        private zzq zzbys;
        private int zzbzc;
        private int zzbzd;
        private int zzbze;
        private long zzbzh;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzt$zza.class */
        public static final class zza extends zzdrt.zzb<zzt, zza> implements zzdtg {
            private zza() {
                super(zzt.zzbzi);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzt zztVar = new zzt();
            zzbzi = zztVar;
            zzdrt.m3364a(zzt.class, zztVar);
        }

        private zzt() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzt();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbzi, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001\f��\u0002\t\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004\u0006\u0003\u0005", new Object[]{"zzdl", "zzbwc", zzte.zzaf(), "zzbys", "zzbzc", "zzbzd", "zzbze", "zzbzh"});
                case 4:
                    return zzbzi;
                case 5:
                    zzdtn<zzt> zzdtnVar = zzdz;
                    zzdtn<zzt> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzt.class) {
                            try {
                                zzdtn<zzt> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbzi);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzu.class */
    public static final class zzu extends zzdrt<zzu, zza> implements zzdtg {
        private static final zzu zzbzj;
        private static volatile zzdtn<zzu> zzdz;
        private int zzbwc = 1000;
        private zzq zzbys;
        private zzo zzbyt;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzu$zza.class */
        public static final class zza extends zzdrt.zzb<zzu, zza> implements zzdtg {
            private zza() {
                super(zzu.zzbzj);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzu zzuVar = new zzu();
            zzbzj = zzuVar;
            zzdrt.m3364a(zzu.class, zzuVar);
        }

        private zzu() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzu();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbzj, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\f��\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzdl", "zzbwc", zzte.zzaf(), "zzbys", "zzbyt"});
                case 4:
                    return zzbzj;
                case 5:
                    zzdtn<zzu> zzdtnVar = zzdz;
                    zzdtn<zzu> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzu.class) {
                            try {
                                zzdtn<zzu> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbzj);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzv.class */
    public static final class zzv extends zzdrt<zzv, zza> implements zzdtg {
        private static final zzv zzbzk;
        private static volatile zzdtn<zzv> zzdz;
        private int zzbwc = 1000;
        private zzq zzbys;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzv$zza.class */
        public static final class zza extends zzdrt.zzb<zzv, zza> implements zzdtg {
            private zza() {
                super(zzv.zzbzk);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzv zzvVar = new zzv();
            zzbzk = zzvVar;
            zzdrt.m3364a(zzv.class, zzvVar);
        }

        private zzv() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzv();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbzk, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\f��\u0002\t\u0001", new Object[]{"zzdl", "zzbwc", zzte.zzaf(), "zzbys"});
                case 4:
                    return zzbzk;
                case 5:
                    zzdtn<zzv> zzdtnVar = zzdz;
                    zzdtn<zzv> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzv.class) {
                            try {
                                zzdtn<zzv> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbzk);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzw.class */
    public static final class zzw extends zzdrt<zzw, zza> implements zzdtg {
        private static final zzw zzbzn;
        private static volatile zzdtn<zzw> zzdz;
        private boolean zzbzl;
        private int zzbzm;
        private int zzdl;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsy$zzw$zza.class */
        public static final class zza extends zzdrt.zzb<zzw, zza> implements zzdtg {
            private zza() {
                super(zzw.zzbzn);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zzci(int i) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzw.m3008a((zzw) this.f14556a, i);
                return this;
            }

            public final boolean zzof() {
                return ((zzw) this.f14556a).zzof();
            }

            public final zza zzw(boolean z) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzw.m3007a((zzw) this.f14556a, z);
                return this;
            }
        }

        static {
            zzw zzwVar = new zzw();
            zzbzn = zzwVar;
            zzdrt.m3364a(zzw.class, zzwVar);
        }

        private zzw() {
        }

        /* renamed from: a */
        static /* synthetic */ void m3008a(zzw zzwVar, int i) {
            zzwVar.zzdl |= 2;
            zzwVar.zzbzm = i;
        }

        /* renamed from: a */
        static /* synthetic */ void m3007a(zzw zzwVar, boolean z) {
            zzwVar.zzdl |= 1;
            zzwVar.zzbzl = z;
        }

        public static zza zzog() {
            return zzbzn.m3360c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqs.f8183a[i - 1]) {
                case 1:
                    return new zzw();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzbzn, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\u0007��\u0002\u0004\u0001", new Object[]{"zzdl", "zzbzl", "zzbzm"});
                case 4:
                    return zzbzn;
                case 5:
                    zzdtn<zzw> zzdtnVar = zzdz;
                    zzdtn<zzw> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzw.class) {
                            try {
                                zzdtn<zzw> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbzn);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final boolean zzof() {
            return this.zzbzl;
        }
    }
}
