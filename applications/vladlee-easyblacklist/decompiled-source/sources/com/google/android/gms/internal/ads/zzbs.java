package com.google.android.gms.internal.ads;

import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs.class */
public final class zzbs {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zza.class */
    public static final class zza extends zzdrt<zza, zzb> implements zzdtg {
        private static volatile zzdtn<zza> zzdz;
        private static final zza zzht;
        private int zzdl;
        private int zzex;
        private int zzey;
        private long zzfa;
        private long zzfb;
        private long zzfc;
        private long zzfd;
        private long zzfe;
        private long zzff;
        private long zzfg;
        private long zzfh;
        private long zzfi;
        private long zzfj;
        private long zzfl;
        private long zzfm;
        private long zzfn;
        private long zzfo;
        private long zzfp;
        private long zzfq;
        private long zzfr;
        private long zzfs;
        private long zzft;
        private long zzfw;
        private long zzfx;
        private long zzfy;
        private long zzfz;
        private zzb zzgc;
        private zze zzgs;
        private zzf zzgu;
        private int zzhf;
        private int zzhg;
        private int zzhh;
        private zze zzhi;
        private long zzhm;
        private boolean zzhp;
        private long zzhr;
        private zzd zzhs;
        private String zzez = "";
        private String zzdv = "";
        private String zzfk = "";
        private String zzep = "";
        private String zzfu = "D";
        private String zzfv = "";
        private String zzer = "";
        private long zzga = -1;
        private long zzgb = -1;
        private long zzgd = -1;
        private long zzge = -1;
        private long zzgf = -1;
        private long zzgg = -1;
        private long zzgh = -1;
        private long zzgi = -1;
        private String zzes = "D";
        private String zzet = "D";
        private long zzgj = -1;
        private int zzgk = 1000;
        private int zzgl = 1000;
        private long zzgm = -1;
        private long zzgn = -1;
        private long zzgo = -1;
        private long zzgp = -1;
        private long zzgq = -1;
        private int zzgr = 1000;
        private zzdsb<zze> zzgt = ajg.m5241b();
        private long zzgv = -1;
        private long zzgw = -1;
        private long zzgx = -1;
        private long zzgy = -1;
        private long zzgz = -1;
        private long zzha = -1;
        private long zzhb = -1;
        private long zzhc = -1;
        private String zzhd = "D";
        private long zzhe = -1;
        private long zzhj = -1;
        private int zzhk = 1000;
        private int zzhl = 1000;
        private String zzhn = "";
        private int zzho = 2;
        private String zzhq = "";

        /* renamed from: com.google.android.gms.internal.ads.zzbs$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zza$zza.class */
        public enum EnumC3492zza implements zzdry {
            DEBUGGER_STATE_UNSPECIFIED(0),
            DEBUGGER_STATE_NOT_INSTALLED(1),
            DEBUGGER_STATE_INSTALLED(2),
            DEBUGGER_STATE_ACTIVE(3),
            DEBUGGER_STATE_ENVVAR(4),
            DEBUGGER_STATE_MACHPORT(5),
            DEBUGGER_STATE_ENVVAR_MACHPORT(6);
            

            /* renamed from: h */
            private static final zzdrx<EnumC3492zza> f12316h = new C2094np();

            /* renamed from: i */
            private final int f12318i;

            EnumC3492zza(int i) {
                this.f12318i = i;
            }

            public static zzdsa zzaf() {
                return C2093no.f10246a;
            }

