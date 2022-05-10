package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;
import p131c.p161d.p170b.p224d.p252g.p253a.cf0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpx.class */
public final class zzpx extends zzlu {

    /* renamed from: B0 */
    public static final int[] f28803B0 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* renamed from: A0 */
    public int f28804A0;

    /* renamed from: V */
    public final Context f28805V;

    /* renamed from: W */
    public final zzqb f28806W;

    /* renamed from: X */
    public final zzqg f28807X;

    /* renamed from: Y */
    public final long f28808Y;

    /* renamed from: Z */
    public final int f28809Z;

    /* renamed from: a0 */
    public final boolean f28810a0;

    /* renamed from: b0 */
    public final long[] f28811b0;

    /* renamed from: c0 */
    public zzho[] f28812c0;

    /* renamed from: d0 */
    public zzpz f28813d0;

    /* renamed from: e0 */
    public Surface f28814e0;

    /* renamed from: f0 */
    public Surface f28815f0;

    /* renamed from: g0 */
    public int f28816g0;

    /* renamed from: h0 */
    public boolean f28817h0;

    /* renamed from: i0 */
    public long f28818i0;

    /* renamed from: j0 */
    public long f28819j0;

    /* renamed from: k0 */
    public int f28820k0;

    /* renamed from: l0 */
    public int f28821l0;

    /* renamed from: m0 */
    public int f28822m0;

    /* renamed from: n0 */
    public float f28823n0;

    /* renamed from: o0 */
    public int f28824o0;

    /* renamed from: p0 */
    public int f28825p0;

    /* renamed from: q0 */
    public int f28826q0;

    /* renamed from: r0 */
    public float f28827r0;

    /* renamed from: s0 */
    public int f28828s0;

    /* renamed from: t0 */
    public int f28829t0;

    /* renamed from: u0 */
    public int f28830u0;

    /* renamed from: v0 */
    public float f28831v0;

    /* renamed from: w0 */
    public boolean f28832w0;

    /* renamed from: x0 */
    public int f28833x0;

    /* renamed from: y0 */
    public cf0 f28834y0;

    /* renamed from: z0 */
    public long f28835z0;

    public zzpx(Context context, zzlw zzlwVar, long j, Handler handler, zzqd zzqdVar, int i) {
        this(context, zzlwVar, 0L, null, false, handler, zzqdVar, -1);
    }

