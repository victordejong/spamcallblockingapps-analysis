package p012b.p076s.p078b.p079a.p081b1;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.video.DummySurface;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.AbstractC1197b;
import p012b.p076s.p078b.p079a.C1531w;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1161a0;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p081b1.AbstractC1218o;
import p012b.p076s.p078b.p079a.p084q0.C1310c;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1327k;
import p012b.p076s.p078b.p079a.p085r0.C1333o;
import p012b.p076s.p078b.p079a.p095t0.AbstractC1502b;
import p012b.p076s.p078b.p079a.p095t0.C1501a;
import p012b.p076s.p078b.p079a.p095t0.C1508g;
/* renamed from: b.s.b.a.b1.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/b1/d.class */
public class C1202d extends MediaCodecRenderer {

    /* renamed from: a1 */
    public static final int[] f4803a1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* renamed from: b1 */
    public static boolean f4804b1;

    /* renamed from: c1 */
    public static boolean f4805c1;

    /* renamed from: A0 */
    public int f4806A0;

    /* renamed from: B0 */
    public boolean f4807B0;

    /* renamed from: C0 */
    public long f4808C0;

    /* renamed from: D0 */
    public long f4809D0;

    /* renamed from: E0 */
    public long f4810E0;

    /* renamed from: F0 */
    public int f4811F0;

    /* renamed from: G0 */
    public int f4812G0;

    /* renamed from: H0 */
    public int f4813H0;

    /* renamed from: I0 */
    public long f4814I0;

    /* renamed from: J0 */
    public int f4815J0;

    /* renamed from: K0 */
    public float f4816K0;

    /* renamed from: L0 */
    public int f4817L0;

    /* renamed from: M0 */
    public int f4818M0;

    /* renamed from: N0 */
    public int f4819N0;

    /* renamed from: O0 */
    public float f4820O0;

    /* renamed from: P0 */
    public int f4821P0;

    /* renamed from: Q0 */
    public int f4822Q0;

    /* renamed from: R0 */
    public int f4823R0;

    /* renamed from: S0 */
    public float f4824S0;

    /* renamed from: T0 */
    public boolean f4825T0;

    /* renamed from: U0 */
    public int f4826U0;

    /* renamed from: V0 */
    public C1205c f4827V0;

    /* renamed from: W0 */
    public long f4828W0;

    /* renamed from: X0 */
    public long f4829X0;

    /* renamed from: Y0 */
    public int f4830Y0;

    /* renamed from: Z0 */
    public AbstractC1206e f4831Z0;

    /* renamed from: o0 */
    public final Context f4832o0;

    /* renamed from: p0 */
    public final C1207f f4833p0;

    /* renamed from: q0 */
    public final AbstractC1218o.C1219a f4834q0;

    /* renamed from: r0 */
    public final long f4835r0;

    /* renamed from: s0 */
    public final int f4836s0;

    /* renamed from: t0 */
    public final boolean f4837t0;

    /* renamed from: u0 */
    public final long[] f4838u0;

    /* renamed from: v0 */
    public final long[] f4839v0;

    /* renamed from: w0 */
    public C1204b f4840w0;

    /* renamed from: x0 */
    public boolean f4841x0;

    /* renamed from: y0 */
    public Surface f4842y0;

    /* renamed from: z0 */
    public Surface f4843z0;

    /* renamed from: b.s.b.a.b1.d$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/b1/d$b.class */
    public static final class C1204b {

        /* renamed from: a */
        public final int f4844a;

        /* renamed from: b */
        public final int f4845b;

        /* renamed from: c */
        public final int f4846c;

        public C1204b(int i, int i2, int i3) {
            this.f4844a = i;
            this.f4845b = i2;
            this.f4846c = i3;
        }
    }

    /* renamed from: b.s.b.a.b1.d$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/b1/d$c.class */
    public final class C1205c implements MediaCodec.OnFrameRenderedListener {
        public C1205c(MediaCodec mediaCodec) {
            mediaCodec.setOnFrameRenderedListener(this, new Handler());
        }

