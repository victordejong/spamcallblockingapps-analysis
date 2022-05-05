package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzox.class */
public final class zzox extends zzkw {

    /* renamed from: c */
    private static final int[] f15269c = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* renamed from: A */
    private int f15270A;

    /* renamed from: B */
    private int f15271B;

    /* renamed from: C */
    private int f15272C;

    /* renamed from: D */
    private float f15273D;

    /* renamed from: E */
    private boolean f15274E;

    /* renamed from: F */
    private int f15275F;

    /* renamed from: G */
    private long f15276G;

    /* renamed from: H */
    private int f15277H;

    /* renamed from: b */
    apc f15278b;

    /* renamed from: d */
    private final Context f15279d;

    /* renamed from: e */
    private final zzpb f15280e;

    /* renamed from: f */
    private final zzpg f15281f;

    /* renamed from: g */
    private final long f15282g;

    /* renamed from: h */
    private final int f15283h;

    /* renamed from: i */
    private final boolean f15284i;

    /* renamed from: j */
    private final long[] f15285j;

    /* renamed from: k */
    private zzgw[] f15286k;

    /* renamed from: l */
    private zzoz f15287l;

    /* renamed from: m */
    private Surface f15288m;

    /* renamed from: n */
    private Surface f15289n;

    /* renamed from: o */
    private int f15290o;

    /* renamed from: p */
    private boolean f15291p;

    /* renamed from: q */
    private long f15292q;

    /* renamed from: r */
    private long f15293r;

    /* renamed from: s */
    private int f15294s;

    /* renamed from: t */
    private int f15295t;

    /* renamed from: u */
    private int f15296u;

    /* renamed from: v */
    private float f15297v;

    /* renamed from: w */
    private int f15298w;

    /* renamed from: x */
    private int f15299x;

    /* renamed from: y */
    private int f15300y;

    /* renamed from: z */
    private float f15301z;

    public zzox(Context context, zzky zzkyVar, long j, zzddu zzdduVar, zzpd zzpdVar, int i) {
        this(context, zzkyVar, zzdduVar, zzpdVar);
    }

