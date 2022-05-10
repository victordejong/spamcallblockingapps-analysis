package p012b.p076s.p078b.p079a.p083p0;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.AudioSink;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.AbstractC1197b;
import p012b.p076s.p078b.p079a.C1221c0;
import p012b.p076s.p078b.p079a.C1531w;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1177l;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p083p0.AbstractC1286m;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1327k;
import p012b.p076s.p078b.p079a.p085r0.C1333o;
import p012b.p076s.p078b.p079a.p095t0.AbstractC1502b;
import p012b.p076s.p078b.p079a.p095t0.C1501a;
import p012b.p076s.p078b.p079a.p095t0.C1508g;
/* renamed from: b.s.b.a.p0.u */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/u.class */
public class C1297u extends MediaCodecRenderer implements AbstractC1177l {

    /* renamed from: A0 */
    public int f5153A0;

    /* renamed from: B0 */
    public long f5154B0;

    /* renamed from: C0 */
    public boolean f5155C0;

    /* renamed from: D0 */
    public boolean f5156D0;

    /* renamed from: F0 */
    public int f5158F0;

    /* renamed from: o0 */
    public final Context f5159o0;

    /* renamed from: p0 */
    public final AbstractC1286m.C1287a f5160p0;

    /* renamed from: q0 */
    public final AudioSink f5161q0;

    /* renamed from: s0 */
    public int f5163s0;

    /* renamed from: t0 */
    public boolean f5164t0;

    /* renamed from: u0 */
    public boolean f5165u0;

    /* renamed from: v0 */
    public boolean f5166v0;

    /* renamed from: w0 */
    public MediaFormat f5167w0;

    /* renamed from: x0 */
    public int f5168x0;

    /* renamed from: y0 */
    public int f5169y0;

    /* renamed from: z0 */
    public int f5170z0;

    /* renamed from: E0 */
    public long f5157E0 = -9223372036854775807L;

    /* renamed from: r0 */
    public final long[] f5162r0 = new long[10];