            public static EnumC3492zza zzg(int i) {
                switch (i) {
                    case 0:
                        return DEBUGGER_STATE_UNSPECIFIED;
                    case 1:
                        return DEBUGGER_STATE_NOT_INSTALLED;
                    case 2:
                        return DEBUGGER_STATE_INSTALLED;
                    case 3:
                        return DEBUGGER_STATE_ACTIVE;
                    case 4:
                        return DEBUGGER_STATE_ENVVAR;
                    case 5:
                        return DEBUGGER_STATE_MACHPORT;
                    case 6:
                        return DEBUGGER_STATE_ENVVAR_MACHPORT;
                    default:
                        return null;
                }
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f12318i + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f12318i;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zza$zzb.class */
        public static final class zzb extends zzdrt.zzb<zza, zzb> implements zzdtg {
            private zzb() {
                super(zza.zzht);
            }

            /* synthetic */ zzb(byte b) {
                this();
            }

            public final zzb zzaf(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3969a((zza) this.f14556a, str);
                return this;
            }

            public final zzb zzag(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3964b((zza) this.f14556a, str);
                return this;
            }

            public final zzb zzah(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3961c((zza) this.f14556a, str);
                return this;
            }

            public final zzb zzai(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3958d((zza) this.f14556a, str);
                return this;
            }

            public final zzb zzaj(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3956e((zza) this.f14556a, str);
                return this;
            }

            public final zzb zzak(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3954f((zza) this.f14556a, str);
                return this;
            }

            public final zzb zzal(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3974a((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzal(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3952g((zza) this.f14556a, str);
                return this;
            }

            public final zzb zzam(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3967b((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzam(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3950h((zza) this.f14556a, str);
                return this;
            }

            public final zzb zzan(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3963c((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzan(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3948i((zza) this.f14556a, str);
                return this;
            }

            public final zzb zzao(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3960d((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzap() {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3975a((zza) this.f14556a);
                return this;
            }

            public final zzb zzap(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3957e((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzaq(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3955f((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzar(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3953g((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzas(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3951h((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzat(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3949i((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzau(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3947j((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzav(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3946k((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzaw(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3945l((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzax(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3944m((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzay(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3943n((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzaz(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3942o((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzb(zzc zzcVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3973a((zza) this.f14556a, zzcVar);
                return this;
            }

            public final zzb zzb(zzf zzfVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3971a((zza) this.f14556a, zzfVar);
                return this;
            }

            public final zzb zzb(boolean z) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3968a((zza) this.f14556a, z);
                return this;
            }

            public final zzb zzba(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3941p((zza) this.f14556a, j);
                return this;
            }

            @Deprecated
            public final zzb zzbb(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3940q((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbc(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3939r((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbd(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3938s((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbe(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3937t((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbf(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3936u((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbg(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3935v((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbh(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3934w((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbi(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3933x((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbj(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3932y((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbk(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3931z((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbl(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3983A((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbm(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3982B((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbn(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3981C((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbo(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3980D((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbp(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3979E((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbq(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3978F((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzbr(long j) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3977G((zza) this.f14556a, j);
                return this;
            }

            public final zzb zzc(zze zzeVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3972a((zza) this.f14556a, zzeVar);
                return this;
            }

            public final zzb zzd(zze zzeVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3966b((zza) this.f14556a, zzeVar);
                return this;
            }

            public final zzb zze(zzcd zzcdVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3970a((zza) this.f14556a, zzcdVar);
                return this;
            }

            public final zzb zzf(zzcd zzcdVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3965b((zza) this.f14556a, zzcdVar);
                return this;
            }

            public final zzb zzg(zzcd zzcdVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3962c((zza) this.f14556a, zzcdVar);
                return this;
            }

            public final zzb zzh(zzcd zzcdVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zza.m3959d((zza) this.f14556a, zzcdVar);
                return this;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zza$zzc.class */
        public enum zzc implements zzdry {
            DEVICE_IDENTIFIER_NO_ID(0),
            DEVICE_IDENTIFIER_APP_SPECIFIC_ID(1),
            DEVICE_IDENTIFIER_GLOBAL_ID(2),
            DEVICE_IDENTIFIER_ADVERTISER_ID(3),
            DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED(4),
            DEVICE_IDENTIFIER_ANDROID_AD_ID(5),
            DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID(6);
            

            /* renamed from: g */
            private static final zzdrx<zzc> f12325g = new C2098nt();

            /* renamed from: h */
            private final int f12327h;

            zzc(int i) {
                this.f12327h = i;
            }

            public static zzdsa zzaf() {
                return C2103ny.f10259a;
            }

            public static zzc zzh(int i) {
                switch (i) {
                    case 0:
                        return DEVICE_IDENTIFIER_NO_ID;
                    case 1:
                        return DEVICE_IDENTIFIER_APP_SPECIFIC_ID;
                    case 2:
                        return DEVICE_IDENTIFIER_GLOBAL_ID;
                    case 3:
                        return DEVICE_IDENTIFIER_ADVERTISER_ID;
                    case 4:
                        return DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED;
                    case 5:
                        return DEVICE_IDENTIFIER_ANDROID_AD_ID;
                    case 6:
                        return DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID;
                    default:
                        return null;
                }
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f12327h + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f12327h;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zza$zzd.class */
        public enum zzd implements zzdry {
            ERROR_ENCODE_SIZE_FAIL(1),
            ERROR_UNKNOWN(3),
            ERROR_NO_SIGNALS(5),
            ERROR_ENCRYPTION(7),
            ERROR_MEMORY(9),
            ERROR_SIMULATOR(11),
            ERROR_SERVICE(13),
            ERROR_THREAD(15),
            PSN_WEB64_FAIL(2),
            PSN_DECRYPT_SIZE_FAIL(4),
            PSN_MD5_CHECK_FAIL(8),
            PSN_MD5_SIZE_FAIL(16),
            PSN_MD5_FAIL(32),
            PSN_DECODE_FAIL(64),
            PSN_SALT_FAIL(128),
            PSN_BITSLICER_FAIL(256),
            PSN_REQUEST_TYPE_FAIL(AdRequest.MAX_CONTENT_URL_LENGTH),
            PSN_INVALID_ERROR_CODE(1024),
            PSN_TIMESTAMP_EXPIRED(2048),
            PSN_ENCODE_SIZE_FAIL(CodedOutputStream.DEFAULT_BUFFER_SIZE),
            PSN_BLANK_VALUE(8192),
            PSN_INITIALIZATION_FAIL(16384),
            PSN_GASS_CLIENT_FAIL(32768),
            PSN_SIGNALS_TIMEOUT(65536),
            PSN_TINK_FAIL(131072);
            

            /* renamed from: x */
            private static final zzdrx<zzd> f12351x = new C2116ok();

            /* renamed from: y */
            private final int f12353y;

            zzd(int i) {
                this.f12353y = i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f12353y + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f12353y;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zza$zze.class */
        public static final class zze extends zzdrt<zze, C3493zza> implements zzdtg {
            private static volatile zzdtn<zze> zzdz;
            private static final zze zzkd;
            private int zzdl;
            private long zzjx;
            private long zzjy;
            private long zzfl = -1;
            private long zzfm = -1;
            private long zzjk = -1;
            private long zzjl = -1;
            private long zzjm = -1;
            private long zzjn = -1;
            private int zzjo = 1000;
            private long zzjp = -1;
            private long zzjq = -1;
            private long zzjr = -1;
            private int zzjs = 1000;
            private long zzjt = -1;
            private long zzju = -1;
            private long zzjv = -1;
            private long zzjw = -1;
            private long zzjz = -1;
            private long zzka = -1;
            private long zzkb = -1;
            private long zzkc = -1;

            /* renamed from: com.google.android.gms.internal.ads.zzbs$zza$zze$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zza$zze$zza.class */
            public static final class C3493zza extends zzdrt.zzb<zze, C3493zza> implements zzdtg {
                private C3493zza() {
                    super(zze.zzkd);
                }

                /* synthetic */ C3493zza(byte b) {
                    this();
                }

                public final C3493zza zzav() {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3929a((zze) this.f14556a);
                    return this;
                }

                public final C3493zza zzcl(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3928a((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcm(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3926b((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcn(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3924c((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzco(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3923d((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcp(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3922e((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcq(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3921f((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcr(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3920g((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcs(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3919h((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzct(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3918i((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcu(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3917j((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcv(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3916k((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcw(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3915l((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcx(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3914m((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcy(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3913n((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzcz(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3912o((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzda(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3911p((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzdb(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3910q((zze) this.f14556a, j);
                    return this;
                }

                public final C3493zza zzk(zzcd zzcdVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3927a((zze) this.f14556a, zzcdVar);
                    return this;
                }

                public final C3493zza zzl(zzcd zzcdVar) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zze.m3925b((zze) this.f14556a, zzcdVar);
                    return this;
                }
            }

            static {
                zze zzeVar = new zze();
                zzkd = zzeVar;
                zzdrt.m3364a(zze.class, zzeVar);
            }

            private zze() {
            }

            /* renamed from: a */
            static /* synthetic */ void m3929a(zze zzeVar) {
                zzeVar.zzdl &= -9;
                zzeVar.zzjl = -1L;
            }

            /* renamed from: a */
            static /* synthetic */ void m3928a(zze zzeVar, long j) {
                zzeVar.zzdl |= 1;
                zzeVar.zzfl = j;
            }

            /* renamed from: a */
            static /* synthetic */ void m3927a(zze zzeVar, zzcd zzcdVar) {
                zzeVar.zzjo = zzcdVar.zzae();
                zzeVar.zzdl |= 64;
            }

            /* renamed from: b */
            static /* synthetic */ void m3926b(zze zzeVar, long j) {
                zzeVar.zzdl |= 2;
                zzeVar.zzfm = j;
            }

            /* renamed from: b */
            static /* synthetic */ void m3925b(zze zzeVar, zzcd zzcdVar) {
                zzeVar.zzjs = zzcdVar.zzae();
                zzeVar.zzdl |= 1024;
            }

            /* renamed from: c */
            static /* synthetic */ void m3924c(zze zzeVar, long j) {
                zzeVar.zzdl |= 4;
                zzeVar.zzjk = j;
            }

            /* renamed from: d */
            static /* synthetic */ void m3923d(zze zzeVar, long j) {
                zzeVar.zzdl |= 8;
                zzeVar.zzjl = j;
            }

            /* renamed from: e */
            static /* synthetic */ void m3922e(zze zzeVar, long j) {
                zzeVar.zzdl |= 16;
                zzeVar.zzjm = j;
            }

            /* renamed from: f */
            static /* synthetic */ void m3921f(zze zzeVar, long j) {
                zzeVar.zzdl |= 32;
                zzeVar.zzjn = j;
            }

            /* renamed from: g */
            static /* synthetic */ void m3920g(zze zzeVar, long j) {
                zzeVar.zzdl |= 128;
                zzeVar.zzjp = j;
            }

            /* renamed from: h */
            static /* synthetic */ void m3919h(zze zzeVar, long j) {
                zzeVar.zzdl |= 256;
                zzeVar.zzjq = j;
            }

            /* renamed from: i */
            static /* synthetic */ void m3918i(zze zzeVar, long j) {
                zzeVar.zzdl |= AdRequest.MAX_CONTENT_URL_LENGTH;
                zzeVar.zzjr = j;
            }

            /* renamed from: j */
            static /* synthetic */ void m3917j(zze zzeVar, long j) {
                zzeVar.zzdl |= 2048;
                zzeVar.zzjt = j;
            }

            /* renamed from: k */
            static /* synthetic */ void m3916k(zze zzeVar, long j) {
                zzeVar.zzdl |= CodedOutputStream.DEFAULT_BUFFER_SIZE;
                zzeVar.zzju = j;
            }

            /* renamed from: l */
            static /* synthetic */ void m3915l(zze zzeVar, long j) {
                zzeVar.zzdl |= 8192;
                zzeVar.zzjv = j;
            }

            /* renamed from: m */
            static /* synthetic */ void m3914m(zze zzeVar, long j) {
                zzeVar.zzdl |= 16384;
                zzeVar.zzjw = j;
            }

            /* renamed from: n */
            static /* synthetic */ void m3913n(zze zzeVar, long j) {
                zzeVar.zzdl |= 32768;
                zzeVar.zzjx = j;
            }

            /* renamed from: o */
            static /* synthetic */ void m3912o(zze zzeVar, long j) {
                zzeVar.zzdl |= 65536;
                zzeVar.zzjy = j;
            }

            /* renamed from: p */
            static /* synthetic */ void m3911p(zze zzeVar, long j) {
                zzeVar.zzdl |= 131072;
                zzeVar.zzjz = j;
            }

            /* renamed from: q */
            static /* synthetic */ void m3910q(zze zzeVar, long j) {
                zzeVar.zzdl |= 262144;
                zzeVar.zzka = j;
            }

            public static C3493zza zzar() {
                return zzkd.m3360c();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                switch (C2081nc.f10231a[i - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new C3493zza((byte) 0);
                    case 3:
                        return m3366a(zzkd, "\u0001\u0015��\u0001\u0001\u0015\u0015������\u0001\u0002��\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005\u0007\f\u0006\b\u0002\u0007\t\u0002\b\n\u0002\t\u000b\f\n\f\u0002\u000b\r\u0002\f\u000e\u0002\r\u000f\u0002\u000e\u0010\u0002\u000f\u0011\u0002\u0010\u0012\u0002\u0011\u0013\u0002\u0012\u0014\u0002\u0013\u0015\u0002\u0014", new Object[]{"zzdl", "zzfl", "zzfm", "zzjk", "zzjl", "zzjm", "zzjn", "zzjo", zzcd.zzaf(), "zzjp", "zzjq", "zzjr", "zzjs", zzcd.zzaf(), "zzjt", "zzju", "zzjv", "zzjw", "zzjx", "zzjy", "zzjz", "zzka", "zzkb", "zzkc"});
                    case 4:
                        return zzkd;
                    case 5:
                        zzdtn<zze> zzdtnVar = zzdz;
                        zzdtn<zze> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zze.class) {
                                try {
                                    zzdtn<zze> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzkd);
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

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zza$zzf.class */
        public static final class zzf extends zzdrt<zzf, C3494zza> implements zzdtg {
            private static volatile zzdtn<zzf> zzdz;
            private static final zzf zzki;
            private int zzdl;
            private long zzgp = -1;
            private long zzgq = -1;
            private long zzke = -1;
            private long zzkf = -1;
            private long zzkg = -1;
            private long zzkh = -1;

            /* renamed from: com.google.android.gms.internal.ads.zzbs$zza$zzf$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zza$zzf$zza.class */
            public static final class C3494zza extends zzdrt.zzb<zzf, C3494zza> implements zzdtg {
                private C3494zza() {
                    super(zzf.zzki);
                }

                /* synthetic */ C3494zza(byte b) {
                    this();
                }

                public final C3494zza zzdc(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzf.m3908a((zzf) this.f14556a, j);
                    return this;
                }

                public final C3494zza zzdd(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzf.m3907b((zzf) this.f14556a, j);
                    return this;
                }

                public final C3494zza zzde(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzf.m3906c((zzf) this.f14556a, j);
                    return this;
                }

                public final C3494zza zzdf(long j) {
                    if (this.f14557b) {
                        m3359a();
                        this.f14557b = false;
                    }
                    zzf.m3905d((zzf) this.f14556a, j);
                    return this;
                }
            }

            static {
                zzf zzfVar = new zzf();
                zzki = zzfVar;
                zzdrt.m3364a(zzf.class, zzfVar);
            }

            private zzf() {
            }

            /* renamed from: a */
            static /* synthetic */ void m3908a(zzf zzfVar, long j) {
                zzfVar.zzdl |= 4;
                zzfVar.zzke = j;
            }

            /* renamed from: b */
            static /* synthetic */ void m3907b(zzf zzfVar, long j) {
                zzfVar.zzdl |= 8;
                zzfVar.zzkf = j;
            }

            /* renamed from: c */
            static /* synthetic */ void m3906c(zzf zzfVar, long j) {
                zzfVar.zzdl |= 16;
                zzfVar.zzkg = j;
            }

            /* renamed from: d */
            static /* synthetic */ void m3905d(zzf zzfVar, long j) {
                zzfVar.zzdl |= 32;
                zzfVar.zzkh = j;
            }

            public static C3494zza zzat() {
                return zzki.m3360c();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzdrt
            /* renamed from: a */
            public final Object mo3009a(int i, Object obj) {
                switch (C2081nc.f10231a[i - 1]) {
                    case 1:
                        return new zzf();
                    case 2:
                        return new C3494zza((byte) 0);
                    case 3:
                        return m3366a(zzki, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001\u0002��\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005", new Object[]{"zzdl", "zzgp", "zzgq", "zzke", "zzkf", "zzkg", "zzkh"});
                    case 4:
                        return zzki;
                    case 5:
                        zzdtn<zzf> zzdtnVar = zzdz;
                        zzdtn<zzf> zzdtnVar2 = zzdtnVar;
                        if (zzdtnVar == null) {
                            synchronized (zzf.class) {
                                try {
                                    zzdtn<zzf> zzdtnVar3 = zzdz;
                                    zzdtnVar2 = zzdtnVar3;
                                    if (zzdtnVar3 == null) {
                                        zzdtnVar2 = new zzdrt.zza<>(zzki);
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
            zzht = zzaVar;
            zzdrt.m3364a(zza.class, zzaVar);
        }

        private zza() {
        }

        /* renamed from: A */
        static /* synthetic */ void m3983A(zza zzaVar, long j) {
            zzaVar.zzex |= 16384;
            zzaVar.zzgo = j;
        }

        /* renamed from: B */
        static /* synthetic */ void m3982B(zza zzaVar, long j) {
            zzaVar.zzex |= 2097152;
            zzaVar.zzgw = j;
        }

        /* renamed from: C */
        static /* synthetic */ void m3981C(zza zzaVar, long j) {
            zzaVar.zzex |= 4194304;
            zzaVar.zzgx = j;
        }

        /* renamed from: D */
        static /* synthetic */ void m3980D(zza zzaVar, long j) {
            zzaVar.zzex |= 8388608;
            zzaVar.zzgy = j;
        }

        /* renamed from: E */
        static /* synthetic */ void m3979E(zza zzaVar, long j) {
            zzaVar.zzex |= 67108864;
            zzaVar.zzhb = j;
        }

        /* renamed from: F */
        static /* synthetic */ void m3978F(zza zzaVar, long j) {
            zzaVar.zzex |= 134217728;
            zzaVar.zzhc = j;
        }

        /* renamed from: G */
        static /* synthetic */ void m3977G(zza zzaVar, long j) {
            zzaVar.zzey |= 1024;
            zzaVar.zzhr = j;
        }

        /* renamed from: a */
        static /* synthetic */ void m3975a(zza zzaVar) {
            zzaVar.zzgt = ajg.m5241b();
        }

        /* renamed from: a */
        static /* synthetic */ void m3974a(zza zzaVar, long j) {
            zzaVar.zzdl |= 4;
            zzaVar.zzfa = j;
        }

        /* renamed from: a */
        static /* synthetic */ void m3973a(zza zzaVar, zzc zzcVar) {
            zzaVar.zzho = zzcVar.zzae();
            zzaVar.zzey |= 128;
        }

        /* renamed from: a */
        static /* synthetic */ void m3972a(zza zzaVar, zze zzeVar) {
            zzeVar.getClass();
            zzaVar.zzgs = zzeVar;
            zzaVar.zzex |= 262144;
        }

        /* renamed from: a */
        static /* synthetic */ void m3971a(zza zzaVar, zzf zzfVar) {
            zzfVar.getClass();
            zzaVar.zzgu = zzfVar;
            zzaVar.zzex |= 524288;
        }

        /* renamed from: a */
        static /* synthetic */ void m3970a(zza zzaVar, zzcd zzcdVar) {
            zzaVar.zzgk = zzcdVar.zzae();
            zzaVar.zzex |= 1024;
        }

        /* renamed from: a */
        static /* synthetic */ void m3969a(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzdl |= 1;
            zzaVar.zzez = str;
        }

        /* renamed from: a */
        static /* synthetic */ void m3968a(zza zzaVar, boolean z) {
            zzaVar.zzey |= 256;
            zzaVar.zzhp = z;
        }

        /* renamed from: b */
        static /* synthetic */ void m3967b(zza zzaVar, long j) {
            zzaVar.zzdl |= 16;
            zzaVar.zzfc = j;
        }

        /* renamed from: b */
        static /* synthetic */ void m3966b(zza zzaVar, zze zzeVar) {
            zzeVar.getClass();
            if (!zzaVar.zzgt.zzaxp()) {
                zzaVar.zzgt = zzdrt.m3367a(zzaVar.zzgt);
            }
            zzaVar.zzgt.add(zzeVar);
        }

        /* renamed from: b */
        static /* synthetic */ void m3965b(zza zzaVar, zzcd zzcdVar) {
            zzaVar.zzgl = zzcdVar.zzae();
            zzaVar.zzex |= 2048;
        }

        /* renamed from: b */
        static /* synthetic */ void m3964b(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzdl |= 2;
            zzaVar.zzdv = str;
        }

        /* renamed from: c */
        static /* synthetic */ void m3963c(zza zzaVar, long j) {
            zzaVar.zzdl |= 32;
            zzaVar.zzfd = j;
        }

        /* renamed from: c */
        static /* synthetic */ void m3962c(zza zzaVar, zzcd zzcdVar) {
            zzaVar.zzgr = zzcdVar.zzae();
            zzaVar.zzex |= 131072;
        }

        /* renamed from: c */
        static /* synthetic */ void m3961c(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzdl |= 4194304;
            zzaVar.zzep = str;
        }

        /* renamed from: d */
        static /* synthetic */ void m3960d(zza zzaVar, long j) {
            zzaVar.zzdl |= 1024;
            zzaVar.zzfi = j;
        }

        /* renamed from: d */
        static /* synthetic */ void m3959d(zza zzaVar, zzcd zzcdVar) {
            zzaVar.zzhk = zzcdVar.zzae();
            zzaVar.zzey |= 8;
        }

        /* renamed from: d */
        static /* synthetic */ void m3958d(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzdl |= 16777216;
            zzaVar.zzfv = str;
        }

        /* renamed from: e */
        static /* synthetic */ void m3957e(zza zzaVar, long j) {
            zzaVar.zzdl |= 2048;
            zzaVar.zzfj = j;
        }

        /* renamed from: e */
        static /* synthetic */ void m3956e(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzdl |= 268435456;
            zzaVar.zzer = str;
        }

        /* renamed from: f */
        static /* synthetic */ void m3955f(zza zzaVar, long j) {
            zzaVar.zzdl |= 8192;
            zzaVar.zzfl = j;
        }

        /* renamed from: f */
        static /* synthetic */ void m3954f(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzex |= 128;
            zzaVar.zzes = str;
        }

        /* renamed from: g */
        static /* synthetic */ void m3953g(zza zzaVar, long j) {
            zzaVar.zzdl |= 16384;
            zzaVar.zzfm = j;
        }

        /* renamed from: g */
        static /* synthetic */ void m3952g(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzex |= 256;
            zzaVar.zzet = str;
        }

        /* renamed from: h */
        static /* synthetic */ void m3951h(zza zzaVar, long j) {
            zzaVar.zzdl |= 32768;
            zzaVar.zzfn = j;
        }

        /* renamed from: h */
        static /* synthetic */ void m3950h(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzex |= 268435456;
            zzaVar.zzhd = str;
        }

        /* renamed from: i */
        static /* synthetic */ void m3949i(zza zzaVar, long j) {
            zzaVar.zzdl |= 65536;
            zzaVar.zzfo = j;
        }

        /* renamed from: i */
        static /* synthetic */ void m3948i(zza zzaVar, String str) {
            str.getClass();
            zzaVar.zzey |= 64;
            zzaVar.zzhn = str;
        }

        /* renamed from: j */
        static /* synthetic */ void m3947j(zza zzaVar, long j) {
            zzaVar.zzdl |= 524288;
            zzaVar.zzfr = j;
        }

        /* renamed from: k */
        static /* synthetic */ void m3946k(zza zzaVar, long j) {
            zzaVar.zzdl |= 1048576;
            zzaVar.zzfs = j;
        }

        /* renamed from: l */
        static /* synthetic */ void m3945l(zza zzaVar, long j) {
            zzaVar.zzdl |= 2097152;
            zzaVar.zzft = j;
        }

        /* renamed from: m */
        static /* synthetic */ void m3944m(zza zzaVar, long j) {
            zzaVar.zzdl |= 33554432;
            zzaVar.zzfw = j;
        }

        /* renamed from: n */
        static /* synthetic */ void m3943n(zza zzaVar, long j) {
            zzaVar.zzdl |= 67108864;
            zzaVar.zzfx = j;
        }

        /* renamed from: o */
        static /* synthetic */ void m3942o(zza zzaVar, long j) {
            zzaVar.zzdl |= 134217728;
            zzaVar.zzfy = j;
        }

        /* renamed from: p */
        static /* synthetic */ void m3941p(zza zzaVar, long j) {
            zzaVar.zzdl |= 536870912;
            zzaVar.zzfz = j;
        }

        /* renamed from: q */
        static /* synthetic */ void m3940q(zza zzaVar, long j) {
            zzaVar.zzdl |= 1073741824;
            zzaVar.zzga = j;
        }

        /* renamed from: r */
        static /* synthetic */ void m3939r(zza zzaVar, long j) {
            zzaVar.zzdl |= Integer.MIN_VALUE;
            zzaVar.zzgb = j;
        }

        /* renamed from: s */
        static /* synthetic */ void m3938s(zza zzaVar, long j) {
            zzaVar.zzex |= 2;
            zzaVar.zzgd = j;
        }

        /* renamed from: t */
        static /* synthetic */ void m3937t(zza zzaVar, long j) {
            zzaVar.zzex |= 4;
            zzaVar.zzge = j;
        }

        /* renamed from: u */
        static /* synthetic */ void m3936u(zza zzaVar, long j) {
            zzaVar.zzex |= 8;
            zzaVar.zzgf = j;
        }

        /* renamed from: v */
        static /* synthetic */ void m3935v(zza zzaVar, long j) {
            zzaVar.zzex |= 16;
            zzaVar.zzgg = j;
        }

        /* renamed from: w */
        static /* synthetic */ void m3934w(zza zzaVar, long j) {
            zzaVar.zzex |= 32;
            zzaVar.zzgh = j;
        }

        /* renamed from: x */
        static /* synthetic */ void m3933x(zza zzaVar, long j) {
            zzaVar.zzex |= 64;
            zzaVar.zzgi = j;
        }

        /* renamed from: y */
        static /* synthetic */ void m3932y(zza zzaVar, long j) {
            zzaVar.zzex |= CodedOutputStream.DEFAULT_BUFFER_SIZE;
            zzaVar.zzgm = j;
        }

        /* renamed from: z */
        static /* synthetic */ void m3931z(zza zzaVar, long j) {
            zzaVar.zzex |= 8192;
            zzaVar.zzgn = j;
        }

        public static zza zza(byte[] bArr, zzdrg zzdrgVar) {
            return (zza) zzdrt.m3369a(zzht, bArr, zzdrgVar);
        }

        public static zzb zzan() {
            return zzht.m3360c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (C2081nc.f10231a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb((byte) 0);
                case 3:
                    return m3366a(zzht, "\u0001M��\u0003\u0001ÉM��\u0001��\u0001\b��\u0002\b\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005\u0007\u0002\u0006\b\u0002\u0007\t\u0002\b\n\u0002\t\u000b\u0002\n\f\u0002\u000b\r\b\f\u000e\u0002\r\u000f\u0002\u000e\u0010\u0002\u000f\u0011\u0002\u0010\u0012\u0002\u0011\u0013\u0002\u0012\u0014\u0002\u0013\u0015\u0002E\u0016\u0002\u0014\u0017\u0002\u0015\u0018\bF\u0019\u0002J\u001a\fG\u001b\b\u0016\u001c\u0007H\u001d\b\u0018\u001e\bI\u001f\u0002\u0019 \u0002\u001a!\u0002\u001b\"\b\u001c#\u0002\u001d$\u0002\u001e%\u0002\u001f&\t '\u0002!(\u0002\")\u0002#*\u0002$+\u001b,\u0002%-\u0002&.\b'/\b(0\f*1\f+2\t23\u0002,4\u0002-5\u0002.6\u0002/7\u000208\f19\t3:\u00024;\u00025<\u00026=\u00027>\u0002:?\u0002;@\u0002=A\f>B\f?C\b<D\f@E\tAF\u0002BG\u00028H\u00029I\fCJ\u0002)K\b\u0017L\fDÉ\tK", new Object[]{"zzdl", "zzex", "zzey", "zzez", "zzdv", "zzfa", "zzfb", "zzfc", "zzfd", "zzfe", "zzff", "zzfg", "zzfh", "zzfi", "zzfj", "zzfk", "zzfl", "zzfm", "zzfn", "zzfo", "zzfp", "zzfq", "zzfr", "zzhm", "zzfs", "zzft", "zzhn", "zzhr", "zzho", zzc.zzaf(), "zzep", "zzhp", "zzfv", "zzhq", "zzfw", "zzfx", "zzfy", "zzer", "zzfz", "zzga", "zzgb", "zzgc", "zzgd", "zzge", "zzgf", "zzgg", "zzgt", zze.class, "zzgh", "zzgi", "zzes", "zzet", "zzgk", zzcd.zzaf(), "zzgl", zzcd.zzaf(), "zzgs", "zzgm", "zzgn", "zzgo", "zzgp", "zzgq", "zzgr", zzcd.zzaf(), "zzgu", "zzgv", "zzgw", "zzgx", "zzgy", "zzhb", "zzhc", "zzhe", "zzhf", zzbz.zzaf(), "zzhg", zzce.zzaf(), "zzhd", "zzhh", EnumC3492zza.zzaf(), "zzhi", "zzhj", "zzgz", "zzha", "zzhk", zzcd.zzaf(), "zzgj", "zzfu", "zzhl", zzcd.zzaf(), "zzhs"});
                case 4:
                    return zzht;
                case 5:
                    zzdtn<zza> zzdtnVar = zzdz;
                    zzdtn<zza> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzdtn<zza> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzht);
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

        public final String zzag() {
            return this.zzep;
        }

        public final boolean zzaj() {
            return (this.zzdl & 4194304) != 0;
        }

        public final boolean zzal() {
            return (this.zzey & 2048) != 0;
        }

        public final zzd zzam() {
            zzd zzdVar = this.zzhs;
            zzd zzdVar2 = zzdVar;
            if (zzdVar == null) {
                zzdVar2 = zzd.zzbf();
            }
            return zzdVar2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zzb.class */
    public static final class zzb extends zzdrt<zzb, zza> implements zzdtg {
        private static volatile zzdtn<zzb> zzdz;
        private static final zzb zzko;
        private int zzdl;
        private long zzkj;
        private int zzkk;
        private boolean zzkl;
        private zzdrz zzkm = aig.m5327b();
        private long zzkn;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zzb$zza.class */
        public static final class zza extends zzdrt.zzb<zzb, zza> implements zzdtg {
            private zza() {
                super(zzb.zzko);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzko = zzbVar;
            zzdrt.m3364a(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (C2081nc.f10231a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzko, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001\u0002��\u0002\u0004\u0001\u0003\u0007\u0002\u0004\u0016\u0005\u0003\u0003", new Object[]{"zzdl", "zzkj", "zzkk", "zzkl", "zzkm", "zzkn"});
                case 4:
                    return zzko;
                case 5:
                    zzdtn<zzb> zzdtnVar = zzdz;
                    zzdtn<zzb> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzdtn<zzb> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzko);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zzc.class */
    public static final class zzc extends zzdrt<zzc, zza> implements zzdtg {
        private static volatile zzdtn<zzc> zzdz;
        private static final zzc zzkt;
        private int zzdl;
        private zzdqk zzkp = zzdqk.zzhhx;
        private zzdqk zzkq = zzdqk.zzhhx;
        private zzdqk zzkr = zzdqk.zzhhx;
        private zzdqk zzks = zzdqk.zzhhx;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zzc$zza.class */
        public static final class zza extends zzdrt.zzb<zzc, zza> implements zzdtg {
            private zza() {
                super(zzc.zzkt);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zze(zzdqk zzdqkVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzc.m3902a((zzc) this.f14556a, zzdqkVar);
                return this;
            }

            public final zza zzf(zzdqk zzdqkVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzc.m3901b((zzc) this.f14556a, zzdqkVar);
                return this;
            }

            public final zza zzg(zzdqk zzdqkVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzc.m3900c((zzc) this.f14556a, zzdqkVar);
                return this;
            }

            public final zza zzh(zzdqk zzdqkVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzc.m3899d((zzc) this.f14556a, zzdqkVar);
                return this;
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzkt = zzcVar;
            zzdrt.m3364a(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* renamed from: a */
        static /* synthetic */ void m3902a(zzc zzcVar, zzdqk zzdqkVar) {
            zzdqkVar.getClass();
            zzcVar.zzdl |= 1;
            zzcVar.zzkp = zzdqkVar;
        }

        /* renamed from: b */
        static /* synthetic */ void m3901b(zzc zzcVar, zzdqk zzdqkVar) {
            zzdqkVar.getClass();
            zzcVar.zzdl |= 2;
            zzcVar.zzkq = zzdqkVar;
        }

        /* renamed from: c */
        static /* synthetic */ void m3900c(zzc zzcVar, zzdqk zzdqkVar) {
            zzdqkVar.getClass();
            zzcVar.zzdl |= 4;
            zzcVar.zzkr = zzdqkVar;
        }

        /* renamed from: d */
        static /* synthetic */ void m3899d(zzc zzcVar, zzdqk zzdqkVar) {
            zzdqkVar.getClass();
            zzcVar.zzdl |= 8;
            zzcVar.zzks = zzdqkVar;
        }

        public static zzc zzb(byte[] bArr, zzdrg zzdrgVar) {
            return (zzc) zzdrt.m3369a(zzkt, bArr, zzdrgVar);
        }

        public static zza zzbb() {
            return zzkt.m3360c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (C2081nc.f10231a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzkt, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001\n��\u0002\n\u0001\u0003\n\u0002\u0004\n\u0003", new Object[]{"zzdl", "zzkp", "zzkq", "zzkr", "zzks"});
                case 4:
                    return zzkt;
                case 5:
                    zzdtn<zzc> zzdtnVar = zzdz;
                    zzdtn<zzc> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzdtn<zzc> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzkt);
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

        public final zzdqk zzax() {
            return this.zzkp;
        }

        public final zzdqk zzay() {
            return this.zzkq;
        }

        public final zzdqk zzaz() {
            return this.zzkr;
        }

        public final zzdqk zzba() {
            return this.zzks;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zzd.class */
    public static final class zzd extends zzdrt<zzd, zza> implements zzdtg {
        private static volatile zzdtn<zzd> zzdz;
        private static final zzd zzll;
        private int zzdl;
        private long zzkj;
        private String zzlj = "";
        private zzdqk zzlk = zzdqk.zzhhx;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zzd$zza.class */
        public static final class zza extends zzdrt.zzb<zzd, zza> implements zzdtg {
            private zza() {
                super(zzd.zzll);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzll = zzdVar;
            zzdrt.m3364a(zzd.class, zzdVar);
        }

        private zzd() {
        }

        public static zzd zzbf() {
            return zzll;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (C2081nc.f10231a[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzll, "\u0001\u0003��\u0001\u0001\u0004\u0003������\u0001\u0002��\u0003\b\u0001\u0004\n\u0002", new Object[]{"zzdl", "zzkj", "zzlj", "zzlk"});
                case 4:
                    return zzll;
                case 5:
                    zzdtn<zzd> zzdtnVar = zzdz;
                    zzdtn<zzd> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzdtn<zzd> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzll);
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

        public final boolean zzbd() {
            return (this.zzdl & 1) != 0;
        }

        public final long zzbe() {
            return this.zzkj;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zze.class */
    public static final class zze extends zzdrt<zze, zza> implements zzdtg {
        private static volatile zzdtn<zze> zzdz;
        private static final zze zzlm;
        private int zzdl;
        private String zzeu = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zze$zza.class */
        public static final class zza extends zzdrt.zzb<zze, zza> implements zzdtg {
            private zza() {
                super(zze.zzlm);
            }

            /* synthetic */ zza(byte b) {
                this();
            }
        }

        static {
            zze zzeVar = new zze();
            zzlm = zzeVar;
            zzdrt.m3364a(zze.class, zzeVar);
        }

        private zze() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (C2081nc.f10231a[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzlm, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001\b��", new Object[]{"zzdl", "zzeu"});
                case 4:
                    return zzlm;
                case 5:
                    zzdtn<zze> zzdtnVar = zzdz;
                    zzdtn<zze> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzdtn<zze> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzlm);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zzf.class */
    public static final class zzf extends zzdrt<zzf, zza> implements zzdtg {
        private static volatile zzdtn<zzf> zzdz;
        private static final zzf zzlo;
        private int zzdl;
        private zzdsb<zzdqk> zzln = ajg.m5241b();
        private zzdqk zzkq = zzdqk.zzhhx;
        private int zzhg = 1;
        private int zzhf = 1;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbs$zzf$zza.class */
        public static final class zza extends zzdrt.zzb<zzf, zza> implements zzdtg {
            private zza() {
                super(zzf.zzlo);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza(zzbz zzbzVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzf.m3895a((zzf) this.f14556a, zzbzVar);
                return this;
            }

            public final zza zzi(zzdqk zzdqkVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzf.m3894a((zzf) this.f14556a, zzdqkVar);
                return this;
            }

            public final zza zzj(zzdqk zzdqkVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzf.m3893b((zzf) this.f14556a, zzdqkVar);
                return this;
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzlo = zzfVar;
            zzdrt.m3364a(zzf.class, zzfVar);
        }

        private zzf() {
        }

        /* renamed from: a */
        static /* synthetic */ void m3895a(zzf zzfVar, zzbz zzbzVar) {
            zzfVar.zzhf = zzbzVar.zzae();
            zzfVar.zzdl |= 4;
        }

        /* renamed from: a */
        static /* synthetic */ void m3894a(zzf zzfVar, zzdqk zzdqkVar) {
            zzdqkVar.getClass();
            if (!zzfVar.zzln.zzaxp()) {
                zzfVar.zzln = zzdrt.m3367a(zzfVar.zzln);
            }
            zzfVar.zzln.add(zzdqkVar);
        }

        /* renamed from: b */
        static /* synthetic */ void m3893b(zzf zzfVar, zzdqk zzdqkVar) {
            zzdqkVar.getClass();
            zzfVar.zzdl |= 1;
            zzfVar.zzkq = zzdqkVar;
        }

        public static zza zzbi() {
            return zzlo.m3360c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (C2081nc.f10231a[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzlo, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001c\u0002\n��\u0003\f\u0001\u0004\f\u0002", new Object[]{"zzdl", "zzln", "zzkq", "zzhg", zzce.zzaf(), "zzhf", zzbz.zzaf()});
                case 4:
                    return zzlo;
                case 5:
                    zzdtn<zzf> zzdtnVar = zzdz;
                    zzdtn<zzf> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzdtn<zzf> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzlo);
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
}