        @Override // android.media.MediaCodec.OnFrameRenderedListener
        public void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
            C1202d dVar = C1202d.this;
            if (this == dVar.f4827V0) {
                dVar.m34231g(j);
            }
        }
    }

    public C1202d(Context context, AbstractC1502b bVar, long j, AbstractC1327k<C1333o> kVar, boolean z, Handler handler, AbstractC1218o oVar, int i) {
        this(context, bVar, j, kVar, z, false, handler, oVar, i);
    }

    public C1202d(Context context, AbstractC1502b bVar, long j, AbstractC1327k<C1333o> kVar, boolean z, boolean z2, Handler handler, AbstractC1218o oVar, int i) {
        super(2, bVar, kVar, z, z2, 30.0f);
        this.f4835r0 = j;
        this.f4836s0 = i;
        Context applicationContext = context.getApplicationContext();
        this.f4832o0 = applicationContext;
        this.f4833p0 = new C1207f(applicationContext);
        this.f4834q0 = new AbstractC1218o.C1219a(handler, oVar);
        this.f4837t0 = m34232f0();
        this.f4838u0 = new long[10];
        this.f4839v0 = new long[10];
        this.f4829X0 = -9223372036854775807L;
        this.f4828W0 = -9223372036854775807L;
        this.f4809D0 = -9223372036854775807L;
        this.f4817L0 = -1;
        this.f4818M0 = -1;
        this.f4820O0 = -1.0f;
        this.f4816K0 = -1.0f;
        this.f4806A0 = 1;
        m34262Y();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static int m34249a(C1501a aVar, String str, int i, int i2) {
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
            } else if ("BRAVIA 4K 2015".equals(C1167d0.f4691d)) {
                return -1;
            } else {
                if ("Amazon".equals(C1167d0.f4690c)) {
                    if ("KFSOWI".equals(C1167d0.f4691d)) {
                        return -1;
                    }
                    if ("AFTS".equals(C1167d0.f4691d) && aVar.f6164e) {
                        return -1;
                    }
                }
                i3 = C1167d0.m34494a(i, 16) * C1167d0.m34494a(i2, 16) * 16 * 16;
                i4 = 2;
                return (i3 * 3) / (i4 * 2);
            }
        }
        i3 = i * i2;
        i4 = 2;
        return (i3 * 3) / (i4 * 2);
    }

    /* renamed from: a */
    public static Point m34251a(C1501a aVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        int[] iArr;
        boolean z = format.f1568o > format.f1567n;
        int i = z ? format.f1568o : format.f1567n;
        int i2 = z ? format.f1567n : format.f1568o;
        float f = i2 / i;
        for (int i3 : f4803a1) {
            int i4 = (int) (i3 * f);
            if (i3 <= i || i4 <= i2) {
                return null;
            }
            if (C1167d0.f4688a >= 21) {
                int i5 = z ? i4 : i3;
                if (z) {
                    i4 = i3;
                }
                Point a = aVar.m33105a(i5, i4);
                if (aVar.m33104a(a.x, a.y, format.f1569p)) {
                    return a;
                }
            } else {
                int a2 = C1167d0.m34494a(i3, 16) * 16;
                int a3 = C1167d0.m34494a(i4, 16) * 16;
                if (a2 * a3 <= MediaCodecUtil.m38033b()) {
                    int i6 = z ? a3 : a2;
                    if (!z) {
                        a2 = a3;
                    }
                    return new Point(i6, a2);
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    public static List<C1501a> m34248a(AbstractC1502b bVar, Format format, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
        Pair<Integer, Integer> b;
        List<C1501a> a = MediaCodecUtil.m38035a(bVar.mo33084a(format.f1562i, z, z2), format);
        if ("video/dolby-vision".equals(format.f1562i) && (b = MediaCodecUtil.m38030b(format.f1559f)) != null) {
            int intValue = ((Integer) b.first).intValue();
            if (intValue == 4 || intValue == 8) {
                a.addAll(bVar.mo33084a("video/hevc", z, z2));
            } else if (intValue == 9) {
                a.addAll(bVar.mo33084a("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(a);
    }

    /* renamed from: a */
    public static void m34256a(MediaCodec mediaCodec, Surface surface) {
        mediaCodec.setOutputSurface(surface);
    }

    /* renamed from: a */
    public static void m34255a(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    /* renamed from: b */
    public static int m34244b(C1501a aVar, Format format) {
        if (format.f1563j == -1) {
            return m34249a(aVar, format.f1562i, format.f1567n, format.f1568o);
        }
        int size = format.f1564k.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += format.f1564k.get(i2).length;
        }
        return format.f1563j + i;
    }

    /* renamed from: f0 */
    public static boolean m34232f0() {
        return "NVIDIA".equals(C1167d0.f4690c);
    }

    /* renamed from: h */
    public static boolean m34230h(long j) {
        return j < -30000;
    }

    /* renamed from: i */
    public static boolean m34229i(long j) {
        return j < -500000;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: F */
    public boolean mo34266F() {
        try {
            return super.mo34266F();
        } finally {
            this.f4813H0 = 0;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: I */
    public boolean mo34265I() {
        return this.f4825T0;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: Q */
    public void mo34264Q() {
        try {
            super.mo34264Q();
        } finally {
            this.f4813H0 = 0;
        }
    }

    /* renamed from: X */
    public final void m34263X() {
        MediaCodec G;
        this.f4807B0 = false;
        if (C1167d0.f4688a >= 23 && this.f4825T0 && (G = m38085G()) != null) {
            this.f4827V0 = new C1205c(G);
        }
    }

    /* renamed from: Y */
    public final void m34262Y() {
        this.f4821P0 = -1;
        this.f4822Q0 = -1;
        this.f4824S0 = -1.0f;
        this.f4823R0 = -1;
    }

    /* renamed from: Z */
    public final void m34261Z() {
        if (this.f4811F0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f4834q0.m34209a(this.f4811F0, elapsedRealtime - this.f4810E0);
            this.f4811F0 = 0;
            this.f4810E0 = elapsedRealtime;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public float mo33831a(float f, Format format, Format[] formatArr) {
        float f2 = -1.0f;
        float f3 = -1.0f;
        for (Format format2 : formatArr) {
            float f4 = format2.f1569p;
            f3 = f3;
            if (f4 != -1.0f) {
                f3 = Math.max(f3, f4);
            }
        }
        if (f3 != -1.0f) {
            f2 = f3 * f;
        }
        return f2;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public int mo33825a(MediaCodec mediaCodec, C1501a aVar, Format format, Format format2) {
        if (!aVar.m33100a(format, format2, true)) {
            return 0;
        }
        int i = format2.f1567n;
        C1204b bVar = this.f4840w0;
        if (i > bVar.f4844a || format2.f1568o > bVar.f4845b || m34244b(aVar, format2) > this.f4840w0.f4846c) {
            return 0;
        }
        return format.m38169b(format2) ? 3 : 2;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public int mo33814a(AbstractC1502b bVar, AbstractC1327k<C1333o> kVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        if (!C1178m.m34398l(format.f1562i)) {
            return 0;
        }
        DrmInitData drmInitData = format.f1565l;
        boolean z = drmInitData != null;
        List<C1501a> a = m34248a(bVar, format, z, false);
        List<C1501a> list = a;
        if (z) {
            list = a;
            if (a.isEmpty()) {
                list = m34248a(bVar, format, false, false);
            }
        }
        if (list.isEmpty()) {
            return 1;
        }
        if (!AbstractC1197b.m34285a(kVar, drmInitData)) {
            return 2;
        }
        C1501a aVar = list.get(0);
        boolean a2 = aVar.m33101a(format);
        int i = aVar.m33093b(format) ? 16 : 8;
        int i2 = 0;
        if (a2) {
            List<C1501a> a3 = m34248a(bVar, format, z, true);
            i2 = 0;
            if (!a3.isEmpty()) {
                C1501a aVar2 = a3.get(0);
                i2 = 0;
                if (aVar2.m33101a(format)) {
                    i2 = 0;
                    if (aVar2.m33093b(format)) {
                        i2 = 32;
                    }
                }
            }
        }
        return (a2 ? 4 : 3) | i | i2;
    }

    /* renamed from: a */
    public MediaFormat m34253a(Format format, C1204b bVar, float f, boolean z, int i) {
        Pair<Integer, Integer> b;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", format.f1562i);
        mediaFormat.setInteger("width", format.f1567n);
        mediaFormat.setInteger("height", format.f1568o);
        C1508g.m33078a(mediaFormat, format.f1564k);
        C1508g.m33081a(mediaFormat, "frame-rate", format.f1569p);
        C1508g.m33080a(mediaFormat, "rotation-degrees", format.f1570q);
        C1508g.m33082a(mediaFormat, format.f1574u);
        if ("video/dolby-vision".equals(format.f1562i) && (b = MediaCodecUtil.m38030b(format.f1559f)) != null) {
            C1508g.m33080a(mediaFormat, "profile", ((Integer) b.first).intValue());
        }
        mediaFormat.setInteger("max-width", bVar.f4844a);
        mediaFormat.setInteger("max-height", bVar.f4845b);
        C1508g.m33080a(mediaFormat, "max-input-size", bVar.f4846c);
        if (C1167d0.f4688a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            m34255a(mediaFormat, i);
        }
        return mediaFormat;
    }

    /* renamed from: a */
    public C1204b m34250a(C1501a aVar, Format format, Format[] formatArr) throws MediaCodecUtil.DecoderQueryException {
        int i = format.f1567n;
        int i2 = format.f1568o;
        int b = m34244b(aVar, format);
        if (formatArr.length == 1) {
            int i3 = b;
            if (b != -1) {
                int a = m34249a(aVar, format.f1562i, format.f1567n, format.f1568o);
                i3 = b;
                if (a != -1) {
                    i3 = Math.min((int) (b * 1.5f), a);
                }
            }
            return new C1204b(i, i2, i3);
        }
        boolean z = false;
        int i4 = i2;
        for (Format format2 : formatArr) {
            i = i;
            i4 = i4;
            b = b;
            z = z;
            if (aVar.m33100a(format, format2, false)) {
                z |= format2.f1567n == -1 || format2.f1568o == -1;
                i = Math.max(i, format2.f1567n);
                i4 = Math.max(i4, format2.f1568o);
                b = Math.max(b, m34244b(aVar, format2));
            }
        }
        int i5 = i;
        int i6 = i4;
        int i7 = b;
        if (z) {
            StringBuilder sb = new StringBuilder(66);
            sb.append("Resolutions unknown. Codec max resolution: ");
            sb.append(i);
            sb.append("x");
            sb.append(i4);
            C1175j.m34414d("MediaCodecVideoRenderer", sb.toString());
            Point a2 = m34251a(aVar, format);
            i5 = i;
            i6 = i4;
            i7 = b;
            if (a2 != null) {
                i5 = Math.max(i, a2.x);
                i6 = Math.max(i4, a2.y);
                i7 = Math.max(b, m34249a(aVar, format.f1562i, i5, i6));
                StringBuilder sb2 = new StringBuilder(57);
                sb2.append("Codec max resolution adjusted to: ");
                sb2.append(i5);
                sb2.append("x");
                sb2.append(i6);
                C1175j.m34414d("MediaCodecVideoRenderer", sb2.toString());
            }
        }
        return new C1204b(i5, i6, i7);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public List<C1501a> mo33815a(AbstractC1502b bVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        return m34248a(bVar, format, z, this.f4825T0);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b, p012b.p076s.p078b.p079a.C1230f0.AbstractC1232b
    /* renamed from: a */
    public void mo33829a(int i, Object obj) throws ExoPlaybackException {
        if (i == 1) {
            m34254a((Surface) obj);
        } else if (i == 4) {
            this.f4806A0 = ((Integer) obj).intValue();
            MediaCodec G = m38085G();
            if (G != null) {
                G.setVideoScalingMode(this.f4806A0);
            }
        } else if (i == 6) {
            this.f4831Z0 = (AbstractC1206e) obj;
        } else {
            super.mo33829a(i, obj);
        }
    }

    /* renamed from: a */
    public final void m34260a(long j, long j2, Format format) {
        AbstractC1206e eVar = this.f4831Z0;
        if (eVar != null) {
            eVar.m34228a(j, j2, format);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo32130a(long j, boolean z) throws ExoPlaybackException {
        super.mo32130a(j, z);
        m34263X();
        this.f4808C0 = -9223372036854775807L;
        this.f4812G0 = 0;
        this.f4828W0 = -9223372036854775807L;
        int i = this.f4830Y0;
        if (i != 0) {
            this.f4829X0 = this.f4838u0[i - 1];
            this.f4830Y0 = 0;
        }
        if (z) {
            m34234e0();
        } else {
            this.f4809D0 = -9223372036854775807L;
        }
    }

    /* renamed from: a */
    public final void m34259a(MediaCodec mediaCodec, int i, int i2) {
        this.f4817L0 = i;
        this.f4818M0 = i2;
        this.f4820O0 = this.f4816K0;
        if (C1167d0.f4688a >= 21) {
            int i3 = this.f4815J0;
            if (i3 == 90 || i3 == 270) {
                int i4 = this.f4817L0;
                this.f4817L0 = this.f4818M0;
                this.f4818M0 = i4;
                this.f4820O0 = 1.0f / this.f4820O0;
            }
        } else {
            this.f4819N0 = this.f4815J0;
        }
        mediaCodec.setVideoScalingMode(this.f4806A0);
    }

    /* renamed from: a */
    public void m34258a(MediaCodec mediaCodec, int i, long j) {
        C1161a0.m34515a("dropVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        C1161a0.m34516a();
        m34238d(1);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo33826a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        m34259a(mediaCodec, z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width"), z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height"));
    }

    /* renamed from: a */
    public final void m34254a(Surface surface) throws ExoPlaybackException {
        Surface surface2 = surface;
        if (surface == null) {
            surface2 = this.f4843z0;
            if (surface2 == null) {
                C1501a H = m38084H();
                surface2 = surface;
                if (H != null) {
                    surface2 = surface;
                    if (m34240c(H)) {
                        surface2 = DummySurface.m37885a(this.f4832o0, H.f6164e);
                        this.f4843z0 = surface2;
                    }
                }
            }
        }
        if (this.f4842y0 != surface2) {
            this.f4842y0 = surface2;
            int d = mo34150d();
            MediaCodec G = m38085G();
            if (G != null) {
                if (C1167d0.f4688a < 23 || surface2 == null || this.f4841x0) {
                    mo34264Q();
                    m38081L();
                } else {
                    m34256a(G, surface2);
                }
            }
            if (surface2 == null || surface2 == this.f4843z0) {
                m34262Y();
                m34263X();
                return;
            }
            m34236d0();
            m34263X();
            if (d == 2) {
                m34234e0();
            }
        } else if (surface2 != null && surface2 != this.f4843z0) {
            m34236d0();
            m34239c0();
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo33819a(C1311d dVar) {
        this.f4813H0++;
        this.f4828W0 = Math.max(dVar.f5246d, this.f4828W0);
        if (C1167d0.f4688a < 23 && this.f4825T0) {
            m34231g(dVar.f5246d);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo33818a(C1501a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) throws MediaCodecUtil.DecoderQueryException {
        C1204b a = m34250a(aVar, format, m34280t());
        this.f4840w0 = a;
        MediaFormat a2 = m34253a(format, a, f, this.f4837t0, this.f4826U0);
        if (this.f4842y0 == null) {
            C1160a.m34518b(m34240c(aVar));
            if (this.f4843z0 == null) {
                this.f4843z0 = DummySurface.m37885a(this.f4832o0, aVar.f6164e);
            }
            this.f4842y0 = this.f4843z0;
        }
        mediaCodec.configure(a2, this.f4842y0, mediaCrypto, 0);
        if (C1167d0.f4688a >= 23 && this.f4825T0) {
            this.f4827V0 = new C1205c(mediaCodec);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo33813a(C1531w wVar) throws ExoPlaybackException {
        super.mo33813a(wVar);
        Format format = wVar.f6243a;
        this.f4834q0.m34207a(format);
        this.f4816K0 = format.f1571r;
        this.f4815J0 = format.f1570q;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo33812a(String str, long j, long j2) {
        this.f4834q0.m34205a(str, j, j2);
        this.f4841x0 = m34233f(str);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo33811a(boolean z) throws ExoPlaybackException {
        super.mo33811a(z);
        int i = this.f4826U0;
        int i2 = m34282r().f4935a;
        this.f4826U0 = i2;
        this.f4825T0 = i2 != 0;
        if (this.f4826U0 != i) {
            mo34264Q();
        }
        this.f4834q0.m34200b(this.f1717m0);
        this.f4833p0.m34222b();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo32127a(Format[] formatArr, long j) throws ExoPlaybackException {
        if (this.f4829X0 == -9223372036854775807L) {
            this.f4829X0 = j;
        } else {
            int i = this.f4830Y0;
            long[] jArr = this.f4838u0;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j2);
                C1175j.m34414d("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.f4830Y0 = i + 1;
            }
            long[] jArr2 = this.f4838u0;
            int i2 = this.f4830Y0;
            jArr2[i2 - 1] = j;
            this.f4839v0[i2 - 1] = this.f4828W0;
        }
        super.mo32127a(formatArr, j);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public boolean mo33827a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, Format format) throws ExoPlaybackException {
        if (this.f4808C0 == -9223372036854775807L) {
            this.f4808C0 = j;
        }
        long j4 = j3 - this.f4829X0;
        if (z) {
            m34241c(mediaCodec, i, j4);
            return true;
        }
        long j5 = j3 - j;
        if (this.f4842y0 != this.f4843z0) {
            long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            boolean z2 = mo34150d() == 2;
            if (!this.f4807B0 || (z2 && m34235e(j5, elapsedRealtime - this.f4814I0))) {
                long nanoTime = System.nanoTime();
                m34260a(j4, nanoTime, format);
                if (C1167d0.f4688a >= 21) {
                    m34245b(mediaCodec, i, j4, nanoTime);
                    return true;
                }
                m34246b(mediaCodec, i, j4);
                return true;
            } else if (!z2 || j == this.f4808C0) {
                return false;
            } else {
                long nanoTime2 = System.nanoTime();
                long a = this.f4833p0.m34226a(j3, ((j5 - (elapsedRealtime - j2)) * 1000) + nanoTime2);
                long j6 = (a - nanoTime2) / 1000;
                if (m34242c(j6, j2) && m34257a(mediaCodec, i, j4, j)) {
                    return false;
                }
                if (m34237d(j6, j2)) {
                    m34258a(mediaCodec, i, j4);
                    return true;
                } else if (C1167d0.f4688a >= 21) {
                    if (j6 >= 50000) {
                        return false;
                    }
                    m34260a(j4, a, format);
                    m34245b(mediaCodec, i, j4, a);
                    return true;
                } else if (j6 >= 30000) {
                    return false;
                } else {
                    if (j6 > 11000) {
                        try {
                            Thread.sleep((j6 - 10000) / 1000);
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                            return false;
                        }
                    }
                    m34260a(j4, a, format);
                    m34246b(mediaCodec, i, j4);
                    return true;
                }
            }
        } else if (!m34230h(j5)) {
            return false;
        } else {
            m34241c(mediaCodec, i, j4);
            return true;
        }
    }

    /* renamed from: a */
    public boolean m34257a(MediaCodec mediaCodec, int i, long j, long j2) throws ExoPlaybackException {
        int b = m34283b(j2);
        if (b == 0) {
            return false;
        }
        this.f1717m0.f5243i++;
        m34238d(this.f4813H0 + b);
        m38086E();
        return true;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public boolean mo34252a(C1501a aVar) {
        return this.f4842y0 != null || m34240c(aVar);
    }

    /* renamed from: a0 */
    public void m34247a0() {
        if (!this.f4807B0) {
            this.f4807B0 = true;
            this.f4834q0.m34202b(this.f4842y0);
        }
    }

    /* renamed from: b */
    public void m34246b(MediaCodec mediaCodec, int i, long j) {
        m34243b0();
        C1161a0.m34515a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        C1161a0.m34516a();
        this.f4814I0 = SystemClock.elapsedRealtime() * 1000;
        this.f1717m0.f5239e++;
        this.f4812G0 = 0;
        m34247a0();
    }

    /* renamed from: b */
    public void m34245b(MediaCodec mediaCodec, int i, long j, long j2) {
        m34243b0();
        C1161a0.m34515a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        C1161a0.m34516a();
        this.f4814I0 = SystemClock.elapsedRealtime() * 1000;
        this.f1717m0.f5239e++;
        this.f4812G0 = 0;
        m34247a0();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: b */
    public boolean mo32126b() {
        Surface surface;
        if (super.mo32126b() && (this.f4807B0 || (((surface = this.f4843z0) != null && this.f4842y0 == surface) || m38085G() == null || this.f4825T0))) {
            this.f4809D0 = -9223372036854775807L;
            return true;
        } else if (this.f4809D0 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f4809D0) {
                return true;
            }
            this.f4809D0 = -9223372036854775807L;
            return false;
        }
    }

    /* renamed from: b0 */
    public final void m34243b0() {
        if (this.f4817L0 != -1 || this.f4818M0 != -1) {
            if (this.f4821P0 != this.f4817L0 || this.f4822Q0 != this.f4818M0 || this.f4823R0 != this.f4819N0 || this.f4824S0 != this.f4820O0) {
                this.f4834q0.m34204b(this.f4817L0, this.f4818M0, this.f4819N0, this.f4820O0);
                this.f4821P0 = this.f4817L0;
                this.f4822Q0 = this.f4818M0;
                this.f4823R0 = this.f4819N0;
                this.f4824S0 = this.f4820O0;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: c */
    public void mo33810c(long j) {
        this.f4813H0--;
        while (true) {
            int i = this.f4830Y0;
            if (i != 0 && j >= this.f4839v0[0]) {
                long[] jArr = this.f4838u0;
                this.f4829X0 = jArr[0];
                int i2 = i - 1;
                this.f4830Y0 = i2;
                System.arraycopy(jArr, 1, jArr, 0, i2);
                long[] jArr2 = this.f4839v0;
                System.arraycopy(jArr2, 1, jArr2, 0, this.f4830Y0);
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public void m34241c(MediaCodec mediaCodec, int i, long j) {
        C1161a0.m34515a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        C1161a0.m34516a();
        this.f1717m0.f5240f++;
    }

    /* renamed from: c */
    public boolean m34242c(long j, long j2) {
        return m34229i(j);
    }

    /* renamed from: c */
    public final boolean m34240c(C1501a aVar) {
        return C1167d0.f4688a >= 23 && !this.f4825T0 && !m34233f(aVar.f6160a) && (!aVar.f6164e || DummySurface.m37884b(this.f4832o0));
    }

    /* renamed from: c0 */
    public final void m34239c0() {
        if (this.f4807B0) {
            this.f4834q0.m34202b(this.f4842y0);
        }
    }

    /* renamed from: d */
    public void m34238d(int i) {
        C1310c cVar = this.f1717m0;
        cVar.f5241g += i;
        this.f4811F0 += i;
        int i2 = this.f4812G0 + i;
        this.f4812G0 = i2;
        cVar.f5242h = Math.max(i2, cVar.f5242h);
        int i3 = this.f4836s0;
        if (i3 > 0 && this.f4811F0 >= i3) {
            m34261Z();
        }
    }

    /* renamed from: d */
    public boolean m34237d(long j, long j2) {
        return m34230h(j);
    }

    /* renamed from: d0 */
    public final void m34236d0() {
        if (this.f4821P0 != -1 || this.f4822Q0 != -1) {
            this.f4834q0.m34204b(this.f4821P0, this.f4822Q0, this.f4823R0, this.f4824S0);
        }
    }

    /* renamed from: e */
    public boolean m34235e(long j, long j2) {
        return m34230h(j) && j2 > 100000;
    }

    /* renamed from: e0 */
    public final void m34234e0() {
        this.f4809D0 = this.f4835r0 > 0 ? SystemClock.elapsedRealtime() + this.f4835r0 : -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:540:0x0ec8  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m34233f(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 3814
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p081b1.C1202d.m34233f(java.lang.String):boolean");
    }

    /* renamed from: g */
    public void m34231g(long j) {
        Format f = m38048f(j);
        if (f != null) {
            m34259a(m38085G(), f.f1567n, f.f1568o);
        }
        m34243b0();
        m34247a0();
        mo33810c(j);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: v */
    public void mo32995v() {
        this.f4828W0 = -9223372036854775807L;
        this.f4829X0 = -9223372036854775807L;
        this.f4830Y0 = 0;
        m34262Y();
        m34263X();
        this.f4833p0.m34227a();
        this.f4827V0 = null;
        try {
            super.mo32995v();
        } finally {
            this.f4834q0.m34206a(this.f1717m0);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: w */
    public void mo33803w() {
        try {
            super.mo33803w();
            Surface surface = this.f4843z0;
            if (surface != null) {
                if (this.f4842y0 == surface) {
                    this.f4842y0 = null;
                }
                this.f4843z0.release();
                this.f4843z0 = null;
            }
        } catch (Throwable th) {
            Surface surface2 = this.f4843z0;
            if (surface2 != null) {
                if (this.f4842y0 == surface2) {
                    this.f4842y0 = null;
                }
                this.f4843z0.release();
                this.f4843z0 = null;
            }
            throw th;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: x */
    public void mo33802x() {
        super.mo33802x();
        this.f4811F0 = 0;
        this.f4810E0 = SystemClock.elapsedRealtime();
        this.f4814I0 = SystemClock.elapsedRealtime() * 1000;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: y */
    public void mo33801y() {
        this.f4809D0 = -9223372036854775807L;
        m34261Z();
        super.mo33801y();
    }
}