    /* renamed from: b.s.b.a.p0.u$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/p0/u$b.class */
    public final class C1299b implements AudioSink.AbstractC0281a {
        public C1299b() {
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.AbstractC0281a
        /* renamed from: a */
        public void mo33800a() {
            C1297u.this.m33834X();
            C1297u.this.f5156D0 = true;
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.AbstractC0281a
        /* renamed from: a */
        public void mo33799a(int i) {
            C1297u.this.f5160p0.m33895a(i);
            C1297u.this.m33809d(i);
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.AbstractC0281a
        /* renamed from: a */
        public void mo33798a(int i, long j, long j2) {
            C1297u.this.f5160p0.m33894a(i, j, j2);
            C1297u.this.m33830a(i, j, j2);
        }
    }

    public C1297u(Context context, AbstractC1502b bVar, AbstractC1327k<C1333o> kVar, boolean z, Handler handler, AbstractC1286m mVar, AudioSink audioSink) {
        super(1, bVar, kVar, z, false, 44100.0f);
        this.f5159o0 = context.getApplicationContext();
        this.f5161q0 = audioSink;
        this.f5160p0 = new AbstractC1286m.C1287a(handler, mVar);
        audioSink.mo38152a(new C1299b());
    }

    /* renamed from: Z */
    public static boolean m33832Z() {
        return C1167d0.f4688a == 23 && ("ZTE B2017G".equals(C1167d0.f4691d) || "AXON 7 mini".equals(C1167d0.f4691d));
    }

    /* renamed from: f */
    public static boolean m33808f(String str) {
        return C1167d0.f4688a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(C1167d0.f4690c) && (C1167d0.f4689b.startsWith("zeroflte") || C1167d0.f4689b.startsWith("herolte") || C1167d0.f4689b.startsWith("heroqlte"));
    }

    /* renamed from: g */
    public static boolean m33806g(String str) {
        return C1167d0.f4688a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(C1167d0.f4690c) && (C1167d0.f4689b.startsWith("baffin") || C1167d0.f4689b.startsWith("grand") || C1167d0.f4689b.startsWith("fortuna") || C1167d0.f4689b.startsWith("gprimelte") || C1167d0.f4689b.startsWith("j2y18lte") || C1167d0.f4689b.startsWith("ms01"));
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: R */
    public void mo33835R() throws ExoPlaybackException {
        try {
            this.f5161q0.mo38166T();
        } catch (AudioSink.WriteException e) {
            throw ExoPlaybackException.createForRenderer(e, m34281s());
        }
    }

    /* renamed from: X */
    public void m33834X() {
    }

    /* renamed from: Y */
    public final void m33833Y() {
        long a = this.f5161q0.mo38146a(mo32123c());
        if (a != Long.MIN_VALUE) {
            if (!this.f5156D0) {
                a = Math.max(this.f5154B0, a);
            }
            this.f5154B0 = a;
            this.f5156D0 = false;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public float mo33831a(float f, Format format, Format[] formatArr) {
        int i = -1;
        for (Format format2 : formatArr) {
            int i2 = format2.f1576w;
            i = i;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        return i == -1 ? -1.0f : f * i;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public int mo33825a(MediaCodec mediaCodec, C1501a aVar, Format format, Format format2) {
        if (m33817a(aVar, format2) > this.f5163s0 || format.f1578y != 0 || format.f1579z != 0 || format2.f1578y != 0 || format2.f1579z != 0) {
            return 0;
        }
        if (aVar.m33100a(format, format2, true)) {
            return 3;
        }
        return m33824a(format, format2) ? 1 : 0;
    }

    /* renamed from: a */
    public final int m33817a(C1501a aVar, Format format) {
        int i;
        if (!"OMX.google.raw.decoder".equals(aVar.f6160a) || (i = C1167d0.f4688a) >= 24 || (i == 23 && C1167d0.m34454b(this.f5159o0))) {
            return format.f1563j;
        }
        return -1;
    }

    /* renamed from: a */
    public int m33816a(C1501a aVar, Format format, Format[] formatArr) {
        int a = m33817a(aVar, format);
        if (formatArr.length == 1) {
            return a;
        }
        for (Format format2 : formatArr) {
            a = a;
            if (aVar.m33100a(format, format2, false)) {
                a = Math.max(a, m33817a(aVar, format2));
            }
        }
        return a;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public int mo33814a(AbstractC1502b bVar, AbstractC1327k<C1333o> kVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        String str = format.f1562i;
        if (!C1178m.m34400j(str)) {
            return 0;
        }
        int i = C1167d0.f4688a >= 21 ? 32 : 0;
        boolean a = AbstractC1197b.m34285a(kVar, format.f1565l);
        int i2 = 4;
        if (a && m33828a(format.f1575v, str) && bVar.mo33085a() != null) {
            return i | 8 | 4;
        }
        if (("audio/raw".equals(str) && !this.f5161q0.mo38160a(format.f1575v, format.f1577x)) || !this.f5161q0.mo38160a(format.f1575v, 2)) {
            return 1;
        }
        List<C1501a> a2 = mo33815a(bVar, format, false);
        if (a2.isEmpty()) {
            return 1;
        }
        if (!a) {
            return 2;
        }
        C1501a aVar = a2.get(0);
        boolean a3 = aVar.m33101a(format);
        int i3 = 8;
        if (a3) {
            i3 = 8;
            if (aVar.m33093b(format)) {
                i3 = 16;
            }
        }
        if (!a3) {
            i2 = 3;
        }
        return i3 | i | i2;
    }

    /* renamed from: a */
    public MediaFormat m33823a(Format format, String str, int i, float f) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", format.f1575v);
        mediaFormat.setInteger("sample-rate", format.f1576w);
        C1508g.m33078a(mediaFormat, format.f1564k);
        C1508g.m33080a(mediaFormat, "max-input-size", i);
        if (C1167d0.f4688a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f && !m33832Z()) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (C1167d0.f4688a <= 28 && "audio/ac4".equals(format.f1562i)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        return mediaFormat;
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1177l
    /* renamed from: a */
    public C1221c0 mo33822a(C1221c0 c0Var) {
        return this.f5161q0.mo38150a(c0Var);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public List<C1501a> mo33815a(AbstractC1502b bVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        C1501a a;
        if (m33828a(format.f1575v, format.f1562i) && (a = bVar.mo33085a()) != null) {
            return Collections.singletonList(a);
        }
        List<C1501a> a2 = MediaCodecUtil.m38035a(bVar.mo33084a(format.f1562i, z, false), format);
        if ("audio/eac3-joc".equals(format.f1562i)) {
            a2.addAll(bVar.mo33084a("audio/eac3", z, false));
        }
        return Collections.unmodifiableList(a2);
    }

    /* renamed from: a */
    public void m33830a(int i, long j, long j2) {
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b, p012b.p076s.p078b.p079a.C1230f0.AbstractC1232b
    /* renamed from: a */
    public void mo33829a(int i, Object obj) throws ExoPlaybackException {
        if (i == 2) {
            this.f5161q0.setVolume(((Float) obj).floatValue());
        } else if (i == 3) {
            this.f5161q0.mo38149a((C1271c) obj);
        } else if (i != 5) {
            super.mo33829a(i, obj);
        } else {
            this.f5161q0.mo38148a((C1292p) obj);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo32130a(long j, boolean z) throws ExoPlaybackException {
        super.mo32130a(j, z);
        this.f5161q0.flush();
        this.f5154B0 = j;
        this.f5155C0 = true;
        this.f5156D0 = true;
        this.f5157E0 = -9223372036854775807L;
        this.f5158F0 = 0;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo33826a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException {
        int i;
        int[] iArr;
        int i2;
        MediaFormat mediaFormat2 = this.f5167w0;
        if (mediaFormat2 != null) {
            i = C1178m.m34407c(mediaFormat2.getString("mime"));
            mediaFormat = this.f5167w0;
        } else {
            i = this.f5168x0;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (!this.f5165u0 || integer != 6 || (i2 = this.f5169y0) >= 6) {
            iArr = null;
        } else {
            int[] iArr2 = new int[i2];
            int i3 = 0;
            while (true) {
                iArr = iArr2;
                if (i3 < this.f5169y0) {
                    iArr2[i3] = i3;
                    i3++;
                }
            }
        }
        try {
            this.f5161q0.mo38159a(i, integer, integer2, 0, iArr, this.f5170z0, this.f5153A0);
        } catch (AudioSink.ConfigurationException e) {
            throw ExoPlaybackException.createForRenderer(e, m34281s());
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo33819a(C1311d dVar) {
        if (this.f5155C0 && !dVar.m33744b()) {
            if (Math.abs(dVar.f5246d - this.f5154B0) > 500000) {
                this.f5154B0 = dVar.f5246d;
            }
            this.f5155C0 = false;
        }
        this.f5157E0 = Math.max(dVar.f5246d, this.f5157E0);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo33818a(C1501a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) {
        this.f5163s0 = m33816a(aVar, format, m34280t());
        this.f5165u0 = m33808f(aVar.f6160a);
        this.f5166v0 = m33806g(aVar.f6160a);
        boolean z = aVar.f6165f;
        this.f5164t0 = z;
        MediaFormat a = m33823a(format, z ? "audio/raw" : aVar.f6161b, this.f5163s0, f);
        mediaCodec.configure(a, (Surface) null, mediaCrypto, 0);
        if (this.f5164t0) {
            this.f5167w0 = a;
            a.setString("mime", format.f1562i);
            return;
        }
        this.f5167w0 = null;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo33813a(C1531w wVar) throws ExoPlaybackException {
        super.mo33813a(wVar);
        Format format = wVar.f6243a;
        this.f5160p0.m33893a(format);
        this.f5168x0 = "audio/raw".equals(format.f1562i) ? format.f1577x : 2;
        this.f5169y0 = format.f1575v;
        this.f5170z0 = format.f1578y;
        this.f5153A0 = format.f1579z;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public void mo33812a(String str, long j, long j2) {
        this.f5160p0.m33891a(str, j, j2);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo33811a(boolean z) throws ExoPlaybackException {
        super.mo33811a(z);
        this.f5160p0.m33887b(this.f1717m0);
        int i = m34282r().f4935a;
        if (i != 0) {
            this.f5161q0.mo38161a(i);
        } else {
            this.f5161q0.mo38164V();
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo32127a(Format[] formatArr, long j) throws ExoPlaybackException {
        super.mo32127a(formatArr, j);
        if (this.f5157E0 != -9223372036854775807L) {
            int i = this.f5158F0;
            long[] jArr = this.f5162r0;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(67);
                sb.append("Too many stream changes, so dropping change at ");
                sb.append(j2);
                C1175j.m34414d("MediaCodecAudioRenderer", sb.toString());
            } else {
                this.f5158F0 = i + 1;
            }
            this.f5162r0[this.f5158F0 - 1] = this.f5157E0;
        }
    }

    /* renamed from: a */
    public boolean m33828a(int i, String str) {
        return this.f5161q0.mo38160a(i, C1178m.m34407c(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo33827a(long r6, long r8, android.media.MediaCodec r10, java.nio.ByteBuffer r11, int r12, int r13, long r14, boolean r16, androidx.media2.exoplayer.external.Format r17) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            r5 = this;
            r0 = r14
            r6 = r0
            r0 = r5
            boolean r0 = r0.f5166v0
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
            long r0 = r0.f5157E0
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
            boolean r0 = r0.f5164t0
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
            b.s.b.a.q0.c r0 = r0.f1717m0
            r10 = r0
            r0 = r10
            r1 = r10
            int r1 = r1.f5240f
            r2 = 1
            int r1 = r1 + r2
            r0.f5240f = r1
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioSink r0 = r0.f5161q0
            r0.mo38163W()
            r0 = 1
            return r0
        L_0x0072:
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioSink r0 = r0.f5161q0     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r1 = r11
            r2 = r6
            boolean r0 = r0.mo38147a(r1, r2)     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            if (r0 == 0) goto L_0x009d
            r0 = r10
            r1 = r12
            r2 = 0
            r0.releaseOutputBuffer(r1, r2)     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r0 = r5
            b.s.b.a.q0.c r0 = r0.f1717m0     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r10 = r0
            r0 = r10
            r1 = r10
            int r1 = r1.f5239e     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
            r2 = 1
            int r1 = r1 + r2
            r0.f5239e = r1     // Catch: WriteException -> 0x009f, InitializationException -> 0x00a4
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
            r0 = r10
            r1 = r5
            int r1 = r1.m34281s()
            androidx.media2.exoplayer.external.ExoPlaybackException r0 = androidx.media2.exoplayer.external.ExoPlaybackException.createForRenderer(r0, r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p083p0.C1297u.mo33827a(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean, androidx.media2.exoplayer.external.Format):boolean");
    }

    /* renamed from: a */
    public boolean m33824a(Format format, Format format2) {
        return C1167d0.m34478a((Object) format.f1562i, (Object) format2.f1562i) && format.f1575v == format2.f1575v && format.f1576w == format2.f1576w && format.m38169b(format2);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: b */
    public boolean mo32126b() {
        return this.f5161q0.mo38165U() || super.mo32126b();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: c */
    public void mo33810c(long j) {
        while (this.f5158F0 != 0 && j >= this.f5162r0[0]) {
            this.f5161q0.mo38163W();
            int i = this.f5158F0 - 1;
            this.f5158F0 = i;
            long[] jArr = this.f5162r0;
            System.arraycopy(jArr, 1, jArr, 0, i);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: c */
    public boolean mo32123c() {
        return super.mo32123c() && this.f5161q0.mo38139c();
    }

    /* renamed from: d */
    public void m33809d(int i) {
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1177l
    /* renamed from: g */
    public C1221c0 mo33807g() {
        return this.f5161q0.mo38128g();
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1177l
    /* renamed from: l */
    public long mo33805l() {
        if (mo34150d() == 2) {
            m33833Y();
        }
        return this.f5154B0;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b, p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: q */
    public AbstractC1177l mo33804q() {
        return this;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: v */
    public void mo32995v() {
        try {
            this.f5157E0 = -9223372036854775807L;
            this.f5158F0 = 0;
            this.f5161q0.flush();
            try {
                super.mo32995v();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo32995v();
                throw th;
            } finally {
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: w */
    public void mo33803w() {
        try {
            super.mo33803w();
        } finally {
            this.f5161q0.mo38162a();
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: x */
    public void mo33802x() {
        super.mo33802x();
        this.f5161q0.mo38167S();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: y */
    public void mo33801y() {
        m33833Y();
        this.f5161q0.pause();
        super.mo33801y();
    }
}