    public zzpx(Context context, zzlw zzlwVar, long j, zzjs<zzju> zzjsVar, boolean z, Handler handler, zzqd zzqdVar, int i) {
        super(2, zzlwVar, null, false);
        this.f28808Y = 0L;
        this.f28809Z = -1;
        this.f28805V = context.getApplicationContext();
        this.f28806W = new zzqb(context);
        this.f28807X = new zzqg(handler, zzqdVar);
        boolean z2 = false;
        if (zzpq.f28786a <= 22) {
            z2 = false;
            if ("foster".equals(zzpq.f28787b)) {
                z2 = false;
                if ("NVIDIA".equals(zzpq.f28788c)) {
                    z2 = true;
                }
            }
        }
        this.f28810a0 = z2;
        this.f28811b0 = new long[10];
        this.f28835z0 = -9223372036854775807L;
        this.f28818i0 = -9223372036854775807L;
        this.f28824o0 = -1;
        this.f28825p0 = -1;
        this.f28827r0 = -1.0f;
        this.f28823n0 = -1.0f;
        this.f28816g0 = 1;
        m11605F();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static int m11590a(String str, int i, int i2) {
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
            } else if ("BRAVIA 4K 2015".equals(zzpq.f28789d)) {
                return -1;
            } else {
                i3 = ((zzpq.m11628a(i, 16) * zzpq.m11628a(i2, 16)) << 4) << 4;
                i4 = 2;
                return (i3 * 3) / (i4 * 2);
            }
        }
        i3 = i * i2;
        i4 = 2;
        return (i3 * 3) / (i4 * 2);
    }

    /* renamed from: a */
    public static boolean m11587a(boolean z, zzho zzhoVar, zzho zzhoVar2) {
        if (!zzhoVar.f28268f.equals(zzhoVar2.f28268f) || m11579d(zzhoVar) != m11579d(zzhoVar2)) {
            return false;
        }
        if (!z) {
            return zzhoVar.f28272j == zzhoVar2.f28272j && zzhoVar.f28273k == zzhoVar2.f28273k;
        }
        return true;
    }

    /* renamed from: c */
    public static int m11580c(zzho zzhoVar) {
        int i = zzhoVar.f28269g;
        return i != -1 ? i : m11590a(zzhoVar.f28268f, zzhoVar.f28272j, zzhoVar.f28273k);
    }

    /* renamed from: c */
    public static boolean m11581c(long j) {
        return j < -30000;
    }

    /* renamed from: d */
    public static int m11579d(zzho zzhoVar) {
        int i = zzhoVar.f28275m;
        int i2 = i;
        if (i == -1) {
            i2 = 0;
        }
        return i2;
    }

    /* renamed from: C */
    public final void m11608C() {
        this.f28818i0 = this.f28808Y > 0 ? SystemClock.elapsedRealtime() + this.f28808Y : -9223372036854775807L;
    }

    /* renamed from: D */
    public final void m11607D() {
        MediaCodec x;
        this.f28817h0 = false;
        if (zzpq.f28786a >= 23 && this.f28832w0 && (x = m11823x()) != null) {
            this.f28834y0 = new cf0(this, x);
        }
    }

    /* renamed from: E */
    public final void m11606E() {
        if (!this.f28817h0) {
            this.f28817h0 = true;
            this.f28807X.m11559a(this.f28814e0);
        }
    }

    /* renamed from: F */
    public final void m11605F() {
        this.f28828s0 = -1;
        this.f28829t0 = -1;
        this.f28831v0 = -1.0f;
        this.f28830u0 = -1;
    }

    /* renamed from: G */
    public final void m11604G() {
        if (this.f28828s0 != this.f28824o0 || this.f28829t0 != this.f28825p0 || this.f28830u0 != this.f28826q0 || this.f28831v0 != this.f28827r0) {
            this.f28807X.m11561a(this.f28824o0, this.f28825p0, this.f28826q0, this.f28827r0);
            this.f28828s0 = this.f28824o0;
            this.f28829t0 = this.f28825p0;
            this.f28830u0 = this.f28826q0;
            this.f28831v0 = this.f28827r0;
        }
    }

    /* renamed from: H */
    public final void m11603H() {
        if (this.f28828s0 != -1 || this.f28829t0 != -1) {
            this.f28807X.m11561a(this.f28824o0, this.f28825p0, this.f28826q0, this.f28827r0);
        }
    }

    /* renamed from: I */
    public final void m11602I() {
        if (this.f28820k0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f28807X.m11560a(this.f28820k0, elapsedRealtime - this.f28819j0);
            this.f28820k0 = 0;
            this.f28819j0 = elapsedRealtime;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final int mo11591a(zzlw zzlwVar, zzho zzhoVar) throws zzlz {
        boolean z;
        String str = zzhoVar.f28268f;
        int i = 0;
        if (!zzpg.m11674b(str)) {
            return 0;
        }
        zzjn zzjnVar = zzhoVar.f28271i;
        if (zzjnVar != null) {
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (i2 >= zzjnVar.f28420c) {
                    break;
                }
                z2 |= zzjnVar.m11904a(i2).f28425e;
                i2++;
            }
        } else {
            z = false;
        }
        zzlr a = zzlwVar.mo11820a(str, z);
        boolean z3 = true;
        if (a == null) {
            return 1;
        }
        boolean a2 = a.m11839a(zzhoVar.f28265c);
        z3 = a2;
        if (a2) {
            int i3 = zzhoVar.f28272j;
            z3 = a2;
            if (i3 > 0) {
                int i4 = zzhoVar.f28273k;
                z3 = a2;
                if (i4 > 0) {
                    if (zzpq.f28786a >= 21) {
                        z3 = a.m11841a(i3, i4, zzhoVar.f28274l);
                    } else {
                        if (i3 * i4 > zzly.m11814b()) {
                            z3 = false;
                        }
                        if (!z3) {
                            int i5 = zzhoVar.f28272j;
                            int i6 = zzhoVar.f28273k;
                            String str2 = zzpq.f28790e;
                            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 56);
                            sb.append("FalseCheck [legacyFrameSize, ");
                            sb.append(i5);
                            sb.append("x");
                            sb.append(i6);
                            sb.append("] [");
                            sb.append(str2);
                            sb.append("]");
                            Log.d("MediaCodecVideoRenderer", sb.toString());
                        }
                    }
                }
            }
        }
        int i7 = a.f28564b ? 8 : 4;
        if (a.f28565c) {
            i = 16;
        }
        return (z3 ? 3 : 2) | i7 | i;
    }

    @Override // com.google.android.gms.internal.ads.zzhb, com.google.android.gms.internal.ads.zzhe
    /* renamed from: a */
    public final void mo11601a(int i, Object obj) throws zzhd {
        if (i == 1) {
            Surface surface = (Surface) obj;
            Surface surface2 = surface;
            if (surface == null) {
                surface2 = this.f28815f0;
                if (surface2 == null) {
                    zzlr y = m11822y();
                    surface2 = surface;
                    if (y != null) {
                        surface2 = surface;
                        if (m11582b(y.f28566d)) {
                            surface2 = zzpt.m11609a(this.f28805V, y.f28566d);
                            this.f28815f0 = surface2;
                        }
                    }
                }
            }
            if (this.f28814e0 != surface2) {
                this.f28814e0 = surface2;
                int d = mo12011d();
                if (d == 1 || d == 2) {
                    MediaCodec x = m11823x();
                    if (zzpq.f28786a < 23 || x == null || surface2 == null) {
                        mo11575z();
                        m11824w();
                    } else {
                        x.setOutputSurface(surface2);
                    }
                }
                if (surface2 == null || surface2 == this.f28815f0) {
                    m11605F();
                    m11607D();
                    return;
                }
                m11603H();
                m11607D();
                if (d == 2) {
                    m11608C();
                }
            } else if (surface2 != null && surface2 != this.f28815f0) {
                m11603H();
                if (this.f28817h0) {
                    this.f28807X.m11559a(this.f28814e0);
                }
            }
        } else if (i == 4) {
            this.f28816g0 = ((Integer) obj).intValue();
            MediaCodec x2 = m11823x();
            if (x2 != null) {
                x2.setVideoScalingMode(this.f28816g0);
            }
        } else {
            super.mo11601a(i, obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhb
    /* renamed from: a */
    public final void mo11599a(long j, boolean z) throws zzhd {
        super.mo11599a(j, z);
        m11607D();
        this.f28821l0 = 0;
        int i = this.f28804A0;
        if (i != 0) {
            this.f28835z0 = this.f28811b0[i - 1];
            this.f28804A0 = 0;
        }
        if (z) {
            m11608C();
        } else {
            this.f28818i0 = -9223372036854775807L;
        }
    }

    /* renamed from: a */
    public final void m11598a(MediaCodec mediaCodec, int i, long j) {
        zzpn.m11631a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        zzpn.m11632a();
        this.f28589T.f28415e++;
    }

    /* renamed from: a */
    public final void m11597a(MediaCodec mediaCodec, int i, long j, long j2) {
        m11604G();
        zzpn.m11631a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        zzpn.m11632a();
        this.f28589T.f28414d++;
        this.f28821l0 = 0;
        m11606E();
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final void mo11596a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        this.f28824o0 = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        this.f28825p0 = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.f28827r0 = this.f28823n0;
        if (zzpq.f28786a >= 21) {
            int i = this.f28822m0;
            if (i == 90 || i == 270) {
                int i2 = this.f28824o0;
                this.f28824o0 = this.f28825p0;
                this.f28825p0 = i2;
                this.f28827r0 = 1.0f / this.f28827r0;
            }
        } else {
            this.f28826q0 = this.f28822m0;
        }
        mediaCodec.setVideoScalingMode(this.f28816g0);
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final void mo11594a(zzjk zzjkVar) {
        if (zzpq.f28786a < 23 && this.f28832w0) {
            m11606E();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final void mo11592a(zzlr zzlrVar, MediaCodec mediaCodec, zzho zzhoVar, MediaCrypto mediaCrypto) throws zzlz {
        zzpz zzpzVar;
        int[] iArr;
        Point point;
        zzho[] zzhoVarArr = this.f28812c0;
        int i = zzhoVar.f28272j;
        int i2 = zzhoVar.f28273k;
        int c = m11580c(zzhoVar);
        if (zzhoVarArr.length == 1) {
            zzpzVar = new zzpz(i, i2, c);
        } else {
            boolean z = false;
            for (zzho zzhoVar2 : zzhoVarArr) {
                i = i;
                i2 = i2;
                c = c;
                z = z;
                if (m11587a(zzlrVar.f28564b, zzhoVar, zzhoVar2)) {
                    z |= zzhoVar2.f28272j == -1 || zzhoVar2.f28273k == -1;
                    i = Math.max(i, zzhoVar2.f28272j);
                    i2 = Math.max(i2, zzhoVar2.f28273k);
                    c = Math.max(c, m11580c(zzhoVar2));
                }
            }
            int i3 = i;
            int i4 = i2;
            int i5 = c;
            if (z) {
                StringBuilder sb = new StringBuilder(66);
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
                boolean z2 = zzhoVar.f28273k > zzhoVar.f28272j;
                int i6 = z2 ? zzhoVar.f28273k : zzhoVar.f28272j;
                int i7 = z2 ? zzhoVar.f28272j : zzhoVar.f28273k;
                float f = i7 / i6;
                for (int i8 : f28803B0) {
                    int i9 = (int) (i8 * f);
                    if (i8 <= i6 || i9 <= i7) {
                        break;
                    } else if (zzpq.f28786a >= 21) {
                        int i10 = z2 ? i9 : i8;
                        if (z2) {
                            i9 = i8;
                        }
                        Point a = zzlrVar.m11842a(i10, i9);
                        if (zzlrVar.m11841a(a.x, a.y, zzhoVar.f28274l)) {
                            point = a;
                            break;
                        }
                    } else {
                        int a2 = zzpq.m11628a(i8, 16) << 4;
                        int a3 = zzpq.m11628a(i9, 16) << 4;
                        if (a2 * a3 <= zzly.m11814b()) {
                            int i11 = z2 ? a3 : a2;
                            if (z2) {
                                a3 = a2;
                            }
                            point = new Point(i11, a3);
                        }
                    }
                }
                point = null;
                i3 = i;
                i4 = i2;
                i5 = c;
                if (point != null) {
                    i3 = Math.max(i, point.x);
                    i4 = Math.max(i2, point.y);
                    i5 = Math.max(c, m11590a(zzhoVar.f28268f, i3, i4));
                    StringBuilder sb2 = new StringBuilder(57);
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(i3);
                    sb2.append("x");
                    sb2.append(i4);
                    Log.w("MediaCodecVideoRenderer", sb2.toString());
                }
            }
            zzpzVar = new zzpz(i3, i4, i5);
        }
        this.f28813d0 = zzpzVar;
        boolean z3 = this.f28810a0;
        int i12 = this.f28833x0;
        MediaFormat b = zzhoVar.m12024b();
        b.setInteger("max-width", zzpzVar.f28838a);
        b.setInteger("max-height", zzpzVar.f28839b);
        int i13 = zzpzVar.f28840c;
        if (i13 != -1) {
            b.setInteger("max-input-size", i13);
        }
        if (z3) {
            b.setInteger("auto-frc", 0);
        }
        if (i12 != 0) {
            b.setFeatureEnabled("tunneled-playback", true);
            b.setInteger("audio-session-id", i12);
        }
        if (this.f28814e0 == null) {
            zzoz.m11694b(m11582b(zzlrVar.f28566d));
            if (this.f28815f0 == null) {
                this.f28815f0 = zzpt.m11609a(this.f28805V, zzlrVar.f28566d);
            }
            this.f28814e0 = this.f28815f0;
        }
        mediaCodec.configure(b, this.f28814e0, (MediaCrypto) null, 0);
        if (zzpq.f28786a >= 23 && this.f28832w0) {
            this.f28834y0 = new cf0(this, mediaCodec);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final void mo11589a(String str, long j, long j2) {
        this.f28807X.m11555a(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhb
    /* renamed from: a */
    public final void mo11588a(boolean z) throws zzhd {
        super.mo11588a(z);
        int i = m12062t().f28300a;
        this.f28833x0 = i;
        this.f28832w0 = i != 0;
        this.f28807X.m11557a(this.f28589T);
        this.f28806W.m11570b();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    /* renamed from: a */
    public final void mo11586a(zzho[] zzhoVarArr, long j) throws zzhd {
        this.f28812c0 = zzhoVarArr;
        if (this.f28835z0 == -9223372036854775807L) {
            this.f28835z0 = j;
        } else {
            int i = this.f28804A0;
            long[] jArr = this.f28811b0;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.f28804A0 = i + 1;
            }
            this.f28811b0[this.f28804A0 - 1] = j;
        }
        super.mo11586a(zzhoVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final boolean mo11600a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        while (true) {
            int i3 = this.f28804A0;
            if (i3 == 0) {
                break;
            }
            long[] jArr = this.f28811b0;
            if (j3 < jArr[0]) {
                break;
            }
            this.f28835z0 = jArr[0];
            int i4 = i3 - 1;
            this.f28804A0 = i4;
            System.arraycopy(jArr, 1, jArr, 0, i4);
        }
        long j4 = j3 - this.f28835z0;
        if (z) {
            m11598a(mediaCodec, i, j4);
            return true;
        }
        long j5 = j3 - j;
        if (this.f28814e0 == this.f28815f0) {
            if (!m11581c(j5)) {
                return false;
            }
            m11598a(mediaCodec, i, j4);
            return true;
        } else if (!this.f28817h0) {
            if (zzpq.f28786a >= 21) {
                m11597a(mediaCodec, i, j4, System.nanoTime());
                return true;
            }
            m11584b(mediaCodec, i, j4);
            return true;
        } else if (mo12011d() != 2) {
            return false;
        } else {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long nanoTime = System.nanoTime();
            long a = this.f28806W.m11571a(j3, ((j5 - ((elapsedRealtime * 1000) - j2)) * 1000) + nanoTime);
            long j6 = (a - nanoTime) / 1000;
            if (m11581c(j6)) {
                zzpn.m11631a("dropVideoBuffer");
                mediaCodec.releaseOutputBuffer(i, false);
                zzpn.m11632a();
                zzjl zzjlVar = this.f28589T;
                zzjlVar.f28416f++;
                this.f28820k0++;
                int i5 = this.f28821l0 + 1;
                this.f28821l0 = i5;
                zzjlVar.f28417g = Math.max(i5, zzjlVar.f28417g);
                if (this.f28820k0 != this.f28809Z) {
                    return true;
                }
                m11602I();
                return true;
            } else if (zzpq.f28786a >= 21) {
                if (j6 >= 50000) {
                    return false;
                }
                m11597a(mediaCodec, i, j4, a);
                return true;
            } else if (j6 >= 30000) {
                return false;
            } else {
                if (j6 > 11000) {
                    try {
                        Thread.sleep((j6 - 10000) / 1000);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
                m11584b(mediaCodec, i, j4);
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final boolean mo11595a(MediaCodec mediaCodec, boolean z, zzho zzhoVar, zzho zzhoVar2) {
        if (!m11587a(z, zzhoVar, zzhoVar2)) {
            return false;
        }
        int i = zzhoVar2.f28272j;
        zzpz zzpzVar = this.f28813d0;
        return i <= zzpzVar.f28838a && zzhoVar2.f28273k <= zzpzVar.f28839b && zzhoVar2.f28269g <= zzpzVar.f28840c;
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final boolean mo11593a(zzlr zzlrVar) {
        return this.f28814e0 != null || m11582b(zzlrVar.f28566d);
    }

    /* renamed from: b */
    public final void m11584b(MediaCodec mediaCodec, int i, long j) {
        m11604G();
        zzpn.m11631a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        zzpn.m11632a();
        this.f28589T.f28414d++;
        this.f28821l0 = 0;
        m11606E();
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: b */
    public final void mo11583b(zzho zzhoVar) throws zzhd {
        super.mo11583b(zzhoVar);
        this.f28807X.m11558a(zzhoVar);
        float f = zzhoVar.f28276n;
        float f2 = f;
        if (f == -1.0f) {
            f2 = 1.0f;
        }
        this.f28823n0 = f2;
        this.f28822m0 = m11579d(zzhoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhx
    /* renamed from: b */
    public final boolean mo11585b() {
        Surface surface;
        if (super.mo11585b() && (this.f28817h0 || (((surface = this.f28815f0) != null && this.f28814e0 == surface) || m11823x() == null))) {
            this.f28818i0 = -9223372036854775807L;
            return true;
        } else if (this.f28818i0 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f28818i0) {
                return true;
            }
            this.f28818i0 = -9223372036854775807L;
            return false;
        }
    }

    /* renamed from: b */
    public final boolean m11582b(boolean z) {
        if (zzpq.f28786a < 23 || this.f28832w0) {
            return false;
        }
        return !z || zzpt.m11610a(this.f28805V);
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhb
    /* renamed from: q */
    public final void mo11578q() {
        super.mo11578q();
        this.f28820k0 = 0;
        this.f28819j0 = SystemClock.elapsedRealtime();
        this.f28818i0 = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhb
    /* renamed from: r */
    public final void mo11577r() {
        m11602I();
        super.mo11577r();
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhb
    /* renamed from: s */
    public final void mo11576s() {
        this.f28824o0 = -1;
        this.f28825p0 = -1;
        this.f28827r0 = -1.0f;
        this.f28823n0 = -1.0f;
        this.f28835z0 = -9223372036854775807L;
        this.f28804A0 = 0;
        m11605F();
        m11607D();
        this.f28806W.m11572a();
        this.f28834y0 = null;
        this.f28832w0 = false;
        try {
            super.mo11576s();
        } finally {
            this.f28589T.m11905a();
            this.f28807X.m11554b(this.f28589T);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: z */
    public final void mo11575z() {
        try {
            super.mo11575z();
            Surface surface = this.f28815f0;
            if (surface != null) {
                if (this.f28814e0 == surface) {
                    this.f28814e0 = null;
                }
                this.f28815f0.release();
                this.f28815f0 = null;
            }
        } catch (Throwable th) {
            Surface surface2 = this.f28815f0;
            if (surface2 != null) {
                if (this.f28814e0 == surface2) {
                    this.f28814e0 = null;
                }
                this.f28815f0.release();
                this.f28815f0 = null;
            }
            throw th;
        }
    }
}
