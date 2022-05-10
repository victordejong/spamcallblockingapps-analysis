package androidx.media2.exoplayer.external.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import p012b.p076s.p078b.p079a.AbstractC1197b;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.C1531w;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1161a0;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1180n;
import p012b.p076s.p078b.p079a.p080a1.C1195y;
import p012b.p076s.p078b.p079a.p084q0.C1310c;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1327k;
import p012b.p076s.p078b.p079a.p085r0.C1333o;
import p012b.p076s.p078b.p079a.p095t0.AbstractC1502b;
import p012b.p076s.p078b.p079a.p095t0.C1501a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer.class */
public abstract class MediaCodecRenderer extends AbstractC1197b {

    /* renamed from: n0 */
    public static final byte[] f1676n0 = C1167d0.m34477a("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");

    /* renamed from: C */
    public MediaCodec f1679C;

    /* renamed from: D */
    public Format f1680D;

    /* renamed from: F */
    public ArrayDeque<C1501a> f1682F;

    /* renamed from: G */
    public DecoderInitializationException f1683G;

    /* renamed from: H */
    public C1501a f1684H;

    /* renamed from: I */
    public int f1685I;

    /* renamed from: J */
    public boolean f1686J;

    /* renamed from: K */
    public boolean f1687K;

    /* renamed from: L */
    public boolean f1688L;

    /* renamed from: M */
    public boolean f1689M;

    /* renamed from: N */
    public boolean f1690N;

    /* renamed from: O */
    public boolean f1691O;

    /* renamed from: P */
    public boolean f1692P;

    /* renamed from: Q */
    public boolean f1693Q;

    /* renamed from: R */
    public boolean f1694R;

    /* renamed from: S */
    public ByteBuffer[] f1695S;

    /* renamed from: T */
    public ByteBuffer[] f1696T;

    /* renamed from: U */
    public long f1697U;

    /* renamed from: V */
    public int f1698V;

    /* renamed from: W */
    public int f1699W;

    /* renamed from: Z */
    public ByteBuffer f1700Z;

    /* renamed from: a0 */
    public boolean f1701a0;

    /* renamed from: b0 */
    public boolean f1702b0;

    /* renamed from: f0 */
    public boolean f1706f0;

    /* renamed from: g0 */
    public boolean f1707g0;

    /* renamed from: h0 */
    public boolean f1708h0;

    /* renamed from: i0 */
    public boolean f1709i0;

    /* renamed from: j */
    public final AbstractC1502b f1710j;

    /* renamed from: j0 */
    public boolean f1711j0;

    /* renamed from: k */
    public final AbstractC1327k<C1333o> f1712k;

    /* renamed from: k0 */
    public boolean f1713k0;

    /* renamed from: l */
    public final boolean f1714l;

    /* renamed from: l0 */
    public boolean f1715l0;

    /* renamed from: m */
    public final boolean f1716m;

    /* renamed from: m0 */
    public C1310c f1717m0;

    /* renamed from: n */
    public final float f1718n;

    /* renamed from: u */
    public Format f1725u;

    /* renamed from: v */
    public Format f1726v;

    /* renamed from: w */
    public DrmSession<C1333o> f1727w;

    /* renamed from: x */
    public DrmSession<C1333o> f1728x;

    /* renamed from: y */
    public MediaCrypto f1729y;

    /* renamed from: z */
    public boolean f1730z;

    /* renamed from: o */
    public final C1311d f1719o = new C1311d(0);

    /* renamed from: p */
    public final C1311d f1720p = C1311d.m33728h();

    /* renamed from: q */
    public final C1531w f1721q = new C1531w();

    /* renamed from: r */
    public final C1195y<Format> f1722r = new C1195y<>();

    /* renamed from: s */
    public final ArrayList<Long> f1723s = new ArrayList<>();

    /* renamed from: t */
    public final MediaCodec.BufferInfo f1724t = new MediaCodec.BufferInfo();

    /* renamed from: c0 */
    public int f1703c0 = 0;

    /* renamed from: d0 */
    public int f1704d0 = 0;

    /* renamed from: e0 */
    public int f1705e0 = 0;

    /* renamed from: E */
    public float f1681E = -1.0f;

    /* renamed from: B */
    public float f1678B = 1.0f;

