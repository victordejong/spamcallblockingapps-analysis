package p131c.p161d.p170b.p188c.p206s0;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.AbstractC2962q;
import p131c.p161d.p170b.p188c.C2692b0;
import p131c.p161d.p170b.p188c.C2910h0;
import p131c.p161d.p170b.p188c.C2955n0;
import p131c.p161d.p170b.p188c.p203g1.AbstractC2896q;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2897r;
import p131c.p161d.p170b.p188c.p206s0.AbstractC2986k;
import p131c.p161d.p170b.p188c.p208u0.C3016d;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3023d;
import p131c.p161d.p170b.p188c.p209v0.C3027g;
import p131c.p161d.p170b.p188c.p219x0.AbstractC3199f;
import p131c.p161d.p170b.p188c.p219x0.C3198e;
import p131c.p161d.p170b.p188c.p219x0.C3201g;
/* renamed from: c.d.b.c.s0.s */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/s.class */
public class C2997s extends MediaCodecRenderer implements AbstractC2896q {

    /* renamed from: A0 */
    public MediaFormat f10792A0;

    /* renamed from: B0 */
    public Format f10793B0;

    /* renamed from: C0 */
    public long f10794C0;

    /* renamed from: D0 */
    public boolean f10795D0;

    /* renamed from: E0 */
    public boolean f10796E0;

    /* renamed from: F0 */
    public long f10797F0;

    /* renamed from: G0 */
    public int f10798G0;

    /* renamed from: s0 */
    public final Context f10799s0;

    /* renamed from: t0 */
    public final AbstractC2986k.C2987a f10800t0;

    /* renamed from: u0 */
    public final AudioSink f10801u0;

    /* renamed from: v0 */
    public final long[] f10802v0;

    /* renamed from: w0 */
    public int f10803w0;

    /* renamed from: x0 */
    public boolean f10804x0;

    /* renamed from: y0 */
    public boolean f10805y0;

    /* renamed from: z0 */
    public boolean f10806z0;

