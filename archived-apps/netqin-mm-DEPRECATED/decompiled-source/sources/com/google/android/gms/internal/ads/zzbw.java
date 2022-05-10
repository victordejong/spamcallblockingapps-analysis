package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.C3507eg;
import p131c.p161d.p170b.p224d.p252g.p253a.C4137vd;
import p131c.p161d.p170b.p224d.p252g.p253a.C4249ye;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbw.class */
public final class zzbw {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbw$zza.class */
    public static final class zza extends zzejz<zza, C10490zza> implements zzell {
        public static final zza zzek;
        public static volatile zzelw<zza> zzel;
        public int zzdw;
        public long zzdy;
        public long zzec;
        public long zzed;
        public long zzef;
        public int zzej;
        public String zzdx = "";
        public String zzdz = "";
        public String zzea = "";
        public String zzeb = "";
        public String zzee = "";
        public String zzeg = "";
        public String zzeh = "";
        public zzekk<zzb> zzei = zzejz.m12394l();

        /* renamed from: com.google.android.gms.internal.ads.zzbw$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbw$zza$zza.class */
        public static final class C10490zza extends zzejz.zzb<zza, C10490zza> implements zzell {
            public C10490zza() {
                super(zza.zzek);
            }

            public /* synthetic */ C10490zza(C4137vd vdVar) {
                this();
            }

            /* renamed from: a */
            public final C10490zza m14992a(long j) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m15008a(j);
                return this;
            }

            /* renamed from: a */
            public final C10490zza m14991a(zzc zzcVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m15007a(zzcVar);
                return this;
            }

            /* renamed from: a */
            public final C10490zza m14990a(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m15003a(str);
                return this;
            }

            /* renamed from: b */
            public final C10490zza m14989b(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m15001b(str);
                return this;
            }

            /* renamed from: c */
            public final C10490zza m14988c(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m14999c(str);
                return this;
            }

            /* renamed from: d */
            public final C10490zza m14987d(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m14997d(str);
                return this;
            }

            /* renamed from: e */
            public final C10490zza m14986e(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m14995e(str);
                return this;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbw$zza$zzb.class */
        public static final class zzb extends zzejz<zzb, C10491zza> implements zzell {
            public static volatile zzelw<zzb> zzel;
            public static final zzb zzeo;
            public int zzdw;
            public String zzem = "";
            public String zzen = "";

            /* renamed from: com.google.android.gms.internal.ads.zzbw$zza$zzb$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbw$zza$zzb$zza.class */
            public static final class C10491zza extends zzejz.zzb<zzb, C10491zza> implements zzell {
                public C10491zza() {
                    super(zzb.zzeo);
                }

                public /* synthetic */ C10491zza(C4137vd vdVar) {
                    this();
                }
            }

            static {
                zzb zzbVar = new zzb();
                zzeo = zzbVar;
                zzejz.m12401a(zzb.class, zzbVar);
            }

            @Override // com.google.android.gms.internal.ads.zzejz
            /* renamed from: a */
            public final Object mo11212a(int i, Object obj, Object obj2) {
                switch (C4137vd.f15818a[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new C10491zza(null);
                    case 3:
                        return zzejz.m12403a(zzeo, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zzdw", "zzem", "zzen"});
                    case 4:
                        return zzeo;
                    case 5:
                        zzelw<zzb> zzelwVar = zzel;
                        zzelw<zzb> zzelwVar2 = zzelwVar;
                        if (zzelwVar == null) {
                            synchronized (zzb.class) {
                                try {
                                    zzelw<zzb> zzelwVar3 = zzel;
                                    zzelwVar2 = zzelwVar3;
                                    if (zzelwVar3 == null) {
                                        zzelwVar2 = new zzejz.zza<>(zzeo);
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

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbw$zza$zzc.class */
        public enum zzc implements zzeke {
            UNKNOWN(0),
            ENABLED(1),
            DISABLED(2);
            
            public static final zzekd<zzc> zzes = new C4249ye();
            public final int value;

            zzc(int i) {
                this.value = i;
            }

            public static zzc zzh(int i) {
                if (i == 0) {
                    return UNKNOWN;
                }
                if (i == 1) {
                    return ENABLED;
                }
                if (i != 2) {
                    return null;
                }
                return DISABLED;
            }

            public static zzekg zzw() {
                return C3507eg.f12841a;
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
            zzek = zzaVar;
            zzejz.m12401a(zza.class, zzaVar);
        }

        /* renamed from: m */
        public static C10490zza m14994m() {
            return zzek.m12399b();
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (C4137vd.f15818a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C10490zza(null);
                case 3:
                    return zzejz.m12403a(zzek, "\u0001\r��\u0001\u0001\r\r��\u0001��\u0001ဈ��\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zzdw", "zzdx", zzdy.f27947C, "zzdz", "zzea", "zzeb", "zzec", "zzed", "zzee", "zzef", "zzeg", "zzeh", "zzei", zzb.class, "zzej", zzc.zzw()});
                case 4:
                    return zzek;
                case 5:
                    zzelw<zza> zzelwVar = zzel;
                    zzelw<zza> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzelw<zza> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzek);
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
        public final void m15008a(long j) {
            this.zzdw |= 2;
            this.zzdy = j;
        }

        /* renamed from: a */
        public final void m15007a(zzc zzcVar) {
            this.zzej = zzcVar.zzv();
            this.zzdw |= RecyclerView.AbstractC0495b0.FLAG_MOVED;
        }

        /* renamed from: a */
        public final void m15003a(String str) {
            str.getClass();
            this.zzdw |= 1;
            this.zzdx = str;
        }

        /* renamed from: b */
        public final void m15001b(String str) {
            str.getClass();
            this.zzdw |= 4;
            this.zzdz = str;
        }

        /* renamed from: c */
        public final void m14999c(String str) {
            str.getClass();
            this.zzdw |= 8;
            this.zzea = str;
        }

        /* renamed from: d */
        public final void m14997d(String str) {
            str.getClass();
            this.zzdw |= 16;
            this.zzeb = str;
        }

        /* renamed from: e */
        public final void m14995e(String str) {
            str.getClass();
            this.zzdw |= 1024;
            this.zzeh = str;
        }
    }
}