    private zzox(Context context, zzky zzkyVar, zzddu zzdduVar, zzpd zzpdVar) {
        super(2, zzkyVar, null, false);
        this.f15282g = 0L;
        this.f15283h = -1;
        this.f15279d = context.getApplicationContext();
        this.f15280e = new zzpb(context);
        this.f15281f = new zzpg(zzdduVar, zzpdVar);
        boolean z = false;
        if (zzoq.SDK_INT <= 22) {
            z = false;
            if ("foster".equals(zzoq.DEVICE)) {
                z = false;
                if ("NVIDIA".equals(zzoq.MANUFACTURER)) {
                    z = true;
                }
            }
        }
        this.f15284i = z;
        this.f15285j = new long[10];
        this.f15276G = -9223372036854775807L;
        this.f15292q = -9223372036854775807L;
        this.f15298w = -1;
        this.f15299x = -1;
        this.f15301z = -1.0f;
        this.f15297v = -1.0f;
        this.f15290o = 1;
        m3133p();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static int m3151a(String str, int i, int i2) {
        char c;
        int i3;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        int i4 = 4;
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (!(c == 0 || c == 1)) {
            if (c != 2) {
                if (c != 3) {
                    if (c != 4 && c != 5) {
                        return -1;
                    }
                    i3 = i * i2;
                    return (i3 * 3) / (i4 * 2);
                }
            } else if ("BRAVIA 4K 2015".equals(zzoq.MODEL)) {
                return -1;
            } else {
                i3 = ((zzoq.zzf(i, 16) * zzoq.zzf(i2, 16)) << 4) << 4;
                i4 = 2;
                return (i3 * 3) / (i4 * 2);
            }
        }
        i3 = i * i2;
        i4 = 2;
        return (i3 * 3) / (i4 * 2);
    }

    /* renamed from: a */
    private final void m3158a(MediaCodec mediaCodec, int i) {
        zzon.beginSection("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        zzon.endSection();
        this.f15066a.zzamj++;
    }

    /* renamed from: a */
    private final void m3157a(MediaCodec mediaCodec, int i, long j) {
        m3132q();
        zzon.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        zzon.endSection();
        this.f15066a.zzami++;
        this.f15295t = 0;
        m3138g();
    }

    /* renamed from: b */
    private static int m3143b(zzgw zzgwVar) {
        return zzgwVar.zzaff != -1 ? zzgwVar.zzaff : m3151a(zzgwVar.zzafe, zzgwVar.width, zzgwVar.height);
    }

    /* renamed from: b */
    private final void m3144b(MediaCodec mediaCodec, int i) {
        m3132q();
        zzon.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        zzon.endSection();
        this.f15066a.zzami++;
        this.f15295t = 0;
        m3138g();
    }

    /* renamed from: b */
    private static boolean m3145b(long j) {
        return j < -30000;
    }

    /* renamed from: b */
    private final boolean m3142b(boolean z) {
        if (zzoq.SDK_INT < 23 || this.f15274E) {
            return false;
        }
        return !z || zzot.zzc(this.f15279d);
    }

    /* renamed from: b */
    private static boolean m3141b(boolean z, zzgw zzgwVar, zzgw zzgwVar2) {
        if (!zzgwVar.zzafe.equals(zzgwVar2.zzafe) || m3139c(zzgwVar) != m3139c(zzgwVar2)) {
            return false;
        }
        if (!z) {
            return zzgwVar.width == zzgwVar2.width && zzgwVar.height == zzgwVar2.height;
        }
        return true;
    }

    /* renamed from: c */
    private static int m3139c(zzgw zzgwVar) {
        if (zzgwVar.zzafj == -1) {
            return 0;
        }
        return zzgwVar.zzafj;
    }

    /* renamed from: h */
    private final void m3137h() {
        this.f15292q = this.f15282g > 0 ? SystemClock.elapsedRealtime() + this.f15282g : -9223372036854775807L;
    }

    /* renamed from: i */
    private final void m3136i() {
        MediaCodec l;
        this.f15291p = false;
        if (zzoq.SDK_INT >= 23 && this.f15274E && (l = m3191l()) != null) {
            this.f15278b = new apc(this, l, (byte) 0);
        }
    }

    /* renamed from: p */
    private final void m3133p() {
        this.f15270A = -1;
        this.f15271B = -1;
        this.f15273D = -1.0f;
        this.f15272C = -1;
    }

    /* renamed from: q */
    private final void m3132q() {
        if (this.f15270A != this.f15298w || this.f15271B != this.f15299x || this.f15272C != this.f15300y || this.f15273D != this.f15301z) {
            this.f15281f.zzb(this.f15298w, this.f15299x, this.f15300y, this.f15301z);
            this.f15270A = this.f15298w;
            this.f15271B = this.f15299x;
            this.f15272C = this.f15300y;
            this.f15273D = this.f15301z;
        }
    }

    /* renamed from: r */
    private final void m3131r() {
        if (this.f15270A != -1 || this.f15271B != -1) {
            this.f15281f.zzb(this.f15298w, this.f15299x, this.f15300y, this.f15301z);
        }
    }

    /* renamed from: s */
    private final void m3130s() {
        if (this.f15294s > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f15281f.zzf(this.f15294s, elapsedRealtime - this.f15293r);
            this.f15294s = 0;
            this.f15293r = elapsedRealtime;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final int mo3152a(zzky zzkyVar, zzgw zzgwVar) {
        boolean z;
        String str = zzgwVar.zzafe;
        int i = 0;
        if (!zzof.zzbi(str)) {
            return 0;
        }
        zziv zzivVar = zzgwVar.zzafh;
        if (zzivVar != null) {
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (i2 >= zzivVar.zzamn) {
                    break;
                }
                z2 |= zzivVar.zzaa(i2).zzamo;
                i2++;
            }
        } else {
            z = false;
        }
        zzkt zzb = zzkyVar.zzb(str, z);
        if (zzb == null) {
            return 1;
        }
        boolean zzbe = zzb.zzbe(zzgwVar.zzafb);
        boolean z3 = zzbe;
        if (zzbe) {
            z3 = zzbe;
            if (zzgwVar.width > 0) {
                z3 = zzbe;
                if (zzgwVar.height > 0) {
                    if (zzoq.SDK_INT >= 21) {
                        z3 = zzb.zza(zzgwVar.width, zzgwVar.height, zzgwVar.zzafi);
                    } else {
                        boolean z4 = zzgwVar.width * zzgwVar.height <= zzla.zzhc();
                        z3 = z4;
                        if (!z4) {
                            int i3 = zzgwVar.width;
                            int i4 = zzgwVar.height;
                            String str2 = zzoq.zzbgv;
                            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 56);
                            sb.append("FalseCheck [legacyFrameSize, ");
                            sb.append(i3);
                            sb.append("x");
                            sb.append(i4);
                            sb.append("] [");
                            sb.append(str2);
                            sb.append("]");
                            Log.d("MediaCodecVideoRenderer", sb.toString());
                            z3 = z4;
                        }
                    }
                }
            }
        }
        int i5 = zzb.zzaxn ? 8 : 4;
        if (zzb.zzajo) {
            i = 16;
        }
        return (z3 ? 3 : 2) | i5 | i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzgj
    /* renamed from: a */
    public final void mo3161a() {
        super.mo3161a();
        this.f15294s = 0;
        this.f15293r = SystemClock.elapsedRealtime();
        this.f15292q = -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzgj
    /* renamed from: a */
    public final void mo3159a(long j, boolean z) {
        super.mo3159a(j, z);
        m3136i();
        this.f15295t = 0;
        int i = this.f15277H;
        if (i != 0) {
            this.f15276G = this.f15285j[i - 1];
            this.f15277H = 0;
        }
        if (z) {
            m3137h();
        } else {
            this.f15292q = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final void mo3156a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        this.f15298w = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        this.f15299x = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.f15301z = this.f15297v;
        if (zzoq.SDK_INT >= 21) {
            int i = this.f15296u;
            if (i == 90 || i == 270) {
                int i2 = this.f15298w;
                this.f15298w = this.f15299x;
                this.f15299x = i2;
                this.f15301z = 1.0f / this.f15301z;
            }
        } else {
            this.f15300y = this.f15296u;
        }
        mediaCodec.setVideoScalingMode(this.f15290o);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    public final void mo3155a(zzgw zzgwVar) {
        super.mo3155a(zzgwVar);
        this.f15281f.zzc(zzgwVar);
        this.f15297v = zzgwVar.zzafk == -1.0f ? 1.0f : zzgwVar.zzafk;
        this.f15296u = m3139c(zzgwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final void mo3153a(zzkt zzktVar, MediaCodec mediaCodec, zzgw zzgwVar) {
        zzoz zzozVar;
        int[] iArr;
        Point point;
        zzgw[] zzgwVarArr = this.f15286k;
        int i = zzgwVar.width;
        int i2 = zzgwVar.height;
        int b = m3143b(zzgwVar);
        if (zzgwVarArr.length == 1) {
            zzozVar = new zzoz(i, i2, b);
        } else {
            boolean z = false;
            for (zzgw zzgwVar2 : zzgwVarArr) {
                z = z;
                i = i;
                i2 = i2;
                b = b;
                if (m3141b(zzktVar.zzaxn, zzgwVar, zzgwVar2)) {
                    z |= zzgwVar2.width == -1 || zzgwVar2.height == -1;
                    i = Math.max(i, zzgwVar2.width);
                    i2 = Math.max(i2, zzgwVar2.height);
                    b = Math.max(b, m3143b(zzgwVar2));
                }
            }
            int i3 = i;
            int i4 = i2;
            int i5 = b;
            if (z) {
                StringBuilder sb = new StringBuilder(66);
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
                boolean z2 = zzgwVar.height > zzgwVar.width;
                int i6 = z2 ? zzgwVar.height : zzgwVar.width;
                int i7 = z2 ? zzgwVar.width : zzgwVar.height;
                float f = i7 / i6;
                for (int i8 : f15269c) {
                    int i9 = (int) (i8 * f);
                    if (i8 <= i6 || i9 <= i7) {
                        break;
                    } else if (zzoq.SDK_INT >= 21) {
                        int i10 = z2 ? i9 : i8;
                        if (!z2) {
                            i8 = i9;
                        }
                        Point zzd = zzktVar.zzd(i10, i8);
                        if (zzktVar.zza(zzd.x, zzd.y, zzgwVar.zzafi)) {
                            point = zzd;
                            break;
                        }
                    } else {
                        int zzf = zzoq.zzf(i8, 16) << 4;
                        int zzf2 = zzoq.zzf(i9, 16) << 4;
                        if (zzf * zzf2 <= zzla.zzhc()) {
                            int i11 = z2 ? zzf2 : zzf;
                            if (z2) {
                                zzf2 = zzf;
                            }
                            point = new Point(i11, zzf2);
                        }
                    }
                }
                point = null;
                i3 = i;
                i4 = i2;
                i5 = b;
                if (point != null) {
                    i3 = Math.max(i, point.x);
                    i4 = Math.max(i2, point.y);
                    i5 = Math.max(b, m3151a(zzgwVar.zzafe, i3, i4));
                    StringBuilder sb2 = new StringBuilder(57);
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(i3);
                    sb2.append("x");
                    sb2.append(i4);
                    Log.w("MediaCodecVideoRenderer", sb2.toString());
                }
            }
            zzozVar = new zzoz(i3, i4, i5);
        }
        this.f15287l = zzozVar;
        zzoz zzozVar2 = this.f15287l;
        boolean z3 = this.f15284i;
        int i12 = this.f15275F;
        MediaFormat zzeq = zzgwVar.zzeq();
        zzeq.setInteger("max-width", zzozVar2.width);
        zzeq.setInteger("max-height", zzozVar2.height);
        if (zzozVar2.zzbio != -1) {
            zzeq.setInteger("max-input-size", zzozVar2.zzbio);
        }
        if (z3) {
            zzeq.setInteger("auto-frc", 0);
        }
        if (i12 != 0) {
            zzeq.setFeatureEnabled("tunneled-playback", true);
            zzeq.setInteger("audio-session-id", i12);
        }
        if (this.f15288m == null) {
            zzoc.checkState(m3142b(zzktVar.zzaxo));
            if (this.f15289n == null) {
                this.f15289n = zzot.zzc(this.f15279d, zzktVar.zzaxo);
            }
            this.f15288m = this.f15289n;
        }
        mediaCodec.configure(zzeq, this.f15288m, (MediaCrypto) null, 0);
        if (zzoq.SDK_INT >= 23 && this.f15274E) {
            this.f15278b = new apc(this, mediaCodec, (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final void mo3150a(String str, long j, long j2) {
        this.f15281f.zzb(str, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzgj
    /* renamed from: a */
    public final void mo3149a(boolean z) {
        super.mo3149a(z);
        this.f15275F = m3253d().zzagh;
        this.f15274E = this.f15275F != 0;
        this.f15281f.zzc(this.f15066a);
        this.f15280e.enable();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgj
    /* renamed from: a */
    public final void mo3147a(zzgw[] zzgwVarArr, long j) {
        this.f15286k = zzgwVarArr;
        if (this.f15276G == -9223372036854775807L) {
            this.f15276G = j;
        } else {
            int i = this.f15277H;
            long[] jArr = this.f15285j;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.f15277H = i + 1;
            }
            this.f15285j[this.f15277H - 1] = j;
        }
        super.mo3147a(zzgwVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final boolean mo3160a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        while (true) {
            int i3 = this.f15277H;
            if (i3 == 0) {
                break;
            }
            long[] jArr = this.f15285j;
            if (j3 < jArr[0]) {
                break;
            }
            this.f15276G = jArr[0];
            this.f15277H = i3 - 1;
            System.arraycopy(jArr, 1, jArr, 0, this.f15277H);
        }
        if (z) {
            m3158a(mediaCodec, i);
            return true;
        }
        long j4 = j3 - j;
        if (this.f15288m == this.f15289n) {
            if (!m3145b(j4)) {
                return false;
            }
            m3158a(mediaCodec, i);
            return true;
        } else if (!this.f15291p) {
            if (zzoq.SDK_INT >= 21) {
                m3157a(mediaCodec, i, System.nanoTime());
                return true;
            }
            m3144b(mediaCodec, i);
            return true;
        } else if (getState() != 2) {
            return false;
        } else {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long nanoTime = System.nanoTime();
            long zzf = this.f15280e.zzf(j3, ((j4 - ((elapsedRealtime * 1000) - j2)) * 1000) + nanoTime);
            long j5 = (zzf - nanoTime) / 1000;
            if (m3145b(j5)) {
                zzon.beginSection("dropVideoBuffer");
                mediaCodec.releaseOutputBuffer(i, false);
                zzon.endSection();
                this.f15066a.zzamk++;
                this.f15294s++;
                this.f15295t++;
                this.f15066a.zzaml = Math.max(this.f15295t, this.f15066a.zzaml);
                if (this.f15294s != this.f15283h) {
                    return true;
                }
                m3130s();
                return true;
            } else if (zzoq.SDK_INT >= 21) {
                if (j5 >= 50000) {
                    return false;
                }
                m3157a(mediaCodec, i, zzf);
                return true;
            } else if (j5 >= 30000) {
                return false;
            } else {
                if (j5 > 11000) {
                    try {
                        Thread.sleep((j5 - 10000) / 1000);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
                m3144b(mediaCodec, i);
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final boolean mo3154a(zzkt zzktVar) {
        return this.f15288m != null || m3142b(zzktVar.zzaxo);
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final boolean mo3148a(boolean z, zzgw zzgwVar, zzgw zzgwVar2) {
        return m3141b(z, zzgwVar, zzgwVar2) && zzgwVar2.width <= this.f15287l.width && zzgwVar2.height <= this.f15287l.height && zzgwVar2.zzaff <= this.f15287l.zzbio;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzgj
    /* renamed from: b */
    public final void mo3146b() {
        m3130s();
        super.mo3146b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzgj
    /* renamed from: c */
    public final void mo3140c() {
        this.f15298w = -1;
        this.f15299x = -1;
        this.f15301z = -1.0f;
        this.f15297v = -1.0f;
        this.f15276G = -9223372036854775807L;
        this.f15277H = 0;
        m3133p();
        m3136i();
        this.f15280e.disable();
        this.f15278b = null;
        this.f15274E = false;
        try {
            super.mo3140c();
        } finally {
            this.f15066a.zzge();
            this.f15281f.zzd(this.f15066a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m3138g() {
        if (!this.f15291p) {
            this.f15291p = true;
            this.f15281f.zzb(this.f15288m);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzhf
    public final boolean isReady() {
        Surface surface;
        if (super.isReady() && (this.f15291p || (((surface = this.f15289n) != null && this.f15288m == surface) || m3191l() == null))) {
            this.f15292q = -9223372036854775807L;
            return true;
        } else if (this.f15292q == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f15292q) {
                return true;
            }
            this.f15292q = -9223372036854775807L;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: n */
    public final void mo3135n() {
        try {
            super.mo3135n();
            Surface surface = this.f15289n;
            if (surface != null) {
                if (this.f15288m == surface) {
                    this.f15288m = null;
                }
                this.f15289n.release();
                this.f15289n = null;
            }
        } catch (Throwable th) {
            Surface surface2 = this.f15289n;
            if (surface2 != null) {
                if (this.f15288m == surface2) {
                    this.f15288m = null;
                }
                this.f15289n.release();
                this.f15289n = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: o */
    protected final void mo3134o() {
        if (zzoq.SDK_INT < 23 && this.f15274E) {
            m3138g();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgj, com.google.android.gms.internal.ads.zzgm
    public final void zza(int i, Object obj) {
        if (i == 1) {
            Surface surface = (Surface) obj;
            Surface surface2 = surface;
            if (surface == null) {
                surface2 = this.f15289n;
                if (surface2 == null) {
                    zzkt m = m3190m();
                    surface2 = surface;
                    if (m != null) {
                        surface2 = surface;
                        if (m3142b(m.zzaxo)) {
                            this.f15289n = zzot.zzc(this.f15279d, m.zzaxo);
                            surface2 = this.f15289n;
                        }
                    }
                }
            }
            if (this.f15288m != surface2) {
                this.f15288m = surface2;
                int state = getState();
                if (state == 1 || state == 2) {
                    MediaCodec l = m3191l();
                    if (zzoq.SDK_INT < 23 || l == null || surface2 == null) {
                        mo3135n();
                        m3192k();
                    } else {
                        l.setOutputSurface(surface2);
                    }
                }
                if (surface2 == null || surface2 == this.f15289n) {
                    m3133p();
                    m3136i();
                    return;
                }
                m3131r();
                m3136i();
                if (state == 2) {
                    m3137h();
                }
            } else if (surface2 != null && surface2 != this.f15289n) {
                m3131r();
                if (this.f15291p) {
                    this.f15281f.zzb(this.f15288m);
                }
            }
        } else if (i == 4) {
            this.f15290o = ((Integer) obj).intValue();
            MediaCodec l2 = m3191l();
            if (l2 != null) {
                l2.setVideoScalingMode(this.f15290o);
            }
        } else {
            super.zza(i, obj);
        }
    }
}
