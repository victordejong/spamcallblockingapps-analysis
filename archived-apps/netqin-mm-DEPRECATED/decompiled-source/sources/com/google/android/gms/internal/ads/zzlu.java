package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzlu.class */
public abstract class zzlu extends zzhb {

    /* renamed from: U */
    public static final byte[] f28569U = zzpq.m11613e("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");

    /* renamed from: A */
    public boolean f28570A;

    /* renamed from: B */
    public boolean f28571B;

    /* renamed from: C */
    public boolean f28572C;

    /* renamed from: D */
    public boolean f28573D;

    /* renamed from: E */
    public ByteBuffer[] f28574E;

    /* renamed from: F */
    public ByteBuffer[] f28575F;

    /* renamed from: G */
    public long f28576G;

    /* renamed from: H */
    public int f28577H;

    /* renamed from: I */
    public int f28578I;

    /* renamed from: J */
    public boolean f28579J;

    /* renamed from: K */
    public boolean f28580K;

    /* renamed from: L */
    public int f28581L;

    /* renamed from: M */
    public int f28582M;

    /* renamed from: N */
    public boolean f28583N;

    /* renamed from: O */
    public boolean f28584O;

    /* renamed from: P */
    public boolean f28585P;

    /* renamed from: Q */
    public boolean f28586Q;

    /* renamed from: R */
    public boolean f28587R;

    /* renamed from: S */
    public boolean f28588S;

    /* renamed from: T */
    public zzjl f28589T;

    /* renamed from: i */
    public final zzlw f28590i;

    /* renamed from: j */
    public final zzjs<zzju> f28591j;

    /* renamed from: k */
    public final boolean f28592k;

    /* renamed from: l */
    public final zzjk f28593l;

    /* renamed from: m */
    public final zzjk f28594m;

    /* renamed from: n */
    public final zzhq f28595n;

    /* renamed from: o */
    public final List<Long> f28596o;

    /* renamed from: p */
    public final MediaCodec.BufferInfo f28597p;

    /* renamed from: q */
    public zzho f28598q;

    /* renamed from: r */
    public zzjq<zzju> f28599r;

    /* renamed from: s */
    public zzjq<zzju> f28600s;

    /* renamed from: t */
    public MediaCodec f28601t;

    /* renamed from: u */
    public zzlr f28602u;

    /* renamed from: v */
    public boolean f28603v;

    /* renamed from: w */
    public boolean f28604w;

    /* renamed from: x */
    public boolean f28605x;

    /* renamed from: y */
    public boolean f28606y;

    /* renamed from: z */
    public boolean f28607z;