    /* renamed from: c.d.b.c.s0.s$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/s0/s$b.class */
    public final class C2999b implements AudioSink.AbstractC7123a {
        public C2999b() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC7123a
        /* renamed from: a */
        public void mo18686a() {
            C2997s.this.m28235Y();
            C2997s.this.f10796E0 = true;
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC7123a
        /* renamed from: a */
        public void mo18685a(int i) {
            C2997s.this.f10800t0.m28290a(i);
            C2997s.this.m28222d(i);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.AbstractC7123a
        /* renamed from: a */
        public void mo18684a(int i, long j, long j2) {
            C2997s.this.f10800t0.m28289a(i, j, j2);
            C2997s.this.m28233a(i, j, j2);
        }
    }

    public C2997s(Context context, AbstractC3199f fVar) {
        this(context, fVar, null, false);
    }

    @Deprecated
    public C2997s(Context context, AbstractC3199f fVar, AbstractC3023d<C3027g> dVar, boolean z) {
        this(context, fVar, dVar, z, null, null);
    }

    @Deprecated
    public C2997s(Context context, AbstractC3199f fVar, AbstractC3023d<C3027g> dVar, boolean z, Handler handler, AbstractC2986k kVar) {
        this(context, fVar, dVar, z, handler, kVar, (C2985j) null, new AudioProcessor[0]);
    }

    @Deprecated
    public C2997s(Context context, AbstractC3199f fVar, AbstractC3023d<C3027g> dVar, boolean z, Handler handler, AbstractC2986k kVar, C2985j jVar, AudioProcessor... audioProcessorArr) {
        this(context, fVar, dVar, z, handler, kVar, new DefaultAudioSink(jVar, audioProcessorArr));
    }

    @Deprecated
    public C2997s(Context context, AbstractC3199f fVar, AbstractC3023d<C3027g> dVar, boolean z, Handler handler, AbstractC2986k kVar, AudioSink audioSink) {
        this(context, fVar, dVar, z, false, handler, kVar, audioSink);
    }

    @Deprecated
    public C2997s(Context context, AbstractC3199f fVar, AbstractC3023d<C3027g> dVar, boolean z, boolean z2, Handler handler, AbstractC2986k kVar, AudioSink audioSink) {
        super(1, fVar, dVar, z, z2, 44100.0f);
        this.f10799s0 = context.getApplicationContext();
        this.f10801u0 = audioSink;
        this.f10797F0 = -9223372036854775807L;
        this.f10802v0 = new long[10];
        this.f10800t0 = new AbstractC2986k.C2987a(handler, kVar);
        audioSink.mo18664a(new C2999b());
    }

    /* renamed from: a0 */
    public static boolean m28225a0() {
        return C2885h0.f10477a == 23 && ("ZTE B2017G".equals(C2885h0.f10480d) || "AXON 7 mini".equals(C2885h0.f10480d));
    }

    /* renamed from: b */
    public static int m28223b(Format format) {
        return "audio/raw".equals(format.f21952i) ? format.f21967x : 2;
    }

    /* renamed from: f */
    public static boolean m28221f(String str) {
        return C2885h0.f10477a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(C2885h0.f10479c) && (C2885h0.f10478b.startsWith("zeroflte") || C2885h0.f10478b.startsWith("herolte") || C2885h0.f10478b.startsWith("heroqlte"));
    }

    /* renamed from: g */
    public static boolean m28220g(String str) {
        return C2885h0.f10477a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(C2885h0.f10479c) && (C2885h0.f10478b.startsWith("baffin") || C2885h0.f10478b.startsWith("grand") || C2885h0.f10478b.startsWith("fortuna") || C2885h0.f10478b.startsWith("gprimelte") || C2885h0.f10478b.startsWith("j2y18lte") || C2885h0.f10478b.startsWith("ms01"));
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: R */
    public void mo18593R() throws ExoPlaybackException {
        try {
            this.f10801u0.mo18682T();
        } catch (AudioSink.WriteException e) {
            throw m28375a(e, this.f10793B0);
        }
    }

    /* renamed from: Y */
    public void m28235Y() {
    }

    /* renamed from: Z */
    public final void m28234Z() {
        long a = this.f10801u0.mo18661a(mo18567c());
        if (a != Long.MIN_VALUE) {
            if (!this.f10796E0) {
                a = Math.max(this.f10794C0, a);
            }
            this.f10794C0 = a;
            this.f10796E0 = false;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public float mo18220a(float f, Format format, Format[] formatArr) {
        int i = -1;
        for (Format format2 : formatArr) {
            int i2 = format2.f21966w;
            i = i;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        return i == -1 ? -1.0f : f * i;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public int mo18208a(MediaCodec mediaCodec, C3198e eVar, Format format, Format format2) {
        if (m28229a(eVar, format2) > this.f10803w0 || format.f21968y != 0 || format.f21969z != 0 || format2.f21968y != 0 || format2.f21969z != 0) {
            return 0;
        }
        if (eVar.m27521a(format, format2, true)) {
            return 3;
        }
        return m28227a(format, format2) ? 1 : 0;
    }

    /* renamed from: a */
    public final int m28229a(C3198e eVar, Format format) {
        int i;
        if (!"OMX.google.raw.decoder".equals(eVar.f11799a) || (i = C2885h0.f10477a) >= 24 || (i == 23 && C2885h0.m28638c(this.f10799s0))) {
            return format.f21953j;
        }
        return -1;
    }

    /* renamed from: a */
    public int m28228a(C3198e eVar, Format format, Format[] formatArr) {
        int a = m28229a(eVar, format);
        if (formatArr.length == 1) {
            return a;
        }
        for (Format format2 : formatArr) {
            a = a;
            if (eVar.m27521a(format, format2, false)) {
                a = Math.max(a, m28229a(eVar, format2));
            }
        }
        return a;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public int mo18197a(AbstractC3199f fVar, AbstractC3023d<C3027g> dVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        String str = format.f21952i;
        if (!C2897r.m28581i(str)) {
            return C2955n0.m28397a(0);
        }
        int i = C2885h0.f10477a >= 21 ? 32 : 0;
        boolean z = format.f21955l == null || C3027g.class.equals(format.f21942C) || (format.f21942C == null && AbstractC2962q.m28377a(dVar, format.f21955l));
        int i2 = 4;
        if (z && m28232a(format.f21965v, str) && fVar.mo27505a() != null) {
            return C2955n0.m28396a(4, 8, i);
        }
        if (("audio/raw".equals(str) && !this.f10801u0.mo18676a(format.f21965v, format.f21967x)) || !this.f10801u0.mo18676a(format.f21965v, 2)) {
            return C2955n0.m28397a(1);
        }
        List<C3198e> a = mo18196a(fVar, format, false);
        if (a.isEmpty()) {
            return C2955n0.m28397a(1);
        }
        if (!z) {
            return C2955n0.m28397a(2);
        }
        C3198e eVar = a.get(0);
        boolean b = eVar.m27514b(format);
        int i3 = 8;
        if (b) {
            i3 = 8;
            if (eVar.m27511c(format)) {
                i3 = 16;
            }
        }
        if (!b) {
            i2 = 3;
        }
        return C2955n0.m28396a(i2, i3, i);
    }

    /* renamed from: a */
    public MediaFormat m28226a(Format format, String str, int i, float f) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", format.f21965v);
        mediaFormat.setInteger("sample-rate", format.f21966w);
        C3201g.m27499a(mediaFormat, format.f21954k);
        C3201g.m27501a(mediaFormat, "max-input-size", i);
        if (C2885h0.f10477a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f && !m28225a0()) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (C2885h0.f10477a <= 28 && "audio/ac4".equals(format.f21952i)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        return mediaFormat;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public List<C3198e> mo18196a(AbstractC3199f fVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        C3198e a;
        String str = format.f21952i;
        if (str == null) {
            return Collections.emptyList();
        }
        if (m28232a(format.f21965v, str) && (a = fVar.mo27505a()) != null) {
            return Collections.singletonList(a);
        }
        List<C3198e> a2 = MediaCodecUtil.m18542a(fVar.mo27504a(str, z, false), format);
        List<C3198e> list = a2;
        if ("audio/eac3-joc".equals(str)) {
            list = new ArrayList<>(a2);
            list.addAll(fVar.mo27504a("audio/eac3", z, false));
        }
        return Collections.unmodifiableList(list);
    }

    /* renamed from: a */
    public void m28233a(int i, long j, long j2) {
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2962q, p131c.p161d.p170b.p188c.C2949l0.AbstractC2951b
    /* renamed from: a */
    public void mo18219a(int i, Object obj) throws ExoPlaybackException {
        if (i == 2) {
            this.f10801u0.setVolume(((Float) obj).floatValue());
        } else if (i == 3) {
            this.f10801u0.mo18666a((C2982i) obj);
        } else if (i != 5) {
            super.mo18219a(i, obj);
        } else {
            this.f10801u0.mo18665a((C2992n) obj);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: a */
    public void mo18215a(long j, boolean z) throws ExoPlaybackException {
        super.mo18215a(j, z);
        this.f10801u0.flush();
        this.f10794C0 = j;
        this.f10795D0 = true;
        this.f10796E0 = true;
        this.f10797F0 = -9223372036854775807L;
        this.f10798G0 = 0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo18210a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException {
        int i;
        int[] iArr;
        int i2;
        MediaFormat mediaFormat2 = this.f10792A0;
        if (mediaFormat2 != null) {
            i = m28224b(mediaFormat2.getInteger("channel-count"), mediaFormat2.getString("mime"));
            mediaFormat = mediaFormat2;
        } else {
            i = m28223b(this.f10793B0);
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (!this.f10805y0 || integer != 6 || (i2 = this.f10793B0.f21965v) >= 6) {
            iArr = null;
        } else {
            int[] iArr2 = new int[i2];
            int i3 = 0;
            while (true) {
                iArr = iArr2;
                if (i3 < this.f10793B0.f21965v) {
                    iArr2[i3] = i3;
                    i3++;
                }
            }
        }
        try {
            this.f10801u0.mo18675a(i, integer, integer2, 0, iArr, this.f10793B0.f21968y, this.f10793B0.f21969z);
        } catch (AudioSink.ConfigurationException e) {
            throw m28375a(e, this.f10793B0);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo18204a(C2692b0 b0Var) throws ExoPlaybackException {
        super.mo18204a(b0Var);
        Format format = b0Var.f9832c;
        this.f10793B0 = format;
        this.f10800t0.m28287a(format);
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2896q
    /* renamed from: a */
    public void mo28126a(C2910h0 h0Var) {
        this.f10801u0.mo18668a(h0Var);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo18201a(C3198e eVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) {
        this.f10803w0 = m28228a(eVar, format, m28359u());
        this.f10805y0 = m28221f(eVar.f11799a);
        this.f10806z0 = m28220g(eVar.f11799a);
        boolean z = eVar.f11805g;
        this.f10804x0 = z;
        MediaFormat a = m28226a(format, z ? "audio/raw" : eVar.f11801c, this.f10803w0, f);
        mediaCodec.configure(a, (Surface) null, mediaCrypto, 0);
        if (this.f10804x0) {
            this.f10792A0 = a;
            a.setString("mime", format.f21952i);
            return;
        }
        this.f10792A0 = null;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo18192a(String str, long j, long j2) {
        this.f10800t0.m28286a(str, j, j2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: a */
    public void mo18191a(boolean z) throws ExoPlaybackException {
        super.mo18191a(z);
        this.f10800t0.m28283b(this.f22105q0);
        int i = m28362r().f10658a;
        if (i != 0) {
            this.f10801u0.mo18677a(i);
        } else {
            this.f10801u0.mo18680V();
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: a */
    public void mo18190a(Format[] formatArr, long j) throws ExoPlaybackException {
        super.mo18190a(formatArr, j);
        if (this.f10797F0 != -9223372036854775807L) {
            int i = this.f10798G0;
            if (i == this.f10802v0.length) {
                C2894o.m28594d("MediaCodecAudioRenderer", "Too many stream changes, so dropping change at " + this.f10802v0[this.f10798G0 - 1]);
            } else {
                this.f10798G0 = i + 1;
            }
            this.f10802v0[this.f10798G0 - 1] = this.f10797F0;
        }
    }

    /* renamed from: a */
    public boolean m28232a(int i, String str) {
        return m28224b(i, str) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo18218a(long r6, long r8, android.media.MediaCodec r10, java.nio.ByteBuffer r11, int r12, int r13, long r14, boolean r16, boolean r17, com.google.android.exoplayer2.Format r18) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            r5 = this;
            r0 = r14
            r6 = r0
            r0 = r5
            boolean r0 = r0.f10806z0
            if (r0 == 0) goto L_0x0030
            r0 = r14
            r6 = r0
            r0 = r14
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0030
            r0 = r14
            r6 = r0
            r0 = r13
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0030
            r0 = r5
            long r0 = r0.f10797F0
            r8 = r0
            r0 = r14
            r6 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0030
            r0 = r8
            r6 = r0
        L_0x0030:
            r0 = r5
            boolean r0 = r0.f10804x0
            if (r0 == 0) goto L_0x0048
            r0 = r13
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0048
            r0 = r10
            r1 = r12
            r2 = 0
            r0.releaseOutputBuffer(r1, r2)
            r0 = 1
            return r0
        L_0x0048:
            r0 = r16
            if (r0 == 0) goto L_0x0072
            r0 = r10
            r1 = r12
            r2 = 0
            r0.releaseOutputBuffer(r1, r2)
            r0 = r5
            c.d.b.c.u0.c r0 = r0.f22105q0
            r10 = r0
            r0 = r10
            r1 = r10
            int r1 = r1.f10898f
            r2 = 1
            int r1 = r1 + r2
            r0.f10898f = r1
            r0 = r5
            com.google.android.exoplayer2.audio.AudioSink r0 = r0.f10801u0
            r0.mo18679W()
            r0 = 1
            return r0
        L_0x0072:
            r0 = r5
            com.google.android.exoplayer2.audio.AudioSink r0 = r0.f10801u0     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r1 = r11
            r2 = r6
            boolean r0 = r0.mo18662a(r1, r2)     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            if (r0 == 0) goto L_0x009d
            r0 = r10
            r1 = r12
            r2 = 0
            r0.releaseOutputBuffer(r1, r2)     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r0 = r5
            c.d.b.c.u0.c r0 = r0.f22105q0     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r10 = r0
            r0 = r10
            r1 = r10
            int r1 = r1.f10897e     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r2 = 1
            int r1 = r1 + r2
            r0.f10897e = r1     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r0 = 1
            return r0
        L_0x009d:
            r0 = 0
            return r0
        L_0x009f:
            r10 = move-exception
            goto L_0x00a6
        L_0x00a4:
            r10 = move-exception
        L_0x00a6:
            r0 = r5
            r1 = r10
            r2 = r5
            com.google.android.exoplayer2.Format r2 = r2.f10793B0
            com.google.android.exoplayer2.ExoPlaybackException r0 = r0.m28375a(r1, r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p206s0.C2997s.mo18218a(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean, boolean, com.google.android.exoplayer2.Format):boolean");
    }

    /* renamed from: a */
    public boolean m28227a(Format format, Format format2) {
        return C2885h0.m28669a((Object) format.f21952i, (Object) format2.f21952i) && format.f21965v == format2.f21965v && format.f21966w == format2.f21966w && format.f21967x == format2.f21967x && format.m18709a(format2) && !"audio/opus".equals(format.f21952i);
    }

    /* renamed from: b */
    public int m28224b(int i, String str) {
        String str2 = str;
        if ("audio/eac3-joc".equals(str)) {
            if (this.f10801u0.mo18676a(-1, 18)) {
                return C2897r.m28587c("audio/eac3-joc");
            }
            str2 = "audio/eac3";
        }
        int c = C2897r.m28587c(str2);
        if (this.f10801u0.mo18676a(i, c)) {
            return c;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: b */
    public void mo18185b(C3016d dVar) {
        if (this.f10795D0 && !dVar.m28145c()) {
            if (Math.abs(dVar.f10904d - this.f10794C0) > 500000) {
                this.f10794C0 = dVar.f10904d;
            }
            this.f10795D0 = false;
        }
        this.f10797F0 = Math.max(dVar.f10904d, this.f10797F0);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: b */
    public boolean mo18188b() {
        return this.f10801u0.mo18681U() || super.mo18188b();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: c */
    public boolean mo18567c() {
        return super.mo18567c() && this.f10801u0.mo18654c();
    }

    /* renamed from: d */
    public void m28222d(int i) {
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /* renamed from: d */
    public void mo18177d(long j) {
        while (this.f10798G0 != 0 && j >= this.f10802v0[0]) {
            this.f10801u0.mo18679W();
            int i = this.f10798G0 - 1;
            this.f10798G0 = i;
            long[] jArr = this.f10802v0;
            System.arraycopy(jArr, 1, jArr, 0, i);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2896q
    /* renamed from: g */
    public C2910h0 mo28119g() {
        return this.f10801u0.mo18643g();
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2896q
    /* renamed from: l */
    public long mo28118l() {
        if (mo28372d() == 2) {
            m28234Z();
        }
        return this.f10794C0;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2962q, p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: q */
    public AbstractC2896q mo28219q() {
        return this;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: w */
    public void mo18167w() {
        try {
            this.f10797F0 = -9223372036854775807L;
            this.f10798G0 = 0;
            this.f10801u0.flush();
            try {
                super.mo18167w();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo18167w();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: x */
    public void mo18166x() {
        try {
            super.mo18166x();
        } finally {
            this.f10801u0.mo18678a();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: y */
    public void mo18165y() {
        super.mo18165y();
        this.f10801u0.mo18683S();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: z */
    public void mo18164z() {
        m28234Z();
        this.f10801u0.pause();
        super.mo18164z();
    }
}
