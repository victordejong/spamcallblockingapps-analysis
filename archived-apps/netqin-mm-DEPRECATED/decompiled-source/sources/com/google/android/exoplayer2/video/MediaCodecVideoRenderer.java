package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.AbstractC2962q;
import p131c.p161d.p170b.p188c.C2692b0;
import p131c.p161d.p170b.p188c.C2955n0;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2883g0;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2897r;
import p131c.p161d.p170b.p188c.p204h1.AbstractC2925n;
import p131c.p161d.p170b.p188c.p204h1.AbstractC2930q;
import p131c.p161d.p170b.p188c.p204h1.C2926o;
import p131c.p161d.p170b.p188c.p208u0.C3015c;
import p131c.p161d.p170b.p188c.p208u0.C3016d;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3023d;
import p131c.p161d.p170b.p188c.p209v0.C3027g;
import p131c.p161d.p170b.p188c.p219x0.AbstractC3199f;
import p131c.p161d.p170b.p188c.p219x0.C3198e;
import p131c.p161d.p170b.p188c.p219x0.C3201g;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/MediaCodecVideoRenderer.class */
public class MediaCodecVideoRenderer extends MediaCodecRenderer {

    /* renamed from: g1 */
    public static final int[] f22588g1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* renamed from: h1 */
    public static boolean f22589h1;

    /* renamed from: i1 */
    public static boolean f22590i1;

    /* renamed from: A0 */
    public C7214b f22591A0;

    /* renamed from: B0 */
    public boolean f22592B0;

    /* renamed from: C0 */
    public boolean f22593C0;

    /* renamed from: D0 */
    public Surface f22594D0;

    /* renamed from: E0 */
    public Surface f22595E0;

    /* renamed from: F0 */
    public int f22596F0;

    /* renamed from: G0 */
    public boolean f22597G0;

    /* renamed from: H0 */
    public long f22598H0;

    /* renamed from: I0 */
    public long f22599I0;

    /* renamed from: J0 */
    public long f22600J0;

    /* renamed from: K0 */
    public int f22601K0;

    /* renamed from: L0 */
    public int f22602L0;

    /* renamed from: M0 */
    public int f22603M0;

    /* renamed from: N0 */
    public long f22604N0;

    /* renamed from: O0 */
    public int f22605O0;

    /* renamed from: P0 */
    public float f22606P0;

    /* renamed from: Q0 */
    public MediaFormat f22607Q0;

    /* renamed from: R0 */
    public int f22608R0;

    /* renamed from: S0 */
    public int f22609S0;

    /* renamed from: T0 */
    public int f22610T0;

    /* renamed from: U0 */
    public float f22611U0;

    /* renamed from: V0 */
    public int f22612V0;

    /* renamed from: W0 */
    public int f22613W0;

    /* renamed from: X0 */
    public int f22614X0;

    /* renamed from: Y0 */
    public float f22615Y0;

    /* renamed from: Z0 */
    public boolean f22616Z0;

    /* renamed from: a1 */
    public int f22617a1;

    /* renamed from: b1 */
    public C7215c f22618b1;

    /* renamed from: c1 */
    public long f22619c1;

    /* renamed from: d1 */
    public long f22620d1;

    /* renamed from: e1 */
    public int f22621e1;

    /* renamed from: f1 */
    public AbstractC2925n f22622f1;

    /* renamed from: s0 */
    public final Context f22623s0;

    /* renamed from: t0 */
    public final C2926o f22624t0;

    /* renamed from: u0 */
    public final AbstractC2930q.C2931a f22625u0;

    /* renamed from: v0 */
    public final long f22626v0;

    /* renamed from: w0 */
    public final int f22627w0;

    /* renamed from: x0 */
    public final boolean f22628x0;

    /* renamed from: y0 */
    public final long[] f22629y0;

    /* renamed from: z0 */
    public final long[] f22630z0;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoDecoderException.class */
    public static final class VideoDecoderException extends MediaCodecRenderer.DecoderException {
        public final boolean isSurfaceValid;
        public final int surfaceIdentityHashCode;

        public VideoDecoderException(Throwable th, C3198e eVar, Surface surface) {
            super(th, eVar);
            this.surfaceIdentityHashCode = System.identityHashCode(surface);
            this.isSurfaceValid = surface == null || surface.isValid();
        }
    }