    public zzlu(int i, zzlw zzlwVar, zzjs<zzju> zzjsVar, boolean z) {
        super(i);
        zzoz.m11694b(zzpq.f28786a >= 16);
        zzoz.m11698a(zzlwVar);
        this.f28590i = zzlwVar;
        this.f28591j = zzjsVar;
        this.f28592k = z;
        this.f28593l = new zzjk(0);
        this.f28594m = new zzjk(0);
        this.f28595n = new zzhq();
        this.f28596o = new ArrayList();
        this.f28597p = new MediaCodec.BufferInfo();
        this.f28581L = 0;
        this.f28582M = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x0221 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0223  */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m11834A() throws com.google.android.gms.internal.ads.zzhd {
        /*
            Method dump skipped, instructions count: 785
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlu.m11834A():boolean");
    }

    /* renamed from: B */
    public final void m11833B() throws zzhd {
        if (this.f28582M == 2) {
            mo11575z();
            m11824w();
            return;
        }
        this.f28586Q = true;
        mo11825v();
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    /* renamed from: a */
    public final int mo11831a(zzho zzhoVar) throws zzhd {
        try {
            return mo11591a(this.f28590i, zzhoVar);
        } catch (zzlz e) {
            throw zzhd.zza(e, m12063p());
        }
    }

    /* renamed from: a */
    public abstract int mo11591a(zzlw zzlwVar, zzho zzhoVar) throws zzlz;

    /* renamed from: a */
    public zzlr mo11829a(zzlw zzlwVar, zzho zzhoVar, boolean z) throws zzlz {
        return zzlwVar.mo11820a(zzhoVar.f28268f, z);
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: a */
    public final void mo11832a(long j, long j2) throws zzhd {
        if (this.f28586Q) {
            mo11825v();
            return;
        }
        if (this.f28598q == null) {
            this.f28594m.mo11909a();
            int a = m12065a(this.f28595n, this.f28594m, true);
            if (a == -5) {
                mo11583b(this.f28595n.f28293a);
            } else if (a == -4) {
                zzoz.m11694b(this.f28594m.m11912c());
                this.f28585P = true;
                m11833B();
                return;
            } else {
                return;
            }
        }
        m11824w();
        if (this.f28601t != null) {
            zzpn.m11631a("drainAndFeed");
            do {
            } while (m11828b(j, j2));
            do {
            } while (m11834A());
            zzpn.m11632a();
        } else {
            m12064b(j);
            this.f28594m.mo11909a();
            int a2 = m12065a(this.f28595n, this.f28594m, false);
            if (a2 == -5) {
                mo11583b(this.f28595n.f28293a);
            } else if (a2 == -4) {
                zzoz.m11694b(this.f28594m.m11912c());
                this.f28585P = true;
                m11833B();
            }
        }
        this.f28589T.m11905a();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    /* renamed from: a */
    public void mo11599a(long j, boolean z) throws zzhd {
        this.f28585P = false;
        this.f28586Q = false;
        if (this.f28601t != null) {
            this.f28576G = -9223372036854775807L;
            this.f28577H = -1;
            this.f28578I = -1;
            this.f28588S = true;
            this.f28587R = false;
            this.f28579J = false;
            this.f28596o.clear();
            this.f28572C = false;
            this.f28573D = false;
            if (this.f28604w || (this.f28607z && this.f28584O)) {
                mo11575z();
                m11824w();
            } else if (this.f28582M != 0) {
                mo11575z();
                m11824w();
            } else {
                this.f28601t.flush();
                this.f28583N = false;
            }
            if (this.f28580K && this.f28598q != null) {
                this.f28581L = 1;
            }
        }
    }

    /* renamed from: a */
    public void mo11596a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzhd {
    }

    /* renamed from: a */
    public void mo11594a(zzjk zzjkVar) {
    }

    /* renamed from: a */
    public abstract void mo11592a(zzlr zzlrVar, MediaCodec mediaCodec, zzho zzhoVar, MediaCrypto mediaCrypto) throws zzlz;

    /* renamed from: a */
    public final void m11830a(zzlt zzltVar) throws zzhd {
        throw zzhd.zza(zzltVar, m12063p());
    }

    /* renamed from: a */
    public void mo11589a(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    /* renamed from: a */
    public void mo11588a(boolean z) throws zzhd {
        this.f28589T = new zzjl();
    }

    /* renamed from: a */
    public abstract boolean mo11600a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzhd;

    /* renamed from: a */
    public boolean mo11595a(MediaCodec mediaCodec, boolean z, zzho zzhoVar, zzho zzhoVar2) {
        return false;
    }

    /* renamed from: a */
    public boolean mo11593a(zzlr zzlrVar) {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d4, code lost:
        if (r0.f28273k == r0.f28273k) goto L_0x00dd;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo11583b(com.google.android.gms.internal.ads.zzho r7) throws com.google.android.gms.internal.ads.zzhd {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlu.mo11583b(com.google.android.gms.internal.ads.zzho):void");
    }

    /* renamed from: b */
    public boolean mo11585b() {
        if (this.f28598q == null || this.f28587R) {
            return false;
        }
        if (m12061u() || this.f28578I >= 0) {
            return true;
        }
        return this.f28576G != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f28576G;
    }

    /* renamed from: b */
    public final boolean m11828b(long j, long j2) throws zzhd {
        boolean z;
        boolean z2;
        if (this.f28578I < 0) {
            if (!this.f28570A || !this.f28584O) {
                this.f28578I = this.f28601t.dequeueOutputBuffer(this.f28597p, 0L);
            } else {
                try {
                    this.f28578I = this.f28601t.dequeueOutputBuffer(this.f28597p, 0L);
                } catch (IllegalStateException e) {
                    m11833B();
                    if (!this.f28586Q) {
                        return false;
                    }
                    mo11575z();
                    return false;
                }
            }
            int i = this.f28578I;
            if (i >= 0) {
                if (this.f28573D) {
                    this.f28573D = false;
                    this.f28601t.releaseOutputBuffer(i, false);
                    this.f28578I = -1;
                    return true;
                }
                MediaCodec.BufferInfo bufferInfo = this.f28597p;
                if ((bufferInfo.flags & 4) != 0) {
                    m11833B();
                    this.f28578I = -1;
                    return false;
                }
                ByteBuffer byteBuffer = this.f28575F[i];
                if (byteBuffer != null) {
                    byteBuffer.position(bufferInfo.offset);
                    MediaCodec.BufferInfo bufferInfo2 = this.f28597p;
                    byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                }
                long j3 = this.f28597p.presentationTimeUs;
                int size = this.f28596o.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z2 = false;
                        break;
                    } else if (this.f28596o.get(i2).longValue() == j3) {
                        this.f28596o.remove(i2);
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                this.f28579J = z2;
            } else if (i == -2) {
                MediaFormat outputFormat = this.f28601t.getOutputFormat();
                if (this.f28605x && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                    this.f28573D = true;
                    return true;
                }
                if (this.f28571B) {
                    outputFormat.setInteger("channel-count", 1);
                }
                mo11596a(this.f28601t, outputFormat);
                return true;
            } else if (i == -3) {
                this.f28575F = this.f28601t.getOutputBuffers();
                return true;
            } else if (!this.f28606y) {
                return false;
            } else {
                if (!this.f28585P && this.f28582M != 2) {
                    return false;
                }
                m11833B();
                return false;
            }
        }
        if (!this.f28570A || !this.f28584O) {
            MediaCodec mediaCodec = this.f28601t;
            ByteBuffer[] byteBufferArr = this.f28575F;
            int i3 = this.f28578I;
            ByteBuffer byteBuffer2 = byteBufferArr[i3];
            MediaCodec.BufferInfo bufferInfo3 = this.f28597p;
            z = mo11600a(j, j2, mediaCodec, byteBuffer2, i3, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.f28579J);
        } else {
            try {
                z = mo11600a(j, j2, this.f28601t, this.f28575F[this.f28578I], this.f28578I, this.f28597p.flags, this.f28597p.presentationTimeUs, this.f28579J);
            } catch (IllegalStateException e2) {
                m11833B();
                if (!this.f28586Q) {
                    return false;
                }
                mo11575z();
                return false;
            }
        }
        if (!z) {
            return false;
        }
        long j4 = this.f28597p.presentationTimeUs;
        this.f28578I = -1;
        return true;
    }

    /* renamed from: c */
    public boolean mo11827c() {
        return this.f28586Q;
    }

    @Override // com.google.android.gms.internal.ads.zzhb, com.google.android.gms.internal.ads.zzhw
    /* renamed from: l */
    public final int mo11826l() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    /* renamed from: q */
    public void mo11578q() {
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    /* renamed from: r */
    public void mo11577r() {
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    /* renamed from: s */
    public void mo11576s() {
        this.f28598q = null;
        try {
            mo11575z();
            try {
                if (this.f28599r != null) {
                    this.f28591j.m11898a(this.f28599r);
                }
                try {
                    if (!(this.f28600s == null || this.f28600s == this.f28599r)) {
                        this.f28591j.m11898a(this.f28600s);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    if (!(this.f28600s == null || this.f28600s == this.f28599r)) {
                        this.f28591j.m11898a(this.f28600s);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.f28599r != null) {
                    this.f28591j.m11898a(this.f28599r);
                }
                try {
                    if (!(this.f28600s == null || this.f28600s == this.f28599r)) {
                        this.f28591j.m11898a(this.f28600s);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    if (!(this.f28600s == null || this.f28600s == this.f28599r)) {
                        this.f28591j.m11898a(this.f28600s);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    /* renamed from: v */
    public void mo11825v() throws zzhd {
    }

    /* renamed from: w */
    public final void m11824w() throws zzhd {
        zzho zzhoVar;
        if (this.f28601t == null && (zzhoVar = this.f28598q) != null) {
            zzjq<zzju> zzjqVar = this.f28600s;
            this.f28599r = zzjqVar;
            String str = zzhoVar.f28268f;
            if (zzjqVar != null) {
                int d = zzjqVar.m11900d();
                if (d == 0) {
                    throw zzhd.zza(this.f28599r.m11901b(), m12063p());
                } else if (d == 3 || d == 4) {
                    this.f28599r.m11902a();
                    throw new NoSuchMethodError();
                }
            } else {
                if (this.f28602u == null) {
                    try {
                        this.f28602u = mo11829a(this.f28590i, zzhoVar, false);
                        if (this.f28602u == null) {
                            m11830a(new zzlt(this.f28598q, (Throwable) null, false, -49999));
                            throw null;
                        }
                    } catch (zzlz e) {
                        m11830a(new zzlt(this.f28598q, (Throwable) e, false, -49998));
                        throw null;
                    }
                }
                if (mo11593a(this.f28602u)) {
                    String str2 = this.f28602u.f28563a;
                    this.f28603v = zzpq.f28786a < 21 && this.f28598q.f28270h.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str2);
                    int i = zzpq.f28786a;
                    this.f28604w = i < 18 || (i == 18 && ("OMX.SEC.avc.dec".equals(str2) || "OMX.SEC.avc.dec.secure".equals(str2))) || (zzpq.f28786a == 19 && zzpq.f28789d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str2) || "OMX.Exynos.avc.dec.secure".equals(str2)));
                    this.f28605x = zzpq.f28786a < 24 && ("OMX.Nvidia.h264.decode".equals(str2) || "OMX.Nvidia.h264.decode.secure".equals(str2)) && ("flounder".equals(zzpq.f28787b) || "flounder_lte".equals(zzpq.f28787b) || "grouper".equals(zzpq.f28787b) || "tilapia".equals(zzpq.f28787b));
                    this.f28606y = zzpq.f28786a <= 17 && ("OMX.rk.video_decoder.avc".equals(str2) || "OMX.allwinner.video.decoder.avc".equals(str2));
                    this.f28607z = (zzpq.f28786a <= 23 && "OMX.google.vorbis.decoder".equals(str2)) || (zzpq.f28786a <= 19 && "hb2000".equals(zzpq.f28787b) && ("OMX.amlogic.avc.decoder.awesome".equals(str2) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str2)));
                    this.f28570A = zzpq.f28786a == 21 && "OMX.google.aac.decoder".equals(str2);
                    this.f28571B = zzpq.f28786a <= 18 && this.f28598q.f28280r == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str2);
                    try {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        String valueOf = String.valueOf(str2);
                        zzpn.m11631a(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
                        this.f28601t = MediaCodec.createByCodecName(str2);
                        zzpn.m11632a();
                        zzpn.m11631a("configureCodec");
                        mo11592a(this.f28602u, this.f28601t, this.f28598q, (MediaCrypto) null);
                        zzpn.m11632a();
                        zzpn.m11631a("startCodec");
                        this.f28601t.start();
                        zzpn.m11632a();
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        mo11589a(str2, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                        this.f28574E = this.f28601t.getInputBuffers();
                        this.f28575F = this.f28601t.getOutputBuffers();
                        this.f28576G = mo12011d() == 2 ? SystemClock.elapsedRealtime() + 1000 : -9223372036854775807L;
                        this.f28577H = -1;
                        this.f28578I = -1;
                        this.f28588S = true;
                        this.f28589T.f28411a++;
                    } catch (Exception e2) {
                        m11830a(new zzlt(this.f28598q, (Throwable) e2, false, str2));
                        throw null;
                    }
                }
            }
        }
    }

    /* renamed from: x */
    public final MediaCodec m11823x() {
        return this.f28601t;
    }

    /* renamed from: y */
    public final zzlr m11822y() {
        return this.f28602u;
    }

    /* renamed from: z */
    public void mo11575z() {
        this.f28576G = -9223372036854775807L;
        this.f28577H = -1;
        this.f28578I = -1;
        this.f28587R = false;
        this.f28579J = false;
        this.f28596o.clear();
        this.f28574E = null;
        this.f28575F = null;
        this.f28602u = null;
        this.f28580K = false;
        this.f28583N = false;
        this.f28603v = false;
        this.f28604w = false;
        this.f28605x = false;
        this.f28606y = false;
        this.f28607z = false;
        this.f28571B = false;
        this.f28572C = false;
        this.f28573D = false;
        this.f28584O = false;
        this.f28581L = 0;
        this.f28582M = 0;
        this.f28593l.f28409c = null;
        MediaCodec mediaCodec = this.f28601t;
        if (mediaCodec != null) {
            this.f28589T.f28412b++;
            try {
                mediaCodec.stop();
                try {
                    this.f28601t.release();
                    this.f28601t = null;
                    zzjq<zzju> zzjqVar = this.f28599r;
                    if (zzjqVar != null && this.f28600s != zzjqVar) {
                        try {
                            this.f28591j.m11898a(zzjqVar);
                        } finally {
                        }
                    }
                } catch (Throwable th) {
                    this.f28601t = null;
                    zzjq<zzju> zzjqVar2 = this.f28599r;
                    if (!(zzjqVar2 == null || this.f28600s == zzjqVar2)) {
                        try {
                            this.f28591j.m11898a(zzjqVar2);
                        } finally {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    this.f28601t.release();
                    this.f28601t = null;
                    zzjq<zzju> zzjqVar3 = this.f28599r;
                    if (!(zzjqVar3 == null || this.f28600s == zzjqVar3)) {
                        try {
                            this.f28591j.m11898a(zzjqVar3);
                        } finally {
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    this.f28601t = null;
                    zzjq<zzju> zzjqVar4 = this.f28599r;
                    if (!(zzjqVar4 == null || this.f28600s == zzjqVar4)) {
                        try {
                            this.f28591j.m11898a(zzjqVar4);
                        } finally {
                        }
                    }
                    throw th3;
                }
            }
        }
    }
}
