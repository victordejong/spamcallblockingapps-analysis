package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnk.class */
public final class zzdnk extends zzdrt<zzdnk, zzb> implements zzdtg {
    private static volatile zzdtn<zzdnk> zzdz;
    private static final zzdnk zzhds;
    private int zzhdq;
    private zzdsb<zza> zzhdr = ajg.m5241b();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnk$zza.class */
    public static final class zza extends zzdrt<zza, C3495zza> implements zzdtg {
        private static volatile zzdtn<zza> zzdz;
        private static final zza zzhdw;
        private int zzhdj;
        private zzdna zzhdt;
        private int zzhdu;
        private int zzhdv;

        /* renamed from: com.google.android.gms.internal.ads.zzdnk$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnk$zza$zza.class */
        public static final class C3495zza extends zzdrt.zzb<zza, C3495zza> implements zzdtg {
            private C3495zza() {
                super(zza.zzhdw);
            }

            /* synthetic */ C3495zza(byte b) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzhdw = zzaVar;
            zzdrt.m3364a(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aga.f7320a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3495zza((byte) 0);
                case 3:
                    return m3366a(zzhdw, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzhdt", "zzhdu", "zzhdv", "zzhdj"});
                case 4:
                    return zzhdw;
                case 5:
                    zzdtn<zza> zzdtnVar = zzdz;
                    zzdtn<zza> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzdtn<zza> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzhdw);
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

        public final zzdne zzasj() {
            zzdne zzep = zzdne.zzep(this.zzhdu);
            zzdne zzdneVar = zzep;
            if (zzep == null) {
                zzdneVar = zzdne.UNRECOGNIZED;
            }
            return zzdneVar;
        }

        public final zzdnw zzask() {
            zzdnw zzew = zzdnw.zzew(this.zzhdj);
            zzdnw zzdnwVar = zzew;
            if (zzew == null) {
                zzdnwVar = zzdnw.UNRECOGNIZED;
            }
            return zzdnwVar;
        }

        public final boolean zzavz() {
            return this.zzhdt != null;
        }

        public final zzdna zzawa() {
            zzdna zzdnaVar = this.zzhdt;
            zzdna zzdnaVar2 = zzdnaVar;
            if (zzdnaVar == null) {
                zzdnaVar2 = zzdna.zzavm();
            }
            return zzdnaVar2;
        }

        public final int zzawb() {
            return this.zzhdv;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnk$zzb.class */
    public static final class zzb extends zzdrt.zzb<zzdnk, zzb> implements zzdtg {
        private zzb() {
            super(zzdnk.zzhds);
        }

        /* synthetic */ zzb(byte b) {
            this();
        }
    }

    static {
        zzdnk zzdnkVar = new zzdnk();
        zzhds = zzdnkVar;
        zzdrt.m3364a(zzdnk.class, zzdnkVar);
    }

    private zzdnk() {
    }

    public static zzdnk zzn(byte[] bArr) {
        return (zzdnk) zzdrt.m3371a(zzhds, bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdrt
    /* renamed from: a */
    public final Object mo3009a(int i, Object obj) {
        switch (aga.f7320a[i - 1]) {
            case 1:
                return new zzdnk();
            case 2:
                return new zzb((byte) 0);
            case 3:
                return m3366a(zzhds, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzhdq", "zzhdr", zza.class});
            case 4:
                return zzhds;
            case 5:
                zzdtn<zzdnk> zzdtnVar = zzdz;
                zzdtn<zzdnk> zzdtnVar2 = zzdtnVar;
                if (zzdtnVar == null) {
                    synchronized (zzdnk.class) {
                        try {
                            zzdtn<zzdnk> zzdtnVar3 = zzdz;
                            zzdtnVar2 = zzdtnVar3;
                            if (zzdtnVar3 == null) {
                                zzdtnVar2 = new zzdrt.zza<>(zzhds);
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

    public final int zzavv() {
        return this.zzhdq;
    }

    public final List<zza> zzavw() {
        return this.zzhdr;
    }

    public final int zzavx() {
        return this.zzhdr.size();
    }
}
