package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzbv;
import com.google.android.gms.internal.measurement.zzck;
import com.google.android.gms.internal.measurement.zzhy;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p258f.C4503h0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca.class */
public final class zzca {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zza.class */
    public static final class zza extends zzhy<zza, C10516zza> implements zzjl {
        public static final zza zzh;
        public static volatile zzjs<zza> zzi;
        public int zzc;
        public String zzd = "";
        public boolean zze;
        public boolean zzf;
        public int zzg;

        /* renamed from: com.google.android.gms.internal.measurement.zzca$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zza$zza.class */
        public static final class C10516zza extends zzhy.zzb<zza, C10516zza> implements zzjl {
            public C10516zza() {
                super(zza.zzh);
            }

            public /* synthetic */ C10516zza(C4503h0 h0Var) {
                this();
            }

            @Override // com.google.android.gms.internal.measurement.zzgi
            /* renamed from: a */
            public final C10516zza mo9794a(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zza) this.f29500b).m10344a(str);
                return this;
            }

            /* renamed from: o */
            public final boolean m10338o() {
                return ((zza) this.f29500b).m10343p();
            }

            /* renamed from: p */
            public final boolean m10337p() {
                return ((zza) this.f29500b).m10342q();
            }

            /* renamed from: q */
            public final boolean m10336q() {
                return ((zza) this.f29500b).m10341r();
            }

            /* renamed from: r */
            public final int m10335r() {
                return ((zza) this.f29500b).m10340s();
            }

            public final String zza() {
                return ((zza) this.f29500b).zza();
            }
        }

        static {
            zza zzaVar = new zza();
            zzh = zzaVar;
            zzhy.m9666a(zza.class, zzaVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4503h0.f16758a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C10516zza(null);
                case 3:
                    return zzhy.m9668a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzjs<zza> zzjsVar = zzi;
                    zzjs<zza> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzjs<zza> zzjsVar3 = zzi;
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
        public final void m10344a(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zzd = str;
        }

        /* renamed from: p */
        public final boolean m10343p() {
            return this.zze;
        }

        /* renamed from: q */
        public final boolean m10342q() {
            return this.zzf;
        }

        /* renamed from: r */
        public final boolean m10341r() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: s */
        public final int m10340s() {
            return this.zzg;
        }

        public final String zza() {
            return this.zzd;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zzb.class */
    public static final class zzb extends zzhy<zzb, zza> implements zzjl {
        public static final zzb zzm;
        public static volatile zzjs<zzb> zzn;
        public int zzc;
        public long zzd;
        public int zzf;
        public boolean zzk;
        public String zze = "";
        public zzig<zzc> zzg = zzhy.m9659o();
        public zzig<zza> zzh = zzhy.m9659o();
        public zzig<zzbv.zza> zzi = zzhy.m9659o();
        public String zzj = "";
        public zzig<zzck.zzc> zzl = zzhy.m9659o();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zzb$zza.class */
        public static final class zza extends zzhy.zzb<zzb, zza> implements zzjl {
            public zza() {
                super(zzb.zzm);
            }

            public /* synthetic */ zza(C4503h0 h0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m10319a(int i) {
                return ((zzb) this.f29500b).m10331b(i);
            }

            /* renamed from: a */
            public final zza m10318a(int i, zza.C10516zza zzaVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzb) this.f29500b).m10334a(i, (zza) ((zzhy) zzaVar.mo9619b()));
                return this;
            }

            /* renamed from: o */
            public final List<zzbv.zza> m10317o() {
                return Collections.unmodifiableList(((zzb) this.f29500b).m10325u());
            }

            /* renamed from: p */
            public final zza m10316p() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzb) this.f29500b).m10323w();
                return this;
            }

            public final int zza() {
                return ((zzb) this.f29500b).m10326t();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzm = zzbVar;
            zzhy.m9666a(zzb.class, zzbVar);
        }

        /* renamed from: x */
        public static zza m10322x() {
            return zzm.m9663k();
        }

        /* renamed from: y */
        public static zzb m10321y() {
            return zzm;
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4503h0.f16758a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzm, "\u0001\t��\u0001\u0001\t\t��\u0004��\u0001ဂ��\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", zzc.class, "zzh", zza.class, "zzi", zzbv.zza.class, "zzj", "zzk", "zzl", zzck.zzc.class});
                case 4:
                    return zzm;
                case 5:
                    zzjs<zzb> zzjsVar = zzn;
                    zzjs<zzb> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzjs<zzb> zzjsVar3 = zzn;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzm);
                                    zzn = zzjsVar2;
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
        public final void m10334a(int i, zza zzaVar) {
            zzaVar.getClass();
            zzig<zza> zzigVar = this.zzh;
            if (!zzigVar.zza()) {
                this.zzh = zzhy.m9670a(zzigVar);
            }
            this.zzh.set(i, zzaVar);
        }

        /* renamed from: b */
        public final zza m10331b(int i) {
            return this.zzh.get(i);
        }

        /* renamed from: p */
        public final long m10330p() {
            return this.zzd;
        }

        /* renamed from: q */
        public final boolean m10329q() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: r */
        public final String m10328r() {
            return this.zze;
        }

        /* renamed from: s */
        public final List<zzc> m10327s() {
            return this.zzg;
        }

        /* renamed from: t */
        public final int m10326t() {
            return this.zzh.size();
        }

        /* renamed from: u */
        public final List<zzbv.zza> m10325u() {
            return this.zzi;
        }

        /* renamed from: v */
        public final boolean m10324v() {
            return this.zzk;
        }

        /* renamed from: w */
        public final void m10323w() {
            this.zzi = zzhy.m9659o();
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zzc.class */
    public static final class zzc extends zzhy<zzc, zza> implements zzjl {
        public static final zzc zzf;
        public static volatile zzjs<zzc> zzg;
        public int zzc;
        public String zzd = "";
        public String zze = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zzc$zza.class */
        public static final class zza extends zzhy.zzb<zzc, zza> implements zzjl {
            public zza() {
                super(zzc.zzf);
            }

            public /* synthetic */ zza(C4503h0 h0Var) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzf = zzcVar;
            zzhy.m9666a(zzc.class, zzcVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4503h0.f16758a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzjs<zzc> zzjsVar = zzg;
                    zzjs<zzc> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzjs<zzc> zzjsVar3 = zzg;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzf);
                                    zzg = zzjsVar2;
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
        public final String m10315p() {
            return this.zze;
        }

        public final String zza() {
            return this.zzd;
        }
    }
}