    /* renamed from: A */
    public long f1677A = -9223372036854775807L;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException.class */
    public static class DecoderInitializationException extends Exception {
        public static final int CUSTOM_ERROR_CODE_BASE = -50000;
        public static final int DECODER_QUERY_ERROR = -49998;
        public static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final String decoderName;
        public final String diagnosticInfo;
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderInitializationException(androidx.media2.exoplayer.external.Format r10, java.lang.Throwable r11, boolean r12, int r13) {
            /*
                r9 = this;
                r0 = r10
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r14 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r14
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 36
                int r2 = r2 + r3
                r1.<init>(r2)
                r15 = r0
                r0 = r15
                java.lang.String r1 = "Decoder init failed: ["
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                r1 = r13
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                java.lang.String r1 = "], "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                r1 = r14
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r15
                java.lang.String r1 = r1.toString()
                r2 = r11
                r3 = r10
                java.lang.String r3 = r3.f1562i
                r4 = r12
                r5 = 0
                r6 = r13
                java.lang.String r6 = buildCustomDiagnosticInfo(r6)
                r7 = 0
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.DecoderInitializationException.<init>(androidx.media2.exoplayer.external.Format, java.lang.Throwable, boolean, int):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderInitializationException(androidx.media2.exoplayer.external.Format r10, java.lang.Throwable r11, boolean r12, java.lang.String r13) {
            /*
                r9 = this;
                r0 = r10
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r14 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r13
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 23
                int r2 = r2 + r3
                r3 = r14
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                int r2 = r2 + r3
                r1.<init>(r2)
                r15 = r0
                r0 = r15
                java.lang.String r1 = "Decoder init failed: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                r1 = r13
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                java.lang.String r1 = ", "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                r1 = r14
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                java.lang.String r0 = r0.toString()
                r15 = r0
                r0 = r10
                java.lang.String r0 = r0.f1562i
                r14 = r0
                int r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.f4688a
                r1 = 21
                if (r0 < r1) goto L_0x0060
                r0 = r11
                java.lang.String r0 = getDiagnosticInfoV21(r0)
                r10 = r0
                goto L_0x0062
            L_0x0060:
                r0 = 0
                r10 = r0
            L_0x0062:
                r0 = r9
                r1 = r15
                r2 = r11
                r3 = r14
                r4 = r12
                r5 = r13
                r6 = r10
                r7 = 0
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.DecoderInitializationException.<init>(androidx.media2.exoplayer.external.Format, java.lang.Throwable, boolean, java.lang.String):void");
        }

        public DecoderInitializationException(String str, Throwable th, String str2, boolean z, String str3, String str4, DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z;
            this.decoderName = str3;
            this.diagnosticInfo = str4;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }

        public static String buildCustomDiagnosticInfo(int i) {
            String str = i < 0 ? "neg_" : "";
            int abs = Math.abs(i);
            StringBuilder sb = new StringBuilder(str.length() + 64);
            sb.append("com.google.android.exoplayer.MediaCodecTrackRenderer_");
            sb.append(str);
            sb.append(abs);
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.decoderName, this.diagnosticInfo, decoderInitializationException);
        }

        public static String getDiagnosticInfoV21(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }
    }

    public MediaCodecRenderer(int i, AbstractC1502b bVar, AbstractC1327k<C1333o> kVar, boolean z, boolean z2, float f) {
        super(i);
        C1160a.m34522a(bVar);
        this.f1710j = bVar;
        this.f1712k = kVar;
        this.f1714l = z;
        this.f1716m = z2;
        this.f1718n = f;
    }

    /* renamed from: a */
    public static MediaCodec.CryptoInfo m38068a(C1311d dVar, int i) {
        MediaCodec.CryptoInfo a = dVar.f5244b.m33739a();
        if (i == 0) {
            return a;
        }
        if (a.numBytesOfClearData == null) {
            a.numBytesOfClearData = new int[1];
        }
        int[] iArr = a.numBytesOfClearData;
        iArr[0] = iArr[0] + i;
        return a;
    }

    /* renamed from: a */
    public static boolean m38065a(String str, Format format) {
        return C1167d0.f4688a < 21 && format.f1564k.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    /* renamed from: b */
    public static boolean m38061b(C1501a aVar) {
        String str = aVar.f6160a;
        return (C1167d0.f4688a <= 17 && ("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str))) || ("Amazon".equals(C1167d0.f4690c) && "AFTS".equals(C1167d0.f4691d) && aVar.f6164e);
    }

    /* renamed from: b */
    public static boolean m38060b(String str) {
        return (C1167d0.f4688a <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (C1167d0.f4688a <= 19 && (("hb2000".equals(C1167d0.f4689b) || "stvm8".equals(C1167d0.f4689b)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))));
    }

    /* renamed from: b */
    public static boolean m38059b(String str, Format format) {
        boolean z = true;
        if (C1167d0.f4688a > 18 || format.f1575v != 1 || !"OMX.MTK.AUDIO.DECODER.MP3".equals(str)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public static boolean m38055c(String str) {
        return C1167d0.f4688a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    /* renamed from: d */
    public static boolean m38052d(String str) {
        int i = C1167d0.f4688a;
        return i < 18 || (i == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (C1167d0.f4688a == 19 && C1167d0.f4691d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    /* renamed from: e */
    public static boolean m38049e(String str) {
        return C1167d0.f4691d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    /* renamed from: A */
    public final void m38090A() {
        if (this.f1706f0) {
            this.f1704d0 = 1;
            this.f1705e0 = 1;
        }
    }

    /* renamed from: B */
    public final void m38089B() throws ExoPlaybackException {
        if (this.f1706f0) {
            this.f1704d0 = 1;
            this.f1705e0 = 3;
            return;
        }
        m38077P();
    }

    /* renamed from: C */
    public final void m38088C() throws ExoPlaybackException {
        if (C1167d0.f4688a < 23) {
            m38089B();
        } else if (this.f1706f0) {
            this.f1704d0 = 1;
            this.f1705e0 = 2;
        } else {
            m38072W();
        }
    }

    /* renamed from: D */
    public final boolean m38087D() throws ExoPlaybackException {
        int i;
        int i2;
        MediaCodec mediaCodec = this.f1679C;
        if (mediaCodec == null || this.f1704d0 == 2 || this.f1708h0) {
            return false;
        }
        if (this.f1698V < 0) {
            int dequeueInputBuffer = mediaCodec.dequeueInputBuffer(0L);
            this.f1698V = dequeueInputBuffer;
            if (dequeueInputBuffer < 0) {
                return false;
            }
            this.f1719o.f5245c = m38064b(dequeueInputBuffer);
            this.f1719o.mo33734a();
        }
        if (this.f1704d0 == 1) {
            if (!this.f1694R) {
                this.f1707g0 = true;
                this.f1679C.queueInputBuffer(this.f1698V, 0, 0, 0L, 4);
                m38075T();
            }
            this.f1704d0 = 2;
            return false;
        } else if (this.f1692P) {
            this.f1692P = false;
            this.f1719o.f5245c.put(f1676n0);
            this.f1679C.queueInputBuffer(this.f1698V, 0, f1676n0.length, 0L, 0);
            m38075T();
            this.f1706f0 = true;
            return true;
        } else {
            if (this.f1711j0) {
                i2 = -4;
                i = 0;
            } else {
                if (this.f1703c0 == 1) {
                    for (int i3 = 0; i3 < this.f1680D.f1564k.size(); i3++) {
                        this.f1719o.f5245c.put(this.f1680D.f1564k.get(i3));
                    }
                    this.f1703c0 = 2;
                }
                i = this.f1719o.f5245c.position();
                i2 = m34284a(this.f1721q, this.f1719o, false);
            }
            if (i2 == -3) {
                return false;
            }
            if (i2 == -5) {
                if (this.f1703c0 == 2) {
                    this.f1719o.mo33734a();
                    this.f1703c0 = 1;
                }
                mo33813a(this.f1721q);
                return true;
            } else if (this.f1719o.m33742c()) {
                if (this.f1703c0 == 2) {
                    this.f1719o.mo33734a();
                    this.f1703c0 = 1;
                }
                this.f1708h0 = true;
                if (!this.f1706f0) {
                    m38080M();
                    return false;
                }
                try {
                    if (this.f1694R) {
                        return false;
                    }
                    this.f1707g0 = true;
                    this.f1679C.queueInputBuffer(this.f1698V, 0, 0, 0L, 4);
                    m38075T();
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw ExoPlaybackException.createForRenderer(e, m34281s());
                }
            } else if (!this.f1713k0 || this.f1719o.m33740d()) {
                this.f1713k0 = false;
                boolean f = this.f1719o.m33730f();
                boolean d = m38051d(f);
                this.f1711j0 = d;
                if (d) {
                    return false;
                }
                if (this.f1687K && !f) {
                    C1180n.m34395a(this.f1719o.f5245c);
                    if (this.f1719o.f5245c.position() == 0) {
                        return true;
                    }
                    this.f1687K = false;
                }
                try {
                    long j = this.f1719o.f5246d;
                    if (this.f1719o.m33744b()) {
                        this.f1723s.add(Long.valueOf(j));
                    }
                    if (this.f1715l0) {
                        this.f1722r.m34300a(j, (long) this.f1725u);
                        this.f1715l0 = false;
                    }
                    this.f1719o.m33732e();
                    mo33819a(this.f1719o);
                    if (f) {
                        this.f1679C.queueSecureInputBuffer(this.f1698V, 0, m38068a(this.f1719o, i), j, 0);
                    } else {
                        this.f1679C.queueInputBuffer(this.f1698V, 0, this.f1719o.f5245c.limit(), j, 0);
                    }
                    m38075T();
                    this.f1706f0 = true;
                    this.f1703c0 = 0;
                    this.f1717m0.f5237c++;
                    return true;
                } catch (MediaCodec.CryptoException e2) {
                    throw ExoPlaybackException.createForRenderer(e2, m34281s());
                }
            } else {
                this.f1719o.mo33734a();
                if (this.f1703c0 != 2) {
                    return true;
                }
                this.f1703c0 = 1;
                return true;
            }
        }
    }

    /* renamed from: E */
    public final boolean m38086E() throws ExoPlaybackException {
        boolean F = mo34266F();
        if (F) {
            m38081L();
        }
        return F;
    }

    /* renamed from: F */
    public boolean mo34266F() {
        if (this.f1679C == null) {
            return false;
        }
        if (this.f1705e0 == 3 || this.f1688L || (this.f1689M && this.f1707g0)) {
            mo34264Q();
            return true;
        }
        this.f1679C.flush();
        m38075T();
        m38074U();
        this.f1697U = -9223372036854775807L;
        this.f1707g0 = false;
        this.f1706f0 = false;
        this.f1713k0 = true;
        this.f1692P = false;
        this.f1693Q = false;
        this.f1701a0 = false;
        this.f1711j0 = false;
        this.f1723s.clear();
        this.f1704d0 = 0;
        this.f1705e0 = 0;
        this.f1703c0 = this.f1702b0 ? 1 : 0;
        return false;
    }

    /* renamed from: G */
    public final MediaCodec m38085G() {
        return this.f1679C;
    }

    /* renamed from: H */
    public final C1501a m38084H() {
        return this.f1684H;
    }

    /* renamed from: I */
    public boolean mo34265I() {
        return false;
    }

    /* renamed from: J */
    public long m38083J() {
        return 0L;
    }

    /* renamed from: K */
    public final boolean m38082K() {
        return this.f1699W >= 0;
    }

    /* renamed from: L */
    public final void m38081L() throws ExoPlaybackException {
        if (this.f1679C == null && this.f1725u != null) {
            m38062b(this.f1728x);
            String str = this.f1725u.f1562i;
            DrmSession<C1333o> drmSession = this.f1727w;
            if (drmSession != null) {
                if (this.f1729y == null) {
                    C1333o c = drmSession.mo33690c();
                    if (c != null) {
                        try {
                            MediaCrypto mediaCrypto = new MediaCrypto(c.f5281a, c.f5282b);
                            this.f1729y = mediaCrypto;
                            this.f1730z = !c.f5283c && mediaCrypto.requiresSecureDecoderComponent(str);
                        } catch (MediaCryptoException e) {
                            throw ExoPlaybackException.createForRenderer(e, m34281s());
                        }
                    } else if (this.f1727w.mo33688e() == null) {
                        return;
                    }
                }
                if (m38047z()) {
                    int d = this.f1727w.mo33689d();
                    if (d == 1) {
                        throw ExoPlaybackException.createForRenderer(this.f1727w.mo33688e(), m34281s());
                    } else if (d != 4) {
                        return;
                    }
                }
            }
            try {
                m38070a(this.f1729y, this.f1730z);
            } catch (DecoderInitializationException e2) {
                throw ExoPlaybackException.createForRenderer(e2, m34281s());
            }
        }
    }

    /* renamed from: M */
    public final void m38080M() throws ExoPlaybackException {
        int i = this.f1705e0;
        if (i == 1) {
            m38086E();
        } else if (i == 2) {
            m38072W();
        } else if (i != 3) {
            this.f1709i0 = true;
            mo33835R();
        } else {
            m38077P();
        }
    }

    /* renamed from: N */
    public final void m38079N() {
        if (C1167d0.f4688a < 21) {
            this.f1696T = this.f1679C.getOutputBuffers();
        }
    }

    /* renamed from: O */
    public final void m38078O() throws ExoPlaybackException {
        MediaFormat outputFormat = this.f1679C.getOutputFormat();
        if (this.f1685I != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.f1693Q = true;
            return;
        }
        if (this.f1691O) {
            outputFormat.setInteger("channel-count", 1);
        }
        mo33826a(this.f1679C, outputFormat);
    }

    /* renamed from: P */
    public final void m38077P() throws ExoPlaybackException {
        mo34264Q();
        m38081L();
    }

    /* renamed from: Q */
    public void mo34264Q() {
        this.f1682F = null;
        this.f1684H = null;
        this.f1680D = null;
        m38075T();
        m38074U();
        m38076S();
        this.f1711j0 = false;
        this.f1697U = -9223372036854775807L;
        this.f1723s.clear();
        try {
            if (this.f1679C != null) {
                this.f1717m0.f5236b++;
                this.f1679C.stop();
                this.f1679C.release();
            }
            this.f1679C = null;
            try {
                if (this.f1729y != null) {
                    this.f1729y.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.f1679C = null;
            try {
                if (this.f1729y != null) {
                    this.f1729y.release();
                }
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: R */
    public void mo33835R() throws ExoPlaybackException {
    }

    /* renamed from: S */
    public final void m38076S() {
        if (C1167d0.f4688a < 21) {
            this.f1695S = null;
            this.f1696T = null;
        }
    }

    /* renamed from: T */
    public final void m38075T() {
        this.f1698V = -1;
        this.f1719o.f5245c = null;
    }

    /* renamed from: U */
    public final void m38074U() {
        this.f1699W = -1;
        this.f1700Z = null;
    }

    /* renamed from: V */
    public final void m38073V() throws ExoPlaybackException {
        if (C1167d0.f4688a >= 23) {
            float a = mo33831a(this.f1678B, this.f1680D, m34280t());
            float f = this.f1681E;
            if (f != a) {
                if (a == -1.0f) {
                    m38089B();
                } else if (f != -1.0f || a > this.f1718n) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", a);
                    this.f1679C.setParameters(bundle);
                    this.f1681E = a;
                }
            }
        }
    }

    /* renamed from: W */
    public final void m38072W() throws ExoPlaybackException {
        C1333o c = this.f1728x.mo33690c();
        if (c == null) {
            m38077P();
        } else if (C1220c.f4894e.equals(c.f5281a)) {
            m38077P();
        } else if (!m38086E()) {
            try {
                this.f1729y.setMediaDrmSession(c.f5282b);
                m38062b(this.f1728x);
                this.f1704d0 = 0;
                this.f1705e0 = 0;
            } catch (MediaCryptoException e) {
                throw ExoPlaybackException.createForRenderer(e, m34281s());
            }
        }
    }

    /* renamed from: a */
    public abstract float mo33831a(float f, Format format, Format[] formatArr);

    /* renamed from: a */
    public abstract int mo33825a(MediaCodec mediaCodec, C1501a aVar, Format format, Format format2);

    @Override // p012b.p076s.p078b.p079a.AbstractC1238i0
    /* renamed from: a */
    public final int mo32129a(Format format) throws ExoPlaybackException {
        try {
            return mo33814a(this.f1710j, this.f1712k, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw ExoPlaybackException.createForRenderer(e, m34281s());
        }
    }

    /* renamed from: a */
    public abstract int mo33814a(AbstractC1502b bVar, AbstractC1327k<C1333o> kVar, Format format) throws MediaCodecUtil.DecoderQueryException;

    /* renamed from: a */
    public final int m38066a(String str) {
        if (C1167d0.f4688a <= 25 && "OMX.Exynos.avc.dec.secure".equals(str) && (C1167d0.f4691d.startsWith("SM-T585") || C1167d0.f4691d.startsWith("SM-A510") || C1167d0.f4691d.startsWith("SM-A520") || C1167d0.f4691d.startsWith("SM-J700"))) {
            return 2;
        }
        if (C1167d0.f4688a >= 24) {
            return 0;
        }
        if ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) {
            return ("flounder".equals(C1167d0.f4689b) || "flounder_lte".equals(C1167d0.f4689b) || "grouper".equals(C1167d0.f4689b) || "tilapia".equals(C1167d0.f4689b)) ? 1 : 0;
        }
        return 0;
    }

    /* renamed from: a */
    public abstract List<C1501a> mo33815a(AbstractC1502b bVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException;

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b, p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: a */
    public final void mo34155a(float f) throws ExoPlaybackException {
        this.f1678B = f;
        if (this.f1679C != null && this.f1705e0 != 3 && mo34150d() != 0) {
            m38073V();
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: a */
    public void mo32131a(long j, long j2) throws ExoPlaybackException {
        if (this.f1709i0) {
            mo33835R();
        } else if (this.f1725u != null || m38054c(true)) {
            m38081L();
            if (this.f1679C != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                C1161a0.m34515a("drainAndFeed");
                do {
                } while (m38063b(j, j2));
                while (m38087D() && m38053d(elapsedRealtime)) {
                }
                C1161a0.m34516a();
            } else {
                this.f1717m0.f5238d += m34283b(j);
                m38054c(false);
            }
            this.f1717m0.m33735a();
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo32130a(long j, boolean z) throws ExoPlaybackException {
        this.f1708h0 = false;
        this.f1709i0 = false;
        m38086E();
        this.f1722r.m34303a();
    }

    /* renamed from: a */
    public final void m38071a(MediaCodec mediaCodec) {
        if (C1167d0.f4688a < 21) {
            this.f1695S = mediaCodec.getInputBuffers();
            this.f1696T = mediaCodec.getOutputBuffers();
        }
    }

    /* renamed from: a */
    public abstract void mo33826a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException;

    /* renamed from: a */
    public final void m38070a(MediaCrypto mediaCrypto, boolean z) throws DecoderInitializationException {
        if (this.f1682F == null) {
            try {
                List<C1501a> b = m38058b(z);
                ArrayDeque<C1501a> arrayDeque = new ArrayDeque<>();
                this.f1682F = arrayDeque;
                if (this.f1716m) {
                    arrayDeque.addAll(b);
                } else if (!b.isEmpty()) {
                    this.f1682F.add(b.get(0));
                }
                this.f1683G = null;
            } catch (MediaCodecUtil.DecoderQueryException e) {
                throw new DecoderInitializationException(this.f1725u, e, z, -49998);
            }
        }
        if (!this.f1682F.isEmpty()) {
            while (this.f1679C == null) {
                C1501a peekFirst = this.f1682F.peekFirst();
                if (mo34252a(peekFirst)) {
                    try {
                        m38067a(peekFirst, mediaCrypto);
                    } catch (Exception e2) {
                        String valueOf = String.valueOf(peekFirst);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
                        sb.append("Failed to initialize decoder: ");
                        sb.append(valueOf);
                        C1175j.m34416b("MediaCodecRenderer", sb.toString(), e2);
                        this.f1682F.removeFirst();
                        DecoderInitializationException decoderInitializationException = new DecoderInitializationException(this.f1725u, e2, z, peekFirst.f6160a);
                        DecoderInitializationException decoderInitializationException2 = this.f1683G;
                        if (decoderInitializationException2 == null) {
                            this.f1683G = decoderInitializationException;
                        } else {
                            this.f1683G = decoderInitializationException2.copyWithFallbackException(decoderInitializationException);
                        }
                        if (this.f1682F.isEmpty()) {
                            throw this.f1683G;
                        }
                    }
                } else {
                    return;
                }
            }
            this.f1682F = null;
            return;
        }
        throw new DecoderInitializationException(this.f1725u, (Throwable) null, z, -49999);
    }

    /* renamed from: a */
    public final void m38069a(DrmSession<C1333o> drmSession) {
        if (drmSession != null && drmSession != this.f1728x && drmSession != this.f1727w) {
            this.f1712k.mo33691a(drmSession);
        }
    }

    /* renamed from: a */
    public abstract void mo33819a(C1311d dVar);

    /* renamed from: a */
    public abstract void mo33818a(C1501a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) throws MediaCodecUtil.DecoderQueryException;

    /* renamed from: a */
    public final void m38067a(C1501a aVar, MediaCrypto mediaCrypto) throws Exception {
        String str = aVar.f6160a;
        float a = -1.0f;
        a = C1167d0.f4688a < 23 ? -1.0f : mo33831a(this.f1678B, this.f1725u, m34280t());
        if (a <= this.f1718n) {
        }
        MediaCodec mediaCodec = null;
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            String valueOf = String.valueOf(str);
            C1161a0.m34515a(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
            MediaCodec createByCodecName = MediaCodec.createByCodecName(str);
            C1161a0.m34516a();
            C1161a0.m34515a("configureCodec");
            mo33818a(aVar, createByCodecName, this.f1725u, mediaCrypto, a);
            C1161a0.m34516a();
            C1161a0.m34515a("startCodec");
            createByCodecName.start();
            C1161a0.m34516a();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            mediaCodec = createByCodecName;
            m38071a(createByCodecName);
            this.f1679C = createByCodecName;
            this.f1684H = aVar;
            this.f1681E = a;
            this.f1680D = this.f1725u;
            this.f1685I = m38066a(str);
            this.f1686J = m38049e(str);
            this.f1687K = m38065a(str, this.f1680D);
            this.f1688L = m38052d(str);
            this.f1689M = m38060b(str);
            this.f1690N = m38055c(str);
            this.f1691O = m38059b(str, this.f1680D);
            this.f1694R = m38061b(aVar) || mo34265I();
            m38075T();
            m38074U();
            this.f1697U = mo34150d() == 2 ? SystemClock.elapsedRealtime() + 1000 : -9223372036854775807L;
            this.f1702b0 = false;
            this.f1703c0 = 0;
            this.f1707g0 = false;
            this.f1706f0 = false;
            this.f1704d0 = 0;
            this.f1705e0 = 0;
            this.f1692P = false;
            this.f1693Q = false;
            this.f1701a0 = false;
            this.f1713k0 = true;
            this.f1717m0.f5235a++;
            mo33812a(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
        } catch (Exception e) {
            if (mediaCodec != null) {
                m38076S();
                mediaCodec.release();
            }
            throw e;
        }
    }

    /* renamed from: a */
    public void mo33813a(C1531w wVar) throws ExoPlaybackException {
        Format format = this.f1725u;
        Format format2 = wVar.f6243a;
        this.f1725u = format2;
        this.f1715l0 = true;
        if (!C1167d0.m34478a(format2.f1565l, format == null ? null : format.f1565l)) {
            if (format2.f1565l != null) {
                AbstractC1327k<C1333o> kVar = this.f1712k;
                if (kVar != null) {
                    DrmSession<C1333o> a = kVar.mo33693a(Looper.myLooper(), format2.f1565l);
                    if (a == this.f1728x || a == this.f1727w) {
                        this.f1712k.mo33691a(a);
                    }
                    m38056c(a);
                } else {
                    throw ExoPlaybackException.createForRenderer(new IllegalStateException("Media requires a DrmSessionManager"), m34281s());
                }
            } else {
                m38056c((DrmSession<C1333o>) null);
            }
        }
        if (this.f1679C == null) {
            m38081L();
        } else if ((this.f1728x != null || this.f1727w == null) && ((this.f1728x == null || this.f1727w != null) && ((this.f1728x == null || this.f1684H.f6164e) && (C1167d0.f4688a >= 23 || this.f1728x == this.f1727w)))) {
            int a2 = mo33825a(this.f1679C, this.f1684H, this.f1680D, format2);
            if (a2 == 0) {
                m38089B();
            } else if (a2 == 1) {
                this.f1680D = format2;
                m38073V();
                if (this.f1728x != this.f1727w) {
                    m38088C();
                } else {
                    m38090A();
                }
            } else if (a2 != 2) {
                if (a2 == 3) {
                    this.f1680D = format2;
                    m38073V();
                    if (this.f1728x != this.f1727w) {
                        m38088C();
                        return;
                    }
                    return;
                }
                throw new IllegalStateException();
            } else if (this.f1686J) {
                m38089B();
            } else {
                this.f1702b0 = true;
                this.f1703c0 = 1;
                int i = this.f1685I;
                boolean z = true;
                if (i != 2) {
                    if (i == 1) {
                        int i2 = format2.f1567n;
                        Format format3 = this.f1680D;
                        if (i2 == format3.f1567n && format2.f1568o == format3.f1568o) {
                            z = true;
                        }
                    }
                    z = false;
                }
                this.f1692P = z;
                this.f1680D = format2;
                m38073V();
                if (this.f1728x != this.f1727w) {
                    m38088C();
                }
            }
        } else {
            m38089B();
        }
    }

    /* renamed from: a */
    public abstract void mo33812a(String str, long j, long j2);

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo33811a(boolean z) throws ExoPlaybackException {
        this.f1717m0 = new C1310c();
    }

    /* renamed from: a */
    public abstract boolean mo33827a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, Format format) throws ExoPlaybackException;

    /* renamed from: a */
    public boolean mo34252a(C1501a aVar) {
        return true;
    }

    /* renamed from: b */
    public final ByteBuffer m38064b(int i) {
        return C1167d0.f4688a >= 21 ? this.f1679C.getInputBuffer(i) : this.f1695S[i];
    }

    /* renamed from: b */
    public final List<C1501a> m38058b(boolean z) throws MediaCodecUtil.DecoderQueryException {
        List<C1501a> a = mo33815a(this.f1710j, this.f1725u, z);
        List<C1501a> list = a;
        if (a.isEmpty()) {
            list = a;
            if (z) {
                List<C1501a> a2 = mo33815a(this.f1710j, this.f1725u, false);
                list = a2;
                if (!a2.isEmpty()) {
                    String str = this.f1725u.f1562i;
                    String valueOf = String.valueOf(a2);
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 99 + String.valueOf(valueOf).length());
                    sb.append("Drm session requires secure decoder for ");
                    sb.append(str);
                    sb.append(", but no secure decoder available. Trying to proceed with ");
                    sb.append(valueOf);
                    sb.append(".");
                    C1175j.m34414d("MediaCodecRenderer", sb.toString());
                    list = a2;
                }
            }
        }
        return list;
    }

    /* renamed from: b */
    public final void m38062b(DrmSession<C1333o> drmSession) {
        DrmSession<C1333o> drmSession2 = this.f1727w;
        this.f1727w = drmSession;
        m38069a(drmSession2);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: b */
    public boolean mo32126b() {
        return this.f1725u != null && !this.f1711j0 && (m34279u() || m38082K() || (this.f1697U != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f1697U));
    }

    /* renamed from: b */
    public final boolean m38063b(long j, long j2) throws ExoPlaybackException {
        boolean z;
        int i;
        if (!m38082K()) {
            if (!this.f1690N || !this.f1707g0) {
                i = this.f1679C.dequeueOutputBuffer(this.f1724t, m38083J());
            } else {
                try {
                    i = this.f1679C.dequeueOutputBuffer(this.f1724t, m38083J());
                } catch (IllegalStateException e) {
                    m38080M();
                    if (!this.f1709i0) {
                        return false;
                    }
                    mo34264Q();
                    return false;
                }
            }
            if (i < 0) {
                if (i == -2) {
                    m38078O();
                    return true;
                } else if (i == -3) {
                    m38079N();
                    return true;
                } else if (!this.f1694R) {
                    return false;
                } else {
                    if (!this.f1708h0 && this.f1704d0 != 2) {
                        return false;
                    }
                    m38080M();
                    return false;
                }
            } else if (this.f1693Q) {
                this.f1693Q = false;
                this.f1679C.releaseOutputBuffer(i, false);
                return true;
            } else {
                MediaCodec.BufferInfo bufferInfo = this.f1724t;
                if (bufferInfo.size != 0 || (bufferInfo.flags & 4) == 0) {
                    this.f1699W = i;
                    ByteBuffer c = m38057c(i);
                    this.f1700Z = c;
                    if (c != null) {
                        c.position(this.f1724t.offset);
                        ByteBuffer byteBuffer = this.f1700Z;
                        MediaCodec.BufferInfo bufferInfo2 = this.f1724t;
                        byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                    }
                    this.f1701a0 = m38050e(this.f1724t.presentationTimeUs);
                    m38048f(this.f1724t.presentationTimeUs);
                } else {
                    m38080M();
                    return false;
                }
            }
        }
        if (!this.f1690N || !this.f1707g0) {
            MediaCodec mediaCodec = this.f1679C;
            ByteBuffer byteBuffer2 = this.f1700Z;
            int i2 = this.f1699W;
            MediaCodec.BufferInfo bufferInfo3 = this.f1724t;
            z = mo33827a(j, j2, mediaCodec, byteBuffer2, i2, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.f1701a0, this.f1726v);
        } else {
            try {
                z = mo33827a(j, j2, this.f1679C, this.f1700Z, this.f1699W, this.f1724t.flags, this.f1724t.presentationTimeUs, this.f1701a0, this.f1726v);
            } catch (IllegalStateException e2) {
                m38080M();
                if (!this.f1709i0) {
                    return false;
                }
                mo34264Q();
                return false;
            }
        }
        if (!z) {
            return false;
        }
        mo33810c(this.f1724t.presentationTimeUs);
        boolean z2 = (this.f1724t.flags & 4) != 0;
        m38074U();
        if (!z2) {
            return true;
        }
        m38080M();
        return false;
    }

    /* renamed from: c */
    public final ByteBuffer m38057c(int i) {
        return C1167d0.f4688a >= 21 ? this.f1679C.getOutputBuffer(i) : this.f1696T[i];
    }

    /* renamed from: c */
    public abstract void mo33810c(long j);

    /* renamed from: c */
    public final void m38056c(DrmSession<C1333o> drmSession) {
        DrmSession<C1333o> drmSession2 = this.f1728x;
        this.f1728x = drmSession;
        m38069a(drmSession2);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: c */
    public boolean mo32123c() {
        return this.f1709i0;
    }

    /* renamed from: c */
    public final boolean m38054c(boolean z) throws ExoPlaybackException {
        this.f1720p.mo33734a();
        int a = m34284a(this.f1721q, this.f1720p, z);
        if (a == -5) {
            mo33813a(this.f1721q);
            return true;
        } else if (a != -4 || !this.f1720p.m33742c()) {
            return false;
        } else {
            this.f1708h0 = true;
            m38080M();
            return false;
        }
    }

    /* renamed from: d */
    public final boolean m38053d(long j) {
        return this.f1677A == -9223372036854775807L || SystemClock.elapsedRealtime() - j < this.f1677A;
    }

    /* renamed from: d */
    public final boolean m38051d(boolean z) throws ExoPlaybackException {
        boolean z2 = false;
        if (this.f1727w == null) {
            return false;
        }
        if (!z && this.f1714l) {
            return false;
        }
        int d = this.f1727w.mo33689d();
        if (d != 1) {
            if (d != 4) {
                z2 = true;
            }
            return z2;
        }
        throw ExoPlaybackException.createForRenderer(this.f1727w.mo33688e(), m34281s());
    }

    /* renamed from: e */
    public final boolean m38050e(long j) {
        int size = this.f1723s.size();
        for (int i = 0; i < size; i++) {
            if (this.f1723s.get(i).longValue() == j) {
                this.f1723s.remove(i);
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public final Format m38048f(long j) {
        Format b = this.f1722r.m34297b(j);
        if (b != null) {
            this.f1726v = b;
        }
        return b;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b, p012b.p076s.p078b.p079a.AbstractC1238i0
    /* renamed from: m */
    public final int mo34140m() {
        return 8;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: v */
    public void mo32995v() {
        this.f1725u = null;
        if (this.f1728x == null && this.f1727w == null) {
            mo34266F();
        } else {
            mo33803w();
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: w */
    public void mo33803w() {
        try {
            mo34264Q();
        } finally {
            m38056c((DrmSession<C1333o>) null);
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: x */
    public void mo33802x() {
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: y */
    public void mo33801y() {
    }

    /* renamed from: z */
    public final boolean m38047z() {
        return "Amazon".equals(C1167d0.f4690c) && ("AFTM".equals(C1167d0.f4691d) || "AFTB".equals(C1167d0.f4691d));
    }
}