    /* renamed from: com.google.android.exoplayer2.video.MediaCodecVideoRenderer$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/MediaCodecVideoRenderer$b.class */
    public static final class C7214b {

        /* renamed from: a */
        public final int f22631a;

        /* renamed from: b */
        public final int f22632b;

        /* renamed from: c */
        public final int f22633c;

        public C7214b(int i, int i2, int i3) {
            this.f22631a = i;
            this.f22632b = i2;
            this.f22633c = i3;
        }
    }

    /* renamed from: com.google.android.exoplayer2.video.MediaCodecVideoRenderer$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/MediaCodecVideoRenderer$c.class */
    public final class C7215c implements MediaCodec.OnFrameRenderedListener {
        public C7215c(MediaCodec mediaCodec) {
            mediaCodec.setOnFrameRenderedListener(this, new Handler());
        }

        @Override // android.media.MediaCodec.OnFrameRenderedListener
        public void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
            MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
            if (this == mediaCodecVideoRenderer.f22618b1) {
                if (j == Long.MAX_VALUE) {
                    mediaCodecVideoRenderer.m18173f0();
                } else {
                    mediaCodecVideoRenderer.m18172g(j);
                }
            }
        }
    }

    public MediaCodecVideoRenderer(Context context, AbstractC3199f fVar, long j, Handler handler, AbstractC2930q qVar, int i) {
        this(context, fVar, j, null, false, handler, qVar, i);
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, AbstractC3199f fVar, long j, AbstractC3023d<C3027g> dVar, boolean z, Handler handler, AbstractC2930q qVar, int i) {
        this(context, fVar, j, dVar, z, false, handler, qVar, i);
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, AbstractC3199f fVar, long j, AbstractC3023d<C3027g> dVar, boolean z, boolean z2, Handler handler, AbstractC2930q qVar, int i) {
        super(2, fVar, dVar, z, z2, 30.0f);
        this.f22626v0 = j;
        this.f22627w0 = i;
        Context applicationContext = context.getApplicationContext();
        this.f22623s0 = applicationContext;
        this.f22624t0 = new C2926o(applicationContext);
        this.f22625u0 = new AbstractC2930q.C2931a(handler, qVar);
        this.f22628x0 = m18169h0();
        this.f22629y0 = new long[10];
        this.f22630z0 = new long[10];
        this.f22620d1 = -9223372036854775807L;
        this.f22619c1 = -9223372036854775807L;
        this.f22599I0 = -9223372036854775807L;
        this.f22608R0 = -1;
        this.f22609S0 = -1;
        this.f22611U0 = -1.0f;
        this.f22606P0 = -1.0f;
        this.f22596F0 = 1;
        m18221Z();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static int m18198a(C3198e eVar, String str, int i, int i2) {
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
            } else if ("BRAVIA 4K 2015".equals(C2885h0.f10480d)) {
                return -1;
            } else {
                if ("Amazon".equals(C2885h0.f10479c)) {
                    if ("KFSOWI".equals(C2885h0.f10480d)) {
                        return -1;
                    }
                    if ("AFTS".equals(C2885h0.f10480d) && eVar.f11804f) {
                        return -1;
                    }
                }
                i3 = C2885h0.m28686a(i, 16) * C2885h0.m28686a(i2, 16) * 16 * 16;
                i4 = 2;
                return (i3 * 3) / (i4 * 2);
            }
        }
        i3 = i * i2;
        i4 = 2;
        return (i3 * 3) / (i4 * 2);
    }

    /* renamed from: a */
    public static Point m18200a(C3198e eVar, Format format) {
        int[] iArr;
        boolean z = format.f21958o > format.f21957n;
        int i = z ? format.f21958o : format.f21957n;
        int i2 = z ? format.f21957n : format.f21958o;
        float f = i2 / i;
        for (int i3 : f22588g1) {
            int i4 = (int) (i3 * f);
            if (i3 <= i || i4 <= i2) {
                return null;
            }
            if (C2885h0.f10477a >= 21) {
                int i5 = z ? i4 : i3;
                if (!z) {
                    i3 = i4;
                }
                Point a = eVar.m27527a(i5, i3);
                if (eVar.m27526a(a.x, a.y, format.f21959p)) {
                    return a;
                }
            } else {
                try {
                    int a2 = C2885h0.m28686a(i3, 16) * 16;
                    int a3 = C2885h0.m28686a(i4, 16) * 16;
                    if (a2 * a3 <= MediaCodecUtil.m18540b()) {
                        int i6 = z ? a3 : a2;
                        if (z) {
                            a3 = a2;
                        }
                        return new Point(i6, a3);
                    }
                } catch (MediaCodecUtil.DecoderQueryException e) {
                    return null;
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    public static List<C3198e> m18195a(AbstractC3199f fVar, Format format, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
        Pair<Integer, Integer> a;
        String str = format.f21952i;
        if (str == null) {
            return Collections.emptyList();
        }
        List<C3198e> a2 = MediaCodecUtil.m18542a(fVar.mo27504a(str, z, z2), format);
        if ("video/dolby-vision".equals(str) && (a = MediaCodecUtil.m18551a(format)) != null) {
            int intValue = ((Integer) a.first).intValue();
            if (intValue == 16 || intValue == 256) {
                a2.addAll(fVar.mo27504a("video/hevc", z, z2));
            } else if (intValue == 512) {
                a2.addAll(fVar.mo27504a("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(a2);
    }

    /* renamed from: a */
    public static void m18209a(MediaCodec mediaCodec, Surface surface) {
        mediaCodec.setOutputSurface(surface);
    }

    /* renamed from: a */
    public static void m18207a(MediaCodec mediaCodec, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        mediaCodec.setParameters(bundle);
    }

    /* renamed from: a */
    public static void m18206a(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    /* renamed from: b */
    public static int m18184b(C3198e eVar, Format format) {
        if (format.f21953j == -1) {
            return m18198a(eVar, format.f21952i, format.f21957n, format.f21958o);
        }
        int size = format.f21954k.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += format.f21954k.get(i2).length;
        }
        return format.f21953j + i;
    }

    /* renamed from: h */
    public static boolean m18170h(long j) {
        return j < -30000;
    }

    /* renamed from: h0 */
    public static boolean m18169h0() {
        return "NVIDIA".equals(C2885h0.f10479c);
    }

    /* renamed from: i */
    public static boolean m18168i(long j) {
        return j < -500000;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: F */
    public boolean mo18225F() {
        try {
            return super.mo18225F();
        } finally {
            this.f22603M0 = 0;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: I */
    public boolean mo18224I() {
        return this.f22616Z0 && C2885h0.f10477a < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: Q */
    public void mo18223Q() {
        try {
            super.mo18223Q();
        } finally {
            this.f22603M0 = 0;
        }
    }

    /* renamed from: Y */
    public final void m18222Y() {
        MediaCodec G;
        this.f22597G0 = false;
        if (C2885h0.f10477a >= 23 && this.f22616Z0 && (G = m18602G()) != null) {
            this.f22618b1 = new C7215c(G);
        }
    }

    /* renamed from: Z */
    public final void m18221Z() {
        this.f22612V0 = -1;
        this.f22613W0 = -1;
        this.f22615Y0 = -1.0f;
        this.f22614X0 = -1;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public float mo18220a(float f, Format format, Format[] formatArr) {
        float f2 = -1.0f;
        float f3 = -1.0f;
        for (Format format2 : formatArr) {
            float f4 = format2.f21959p;
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

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public int mo18208a(MediaCodec mediaCodec, C3198e eVar, Format format, Format format2) {
        if (!eVar.m27521a(format, format2, true)) {
            return 0;
        }
        int i = format2.f21957n;
        C7214b bVar = this.f22591A0;
        if (i > bVar.f22631a || format2.f21958o > bVar.f22632b || m18184b(eVar, format2) > this.f22591A0.f22633c) {
            return 0;
        }
        return format.m18709a(format2) ? 3 : 2;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public int mo18197a(AbstractC3199f fVar, AbstractC3023d<C3027g> dVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        if (!C2897r.m28579k(format.f21952i)) {
            return C2955n0.m28397a(0);
        }
        DrmInitData drmInitData = format.f21955l;
        boolean z = drmInitData != null;
        List<C3198e> a = m18195a(fVar, format, z, false);
        List<C3198e> list = a;
        if (z) {
            list = a;
            if (a.isEmpty()) {
                list = m18195a(fVar, format, false, false);
            }
        }
        if (list.isEmpty()) {
            return C2955n0.m28397a(1);
        }
        if (!(drmInitData == null || C3027g.class.equals(format.f21942C) || (format.f21942C == null && AbstractC2962q.m28377a(dVar, drmInitData)))) {
            return C2955n0.m28397a(2);
        }
        C3198e eVar = list.get(0);
        boolean b = eVar.m27514b(format);
        int i = eVar.m27511c(format) ? 16 : 8;
        int i2 = 0;
        if (b) {
            List<C3198e> a2 = m18195a(fVar, format, z, true);
            i2 = 0;
            if (!a2.isEmpty()) {
                C3198e eVar2 = a2.get(0);
                i2 = 0;
                if (eVar2.m27514b(format)) {
                    i2 = 0;
                    if (eVar2.m27511c(format)) {
                        i2 = 32;
                    }
                }
            }
        }
        return C2955n0.m28396a(b ? 4 : 3, i, i2);
    }

    /* renamed from: a */
    public MediaFormat m18194a(Format format, String str, C7214b bVar, float f, boolean z, int i) {
        Pair<Integer, Integer> a;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.f21957n);
        mediaFormat.setInteger("height", format.f21958o);
        C3201g.m27499a(mediaFormat, format.f21954k);
        C3201g.m27502a(mediaFormat, "frame-rate", format.f21959p);
        C3201g.m27501a(mediaFormat, "rotation-degrees", format.f21960q);
        C3201g.m27503a(mediaFormat, format.f21964u);
        if ("video/dolby-vision".equals(format.f21952i) && (a = MediaCodecUtil.m18551a(format)) != null) {
            C3201g.m27501a(mediaFormat, "profile", ((Integer) a.first).intValue());
        }
        mediaFormat.setInteger("max-width", bVar.f22631a);
        mediaFormat.setInteger("max-height", bVar.f22632b);
        C3201g.m27501a(mediaFormat, "max-input-size", bVar.f22633c);
        if (C2885h0.f10477a >= 23) {
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
            m18206a(mediaFormat, i);
        }
        return mediaFormat;
    }

    /* renamed from: a */
    public C7214b m18199a(C3198e eVar, Format format, Format[] formatArr) {
        int i = format.f21957n;
        int i2 = format.f21958o;
        int b = m18184b(eVar, format);
        if (formatArr.length == 1) {
            int i3 = b;
            if (b != -1) {
                int a = m18198a(eVar, format.f21952i, format.f21957n, format.f21958o);
                i3 = b;
                if (a != -1) {
                    i3 = Math.min((int) (b * 1.5f), a);
                }
            }
            return new C7214b(i, i2, i3);
        }
        boolean z = false;
        int i4 = i2;
        for (Format format2 : formatArr) {
            i = i;
            i4 = i4;
            b = b;
            z = z;
            if (eVar.m27521a(format, format2, false)) {
                z |= format2.f21957n == -1 || format2.f21958o == -1;
                i = Math.max(i, format2.f21957n);
                i4 = Math.max(i4, format2.f21958o);
                b = Math.max(b, m18184b(eVar, format2));
            }
        }
        int i5 = i;
        int i6 = i4;
        int i7 = b;
        if (z) {
            C2894o.m28594d("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i + "x" + i4);
            Point a2 = m18200a(eVar, format);
            i5 = i;
            i6 = i4;
            i7 = b;
            if (a2 != null) {
                i5 = Math.max(i, a2.x);
                i6 = Math.max(i4, a2.y);
                i7 = Math.max(b, m18198a(eVar, format.f21952i, i5, i6));
                C2894o.m28594d("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i5 + "x" + i6);
            }
        }
        return new C7214b(i5, i6, i7);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public List<C3198e> mo18196a(AbstractC3199f fVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        return m18195a(fVar, format, z, this.f22616Z0);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2962q, p131c.p161d.p170b.p188c.C2949l0.AbstractC2951b
    /* renamed from: a */
    public void mo18219a(int i, Object obj) throws ExoPlaybackException {
        if (i == 1) {
            m18205a((Surface) obj);
        } else if (i == 4) {
            this.f22596F0 = ((Integer) obj).intValue();
            MediaCodec G = m18602G();
            if (G != null) {
                G.setVideoScalingMode(this.f22596F0);
            }
        } else if (i == 6) {
            this.f22622f1 = (AbstractC2925n) obj;
        } else {
            super.mo18219a(i, obj);
        }
    }

    /* renamed from: a */
    public final void m18217a(long j, long j2, Format format, MediaFormat mediaFormat) {
        AbstractC2925n nVar = this.f22622f1;
        if (nVar != null) {
            nVar.mo28491a(j, j2, format, mediaFormat);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: a */
    public void mo18215a(long j, boolean z) throws ExoPlaybackException {
        super.mo18215a(j, z);
        m18222Y();
        this.f22598H0 = -9223372036854775807L;
        this.f22602L0 = 0;
        this.f22619c1 = -9223372036854775807L;
        int i = this.f22621e1;
        if (i != 0) {
            this.f22620d1 = this.f22629y0[i - 1];
            this.f22621e1 = 0;
        }
        if (z) {
            m18171g0();
        } else {
            this.f22599I0 = -9223372036854775807L;
        }
    }

    /* renamed from: a */
    public final void m18214a(MediaCodec mediaCodec, int i, int i2) {
        this.f22608R0 = i;
        this.f22609S0 = i2;
        this.f22611U0 = this.f22606P0;
        if (C2885h0.f10477a >= 21) {
            int i3 = this.f22605O0;
            if (i3 == 90 || i3 == 270) {
                int i4 = this.f22608R0;
                this.f22608R0 = this.f22609S0;
                this.f22609S0 = i4;
                this.f22611U0 = 1.0f / this.f22611U0;
            }
        } else {
            this.f22610T0 = this.f22605O0;
        }
        mediaCodec.setVideoScalingMode(this.f22596F0);
    }

    /* renamed from: a */
    public void m18213a(MediaCodec mediaCodec, int i, long j) {
        C2883g0.m28701a("dropVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        C2883g0.m28702a();
        m18178d(1);
    }

    /* renamed from: a */
    public void m18212a(MediaCodec mediaCodec, int i, long j, long j2) {
        m18179c0();
        C2883g0.m28701a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        C2883g0.m28702a();
        this.f22604N0 = SystemClock.elapsedRealtime() * 1000;
        this.f22105q0.f10897e++;
        this.f22602L0 = 0;
        m18183b0();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo18210a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        this.f22607Q0 = mediaFormat;
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        m18214a(mediaCodec, z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width"), z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height"));
    }

    /* renamed from: a */
    public final void m18205a(Surface surface) throws ExoPlaybackException {
        Surface surface2 = surface;
        if (surface == null) {
            surface2 = this.f22595E0;
            if (surface2 == null) {
                C3198e H = m18601H();
                surface2 = surface;
                if (H != null) {
                    surface2 = surface;
                    if (m18180c(H)) {
                        surface2 = DummySurface.m18231a(this.f22623s0, H.f11804f);
                        this.f22595E0 = surface2;
                    }
                }
            }
        }
        if (this.f22594D0 != surface2) {
            this.f22594D0 = surface2;
            int d = mo28372d();
            MediaCodec G = m18602G();
            if (G != null) {
                if (C2885h0.f10477a < 23 || surface2 == null || this.f22592B0) {
                    mo18223Q();
                    m18598L();
                } else {
                    m18209a(G, surface2);
                }
            }
            if (surface2 == null || surface2 == this.f22595E0) {
                m18221Z();
                m18222Y();
                return;
            }
            m18175e0();
            m18222Y();
            if (d == 2) {
                m18171g0();
            }
        } else if (surface2 != null && surface2 != this.f22595E0) {
            m18175e0();
            m18176d0();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo18204a(C2692b0 b0Var) throws ExoPlaybackException {
        super.mo18204a(b0Var);
        Format format = b0Var.f9832c;
        this.f22625u0.m28463a(format);
        this.f22606P0 = format.f21961r;
        this.f22605O0 = format.f21960q;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo18203a(C3016d dVar) throws ExoPlaybackException {
        if (this.f22593C0) {
            ByteBuffer byteBuffer = dVar.f10905e;
            C2877e.m28737a(byteBuffer);
            ByteBuffer byteBuffer2 = byteBuffer;
            if (byteBuffer2.remaining() >= 7) {
                byte b = byteBuffer2.get();
                short s = byteBuffer2.getShort();
                short s2 = byteBuffer2.getShort();
                byte b2 = byteBuffer2.get();
                byte b3 = byteBuffer2.get();
                byteBuffer2.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4 && b3 == 0) {
                    byte[] bArr = new byte[byteBuffer2.remaining()];
                    byteBuffer2.get(bArr);
                    byteBuffer2.position(0);
                    m18207a(m18602G(), bArr);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo18201a(C3198e eVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) {
        String str = eVar.f11801c;
        C7214b a = m18199a(eVar, format, m28359u());
        this.f22591A0 = a;
        MediaFormat a2 = m18194a(format, str, a, f, this.f22628x0, this.f22617a1);
        if (this.f22594D0 == null) {
            C2877e.m28731b(m18180c(eVar));
            if (this.f22595E0 == null) {
                this.f22595E0 = DummySurface.m18231a(this.f22623s0, eVar.f11804f);
            }
            this.f22594D0 = this.f22595E0;
        }
        mediaCodec.configure(a2, this.f22594D0, mediaCrypto, 0);
        if (C2885h0.f10477a >= 23 && this.f22616Z0) {
            this.f22618b1 = new C7215c(mediaCodec);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo18192a(String str, long j, long j2) {
        this.f22625u0.m28462a(str, j, j2);
        this.f22592B0 = m18174f(str);
        C3198e H = m18601H();
        C2877e.m28737a(H);
        this.f22593C0 = H.m27517b();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: a */
    public void mo18191a(boolean z) throws ExoPlaybackException {
        super.mo18191a(z);
        int i = this.f22617a1;
        int i2 = m28362r().f10658a;
        this.f22617a1 = i2;
        this.f22616Z0 = i2 != 0;
        if (this.f22617a1 != i) {
            mo18223Q();
        }
        this.f22625u0.m28458b(this.f22105q0);
        this.f22624t0.m28485b();
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: a */
    public void mo18190a(Format[] formatArr, long j) throws ExoPlaybackException {
        if (this.f22620d1 == -9223372036854775807L) {
            this.f22620d1 = j;
        } else {
            int i = this.f22621e1;
            if (i == this.f22629y0.length) {
                C2894o.m28594d("MediaCodecVideoRenderer", "Too many stream changes, so dropping offset: " + this.f22629y0[this.f22621e1 - 1]);
            } else {
                this.f22621e1 = i + 1;
            }
            long[] jArr = this.f22629y0;
            int i2 = this.f22621e1;
            jArr[i2 - 1] = j;
            this.f22630z0[i2 - 1] = this.f22619c1;
        }
        super.mo18190a(formatArr, j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public boolean mo18218a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2, Format format) throws ExoPlaybackException {
        if (this.f22598H0 == -9223372036854775807L) {
            this.f22598H0 = j;
        }
        long j4 = j3 - this.f22620d1;
        if (!z || z2) {
            long j5 = j3 - j;
            if (this.f22594D0 != this.f22595E0) {
                long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
                long j6 = this.f22604N0;
                boolean z3 = mo28372d() == 2;
                if (this.f22599I0 == -9223372036854775807L && j >= this.f22620d1 && (!this.f22597G0 || (z3 && m18182c(j5, elapsedRealtime - j6)))) {
                    long nanoTime = System.nanoTime();
                    m18217a(j4, nanoTime, format, this.f22607Q0);
                    if (C2885h0.f10477a >= 21) {
                        m18212a(mediaCodec, i, j4, nanoTime);
                        return true;
                    }
                    m18186b(mediaCodec, i, j4);
                    return true;
                } else if (!z3 || j == this.f22598H0) {
                    return false;
                } else {
                    long nanoTime2 = System.nanoTime();
                    long a = this.f22624t0.m28489a(j3, ((j5 - (elapsedRealtime - j2)) * 1000) + nanoTime2);
                    long j7 = (a - nanoTime2) / 1000;
                    boolean z4 = this.f22599I0 != -9223372036854775807L;
                    if (m18216a(j7, j2, z2) && m18211a(mediaCodec, i, j4, j, z4)) {
                        return false;
                    }
                    if (m18187b(j7, j2, z2)) {
                        if (z4) {
                            m18181c(mediaCodec, i, j4);
                            return true;
                        }
                        m18213a(mediaCodec, i, j4);
                        return true;
                    } else if (C2885h0.f10477a >= 21) {
                        if (j7 >= 50000) {
                            return false;
                        }
                        m18217a(j4, a, format, this.f22607Q0);
                        m18212a(mediaCodec, i, j4, a);
                        return true;
                    } else if (j7 >= 30000) {
                        return false;
                    } else {
                        if (j7 > 11000) {
                            try {
                                Thread.sleep((j7 - 10000) / 1000);
                            } catch (InterruptedException e) {
                                Thread.currentThread().interrupt();
                                return false;
                            }
                        }
                        m18217a(j4, a, format, this.f22607Q0);
                        m18186b(mediaCodec, i, j4);
                        return true;
                    }
                }
            } else if (!m18170h(j5)) {
                return false;
            } else {
                m18181c(mediaCodec, i, j4);
                return true;
            }
        } else {
            m18181c(mediaCodec, i, j4);
            return true;
        }
    }

    /* renamed from: a */
    public boolean m18216a(long j, long j2, boolean z) {
        return m18168i(j) && !z;
    }

    /* renamed from: a */
    public boolean m18211a(MediaCodec mediaCodec, int i, long j, long j2, boolean z) throws ExoPlaybackException {
        int b = m28373b(j2);
        if (b == 0) {
            return false;
        }
        C3015c cVar = this.f22105q0;
        cVar.f10901i++;
        int i2 = this.f22603M0 + b;
        if (z) {
            cVar.f10898f += i2;
        } else {
            m18178d(i2);
        }
        m18603E();
        return true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public boolean mo18202a(C3198e eVar) {
        return this.f22594D0 != null || m18180c(eVar);
    }

    /* renamed from: a0 */
    public final void m18189a0() {
        if (this.f22601K0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f22625u0.m28466a(this.f22601K0, elapsedRealtime - this.f22600J0);
            this.f22601K0 = 0;
            this.f22600J0 = elapsedRealtime;
        }
    }

    /* renamed from: b */
    public void m18186b(MediaCodec mediaCodec, int i, long j) {
        m18179c0();
        C2883g0.m28701a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        C2883g0.m28702a();
        this.f22604N0 = SystemClock.elapsedRealtime() * 1000;
        this.f22105q0.f10897e++;
        this.f22602L0 = 0;
        m18183b0();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: b */
    public void mo18185b(C3016d dVar) {
        this.f22603M0++;
        this.f22619c1 = Math.max(dVar.f10904d, this.f22619c1);
        if (C2885h0.f10477a < 23 && this.f22616Z0) {
            m18172g(dVar.f10904d);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: b */
    public boolean mo18188b() {
        Surface surface;
        if (super.mo18188b() && (this.f22597G0 || (((surface = this.f22595E0) != null && this.f22594D0 == surface) || m18602G() == null || this.f22616Z0))) {
            this.f22599I0 = -9223372036854775807L;
            return true;
        } else if (this.f22599I0 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f22599I0) {
                return true;
            }
            this.f22599I0 = -9223372036854775807L;
            return false;
        }
    }

    /* renamed from: b */
    public boolean m18187b(long j, long j2, boolean z) {
        return m18170h(j) && !z;
    }

    /* renamed from: b0 */
    public void m18183b0() {
        if (!this.f22597G0) {
            this.f22597G0 = true;
            this.f22625u0.m28459b(this.f22594D0);
        }
    }

    /* renamed from: c */
    public void m18181c(MediaCodec mediaCodec, int i, long j) {
        C2883g0.m28701a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        C2883g0.m28702a();
        this.f22105q0.f10898f++;
    }

    /* renamed from: c */
    public boolean m18182c(long j, long j2) {
        return m18170h(j) && j2 > 100000;
    }

    /* renamed from: c */
    public final boolean m18180c(C3198e eVar) {
        return C2885h0.f10477a >= 23 && !this.f22616Z0 && !m18174f(eVar.f11799a) && (!eVar.f11804f || DummySurface.m18230b(this.f22623s0));
    }

    /* renamed from: c0 */
    public final void m18179c0() {
        if (this.f22608R0 != -1 || this.f22609S0 != -1) {
            if (this.f22612V0 != this.f22608R0 || this.f22613W0 != this.f22609S0 || this.f22614X0 != this.f22610T0 || this.f22615Y0 != this.f22611U0) {
                this.f22625u0.m28461b(this.f22608R0, this.f22609S0, this.f22610T0, this.f22611U0);
                this.f22612V0 = this.f22608R0;
                this.f22613W0 = this.f22609S0;
                this.f22614X0 = this.f22610T0;
                this.f22615Y0 = this.f22611U0;
            }
        }
    }

    /* renamed from: d */
    public void m18178d(int i) {
        C3015c cVar = this.f22105q0;
        cVar.f10899g += i;
        this.f22601K0 += i;
        int i2 = this.f22602L0 + i;
        this.f22602L0 = i2;
        cVar.f10900h = Math.max(i2, cVar.f10900h);
        int i3 = this.f22627w0;
        if (i3 > 0 && this.f22601K0 >= i3) {
            m18189a0();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: d */
    public void mo18177d(long j) {
        this.f22603M0--;
        while (true) {
            int i = this.f22621e1;
            if (i != 0 && j >= this.f22630z0[0]) {
                long[] jArr = this.f22629y0;
                this.f22620d1 = jArr[0];
                int i2 = i - 1;
                this.f22621e1 = i2;
                System.arraycopy(jArr, 1, jArr, 0, i2);
                long[] jArr2 = this.f22630z0;
                System.arraycopy(jArr2, 1, jArr2, 0, this.f22621e1);
                m18222Y();
            } else {
                return;
            }
        }
    }

    /* renamed from: d0 */
    public final void m18176d0() {
        if (this.f22597G0) {
            this.f22625u0.m28459b(this.f22594D0);
        }
    }

    /* renamed from: e0 */
    public final void m18175e0() {
        if (this.f22612V0 != -1 || this.f22613W0 != -1) {
            this.f22625u0.m28461b(this.f22612V0, this.f22613W0, this.f22614X0, this.f22615Y0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:554:0x0f1c  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m18174f(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 3904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.MediaCodecVideoRenderer.m18174f(java.lang.String):boolean");
    }

    /* renamed from: f0 */
    public final void m18173f0() {
        m18589V();
    }

    /* renamed from: g */
    public void m18172g(long j) {
        Format f = m18558f(j);
        if (f != null) {
            m18214a(m18602G(), f.f21957n, f.f21958o);
        }
        m18179c0();
        m18183b0();
        mo18177d(j);
    }

    /* renamed from: g0 */
    public final void m18171g0() {
        this.f22599I0 = this.f22626v0 > 0 ? SystemClock.elapsedRealtime() + this.f22626v0 : -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: w */
    public void mo18167w() {
        this.f22619c1 = -9223372036854775807L;
        this.f22620d1 = -9223372036854775807L;
        this.f22621e1 = 0;
        this.f22607Q0 = null;
        m18221Z();
        m18222Y();
        this.f22624t0.m28490a();
        this.f22618b1 = null;
        try {
            super.mo18167w();
        } finally {
            this.f22625u0.m28464a(this.f22105q0);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: x */
    public void mo18166x() {
        try {
            super.mo18166x();
            Surface surface = this.f22595E0;
            if (surface != null) {
                if (this.f22594D0 == surface) {
                    this.f22594D0 = null;
                }
                this.f22595E0.release();
                this.f22595E0 = null;
            }
        } catch (Throwable th) {
            Surface surface2 = this.f22595E0;
            if (surface2 != null) {
                if (this.f22594D0 == surface2) {
                    this.f22594D0 = null;
                }
                this.f22595E0.release();
                this.f22595E0 = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: y */
    public void mo18165y() {
        super.mo18165y();
        this.f22601K0 = 0;
        this.f22600J0 = SystemClock.elapsedRealtime();
        this.f22604N0 = SystemClock.elapsedRealtime() * 1000;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: z */
    public void mo18164z() {
        this.f22599I0 = -9223372036854775807L;
        m18189a0();
        super.mo18164z();
    }
}
