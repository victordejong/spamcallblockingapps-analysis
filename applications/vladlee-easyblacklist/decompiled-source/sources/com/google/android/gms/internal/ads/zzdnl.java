package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnl.class */
public final class zzdnl extends zzdrt<zzdnl, zza> implements zzdtg {
    private static volatile zzdtn<zzdnl> zzdz;
    private static final zzdnl zzhdy;
    private int zzhdq;
    private zzdsb<zzb> zzhdx = ajg.m5241b();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnl$zza.class */
    public static final class zza extends zzdrt.zzb<zzdnl, zza> implements zzdtg {
        private zza() {
            super(zzdnl.zzhdy);
        }

        /* synthetic */ zza(byte b) {
            this();
        }

        public final zza zzb(zzb zzbVar) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            zzdnl.m3443a((zzdnl) this.f14556a, zzbVar);
            return this;
        }

        public final zza zzer(int i) {
            if (this.f14557b) {
                m3359a();
                this.f14557b = false;
            }
            ((zzdnl) this.f14556a).zzhdq = i;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnl$zzb.class */
    public static final class zzb extends zzdrt<zzb, zza> implements zzdtg {
        private static volatile zzdtn<zzb> zzdz;
        private static final zzb zzhdz;
        private String zzhcs = "";
        private int zzhdj;
        private int zzhdu;
        private int zzhdv;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnl$zzb$zza.class */
        public static final class zza extends zzdrt.zzb<zzb, zza> implements zzdtg {
            private zza() {
                super(zzb.zzhdz);
            }

            /* synthetic */ zza(byte b) {
                this();
            }

            public final zza zza(zzdne zzdneVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzb.m3440a((zzb) this.f14556a, zzdneVar);
                return this;
            }

            public final zza zza(zzdnw zzdnwVar) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzb.m3439a((zzb) this.f14556a, zzdnwVar);
                return this;
            }

            public final zza zzes(int i) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                ((zzb) this.f14556a).zzhdv = i;
                return this;
            }

            public final zza zzhc(String str) {
                if (this.f14557b) {
                    m3359a();
                    this.f14557b = false;
                }
                zzb.m3438a((zzb) this.f14556a, str);
                return this;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzhdz = zzbVar;
            zzdrt.m3364a(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* renamed from: a */
        static /* synthetic */ void m3440a(zzb zzbVar, zzdne zzdneVar) {
            zzbVar.zzhdu = zzdneVar.zzae();
        }

        /* renamed from: a */
        static /* synthetic */ void m3439a(zzb zzbVar, zzdnw zzdnwVar) {
            zzbVar.zzhdj = zzdnwVar.zzae();
        }

        /* renamed from: a */
        static /* synthetic */ void m3438a(zzb zzbVar, String str) {
            str.getClass();
            zzbVar.zzhcs = str;
        }

        public static zza zzawf() {
            return zzhdz.m3360c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (agb.f7321a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza((byte) 0);
                case 3:
                    return m3366a(zzhdz, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzhcs", "zzhdu", "zzhdv", "zzhdj"});
                case 4:
                    return zzhdz;
                case 5:
                    zzdtn<zzb> zzdtnVar = zzdz;
                    zzdtn<zzb> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzdtn<zzb> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzhdz);
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
        zzdnl zzdnlVar = new zzdnl();
        zzhdy = zzdnlVar;
        zzdrt.m3364a(zzdnl.class, zzdnlVar);
    }

    private zzdnl() {
    }

    /* renamed from: a */
    static /* synthetic */ void m3443a(zzdnl zzdnlVar, zzb zzbVar) {
        zzbVar.getClass();
        if (!zzdnlVar.zzhdx.zzaxp()) {
            zzdnlVar.zzhdx = zzdrt.m3367a(zzdnlVar.zzhdx);
        }
        zzdnlVar.zzhdx.add(zzbVar);
    }

    public static zza zzawd() {
        return zzhdy.m3360c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (agb.f7321a[i - 1]) {
            case 1:
                return new zzdnl();
            case 2:
                return new zza((byte) 0);
            case 3:
                return m3366a(zzhdy, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzhdq", "zzhdx", zzb.class});
            case 4:
                return zzhdy;
            case 5:
                zzdtn<zzdnl> zzdtnVar = zzdz;
                zzdtn<zzdnl> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdnl.class) {
                        try {
                            zzdtn<zzdnl> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhdy);
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
