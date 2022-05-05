package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Looper;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzkw.class */
public abstract class zzkw extends zzgj {

    /* renamed from: b */
    private static final byte[] f15052b = zzoq.zzbo("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");

    /* renamed from: A */
    private long f15053A;

    /* renamed from: B */
    private int f15054B;

    /* renamed from: C */
    private int f15055C;

    /* renamed from: D */
    private boolean f15056D;

    /* renamed from: E */
    private boolean f15057E;

    /* renamed from: F */
    private int f15058F;

    /* renamed from: G */
    private int f15059G;

    /* renamed from: H */
    private boolean f15060H;

    /* renamed from: I */
    private boolean f15061I;

    /* renamed from: J */
    private boolean f15062J;

    /* renamed from: K */
    private boolean f15063K;

    /* renamed from: L */
    private boolean f15064L;

    /* renamed from: M */
    private boolean f15065M;

    /* renamed from: a */
    protected zzit f15066a;

    /* renamed from: c */
    private final zzky f15067c;

    /* renamed from: d */
    private final zzja<zzjc> f15068d;

    /* renamed from: e */
    private final boolean f15069e;

    /* renamed from: f */
    private final zzis f15070f;

    /* renamed from: g */
    private final zzis f15071g;

    /* renamed from: h */
    private final zzgy f15072h;

    /* renamed from: i */
    private final List<Long> f15073i;

    /* renamed from: j */
    private final MediaCodec.BufferInfo f15074j;

    /* renamed from: k */
    private zzgw f15075k;

    /* renamed from: l */
    private zziy<zzjc> f15076l;

    /* renamed from: m */
    private zziy<zzjc> f15077m;

    /* renamed from: n */
    private MediaCodec f15078n;

    /* renamed from: o */
    private zzkt f15079o;

    /* renamed from: p */
    private boolean f15080p;

    /* renamed from: q */
    private boolean f15081q;

    /* renamed from: r */
    private boolean f15082r;

    /* renamed from: s */
    private boolean f15083s;

    /* renamed from: t */
    private boolean f15084t;

    /* renamed from: u */
    private boolean f15085u;

    /* renamed from: v */
    private boolean f15086v;

    /* renamed from: w */
    private boolean f15087w;

    /* renamed from: x */
    private boolean f15088x;

    /* renamed from: y */
    private ByteBuffer[] f15089y;

    /* renamed from: z */
    private ByteBuffer[] f15090z;

    public zzkw(int i, zzky zzkyVar, zzja<zzjc> zzjaVar, boolean z) {
        super(i);
        zzoc.checkState(zzoq.SDK_INT >= 16);
        this.f15067c = (zzky) zzoc.checkNotNull(zzkyVar);
        this.f15068d = zzjaVar;
        this.f15069e = z;
        this.f15070f = new zzis(0);
        this.f15071g = new zzis(0);
        this.f15072h = new zzgy();
        this.f15073i = new ArrayList();
        this.f15074j = new MediaCodec.BufferInfo();
        this.f15058F = 0;
        this.f15059G = 0;
    }

    /* renamed from: a */
    private final void m3197a(zzkv zzkvVar) {
        throw zzgl.zza(zzkvVar, m3252e());
    }

    /* renamed from: a */
    private final boolean m3198a(long j, long j2) {
        boolean z;
        boolean z2;
        if (this.f15055C < 0) {
            if (!this.f15085u || !this.f15061I) {
                this.f15055C = this.f15078n.dequeueOutputBuffer(this.f15074j, 0L);
            } else {
                try {
                    this.f15055C = this.f15078n.dequeueOutputBuffer(this.f15074j, 0L);
                } catch (IllegalStateException e) {
                    m3194h();
                    if (!this.f15063K) {
                        return false;
                    }
                    mo3135n();
                    return false;
                }
            }
            int i = this.f15055C;
            if (i >= 0) {
                if (this.f15088x) {
                    this.f15088x = false;
                    this.f15078n.releaseOutputBuffer(i, false);
                    this.f15055C = -1;
                    return true;
                } else if ((this.f15074j.flags & 4) != 0) {
                    m3194h();
                    this.f15055C = -1;
                    return false;
                } else {
                    ByteBuffer byteBuffer = this.f15090z[this.f15055C];
                    if (byteBuffer != null) {
                        byteBuffer.position(this.f15074j.offset);
                        byteBuffer.limit(this.f15074j.offset + this.f15074j.size);
                    }
                    long j3 = this.f15074j.presentationTimeUs;
                    int size = this.f15073i.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            z2 = false;
                            break;
                        } else if (this.f15073i.get(i2).longValue() == j3) {
                            this.f15073i.remove(i2);
                            z2 = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    this.f15056D = z2;
                }
            } else if (i == -2) {
                MediaFormat outputFormat = this.f15078n.getOutputFormat();
                if (this.f15082r && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                    this.f15088x = true;
                    return true;
                }
                if (this.f15086v) {
                    outputFormat.setInteger("channel-count", 1);
                }
                mo3156a(this.f15078n, outputFormat);
                return true;
            } else if (i == -3) {
                this.f15090z = this.f15078n.getOutputBuffers();
                return true;
            } else if (!this.f15083s) {
                return false;
            } else {
                if (!this.f15062J && this.f15059G != 2) {
                    return false;
                }
                m3194h();
                return false;
            }
        }
        if (!this.f15085u || !this.f15061I) {
            MediaCodec mediaCodec = this.f15078n;
            ByteBuffer[] byteBufferArr = this.f15090z;
            int i3 = this.f15055C;
            z = mo3160a(j, j2, mediaCodec, byteBufferArr[i3], i3, this.f15074j.flags, this.f15074j.presentationTimeUs, this.f15056D);
        } else {
            try {
                z = mo3160a(j, j2, this.f15078n, this.f15090z[this.f15055C], this.f15055C, this.f15074j.flags, this.f15074j.presentationTimeUs, this.f15056D);
            } catch (IllegalStateException e2) {
                m3194h();
                if (!this.f15063K) {
                    return false;
                }
                mo3135n();
                return false;
            }
        }
        if (!z) {
            return false;
        }
        long j4 = this.f15074j.presentationTimeUs;
        this.f15055C = -1;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x0226 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0228  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m3195g() {
        /*
            Method dump skipped, instructions count: 784
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkw.m3195g():boolean");
    }

    /* renamed from: h */
    private final void m3194h() {
        if (this.f15059G == 2) {
            mo3135n();
            m3192k();
            return;
        }
        this.f15063K = true;
        mo3193j();
    }

    /* renamed from: a */
    protected abstract int mo3152a(zzky zzkyVar, zzgw zzgwVar);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public zzkt mo3196a(zzky zzkyVar, zzgw zzgwVar, boolean z) {
        return zzkyVar.zzb(zzgwVar.zzafe, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgj
    /* renamed from: a */
    public void mo3161a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgj
    /* renamed from: a */
    public void mo3159a(long j, boolean z) {
        this.f15062J = false;
        this.f15063K = false;
        if (this.f15078n != null) {
            this.f15053A = -9223372036854775807L;
            this.f15054B = -1;
            this.f15055C = -1;
            this.f15065M = true;
            this.f15064L = false;
            this.f15056D = false;
            this.f15073i.clear();
            this.f15087w = false;
            this.f15088x = false;
            if (this.f15081q || ((this.f15084t && this.f15061I) || this.f15059G != 0)) {
                mo3135n();
                m3192k();
            } else {
                this.f15078n.flush();
                this.f15060H = false;
            }
            if (this.f15057E && this.f15075k != null) {
                this.f15058F = 1;
            }
        }
    }

    /* renamed from: a */
    protected void mo3156a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo3155a(zzgw zzgwVar) {
        zzgw zzgwVar2 = this.f15075k;
        this.f15075k = zzgwVar;
        boolean z = true;
        if (!zzoq.zza(this.f15075k.zzafh, zzgwVar2 == null ? null : zzgwVar2.zzafh)) {
            if (this.f15075k.zzafh != null) {
                zzja<zzjc> zzjaVar = this.f15068d;
                if (zzjaVar != null) {
                    this.f15077m = zzjaVar.zza(Looper.myLooper(), this.f15075k.zzafh);
                    zziy<zzjc> zziyVar = this.f15077m;
                    if (zziyVar == this.f15076l) {
                        this.f15068d.zza(zziyVar);
                    }
                } else {
                    throw zzgl.zza(new IllegalStateException("Media requires a DrmSessionManager"), m3252e());
                }
            } else {
                this.f15077m = null;
            }
        }
        if (this.f15077m == this.f15076l && this.f15078n != null && mo3148a(this.f15079o.zzaxn, zzgwVar2, this.f15075k)) {
            this.f15057E = true;
            this.f15058F = 1;
            if (!(this.f15082r && this.f15075k.width == zzgwVar2.width && this.f15075k.height == zzgwVar2.height)) {
                z = false;
            }
            this.f15087w = z;
        } else if (this.f15060H) {
            this.f15059G = 1;
        } else {
            mo3135n();
            m3192k();
        }
    }

    /* renamed from: a */
    protected abstract void mo3153a(zzkt zzktVar, MediaCodec mediaCodec, zzgw zzgwVar);

    /* renamed from: a */
    protected void mo3150a(String str, long j, long j2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgj
    /* renamed from: a */
    public void mo3149a(boolean z) {
        this.f15066a = new zzit();
    }

    /* renamed from: a */
    protected abstract boolean mo3160a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z);

    /* renamed from: a */
    protected boolean mo3154a(zzkt zzktVar) {
        return true;
    }

    /* renamed from: a */
    protected boolean mo3148a(boolean z, zzgw zzgwVar, zzgw zzgwVar2) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgj
    /* renamed from: b */
    public void mo3146b() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgj
    /* renamed from: c */
    public void mo3140c() {
        this.f15075k = null;
        try {
            mo3135n();
            try {
                if (this.f15076l != null) {
                    this.f15068d.zza(this.f15076l);
                }
                try {
                    if (!(this.f15077m == null || this.f15077m == this.f15076l)) {
                        this.f15068d.zza(this.f15077m);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    if (!(this.f15077m == null || this.f15077m == this.f15076l)) {
                        this.f15068d.zza(this.f15077m);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.f15076l != null) {
                    this.f15068d.zza(this.f15076l);
                }
                try {
                    if (!(this.f15077m == null || this.f15077m == this.f15076l)) {
                        this.f15068d.zza(this.f15077m);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    if (!(this.f15077m == null || this.f15077m == this.f15076l)) {
                        this.f15068d.zza(this.f15077m);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    public boolean isReady() {
        if (this.f15075k == null || this.f15064L) {
            return false;
        }
        if (m3251f() || this.f15055C >= 0) {
            return true;
        }
        return this.f15053A != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f15053A;
    }

    /* renamed from: j */
    protected void mo3193j() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: k */
    public final void m3192k() {
        zzgw zzgwVar;
        if (this.f15078n == null && (zzgwVar = this.f15075k) != null) {
            this.f15076l = this.f15077m;
            zziy<zzjc> zziyVar = this.f15076l;
            if (zziyVar != null) {
                int state = zziyVar.getState();
                if (state == 0) {
                    throw zzgl.zza(this.f15076l.zzgg(), m3252e());
                } else if (state == 3 || state == 4) {
                    this.f15076l.zzgf();
                    throw new NoSuchMethodError();
                }
            } else {
                if (this.f15079o == null) {
                    try {
                        this.f15079o = mo3196a(this.f15067c, zzgwVar, false);
                    } catch (zzlb e) {
                        m3197a(new zzkv(this.f15075k, (Throwable) e, false, -49998));
                    }
                    if (this.f15079o == null) {
                        m3197a(new zzkv(this.f15075k, (Throwable) null, false, -49999));
                    }
                }
                if (mo3154a(this.f15079o)) {
                    String str = this.f15079o.name;
                    this.f15080p = zzoq.SDK_INT < 21 && this.f15075k.zzafg.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
                    this.f15081q = zzoq.SDK_INT < 18 || (zzoq.SDK_INT == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (zzoq.SDK_INT == 19 && zzoq.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
                    this.f15082r = zzoq.SDK_INT < 24 && ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) && ("flounder".equals(zzoq.DEVICE) || "flounder_lte".equals(zzoq.DEVICE) || "grouper".equals(zzoq.DEVICE) || "tilapia".equals(zzoq.DEVICE));
                    this.f15083s = zzoq.SDK_INT <= 17 && ("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str));
                    this.f15084t = (zzoq.SDK_INT <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (zzoq.SDK_INT <= 19 && "hb2000".equals(zzoq.DEVICE) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str)));
                    this.f15085u = zzoq.SDK_INT == 21 && "OMX.google.aac.decoder".equals(str);
                    this.f15086v = zzoq.SDK_INT <= 18 && this.f15075k.zzafo == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
                    try {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        String valueOf = String.valueOf(str);
                        zzon.beginSection(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
                        this.f15078n = MediaCodec.createByCodecName(str);
                        zzon.endSection();
                        zzon.beginSection("configureCodec");
                        mo3153a(this.f15079o, this.f15078n, this.f15075k);
                        zzon.endSection();
                        zzon.beginSection("startCodec");
                        this.f15078n.start();
                        zzon.endSection();
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        mo3150a(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                        this.f15089y = this.f15078n.getInputBuffers();
                        this.f15090z = this.f15078n.getOutputBuffers();
                    } catch (Exception e2) {
                        m3197a(new zzkv(this.f15075k, (Throwable) e2, false, str));
                    }
                    this.f15053A = getState() == 2 ? SystemClock.elapsedRealtime() + 1000 : -9223372036854775807L;
                    this.f15054B = -1;
                    this.f15055C = -1;
                    this.f15065M = true;
                    this.f15066a.zzamf++;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public final MediaCodec m3191l() {
        return this.f15078n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m */
    public final zzkt m3190m() {
        return this.f15079o;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: n */
    public void mo3135n() {
        this.f15053A = -9223372036854775807L;
        this.f15054B = -1;
        this.f15055C = -1;
        this.f15064L = false;
        this.f15056D = false;
        this.f15073i.clear();
        this.f15089y = null;
        this.f15090z = null;
        this.f15079o = null;
        this.f15057E = false;
        this.f15060H = false;
        this.f15080p = false;
        this.f15081q = false;
        this.f15082r = false;
        this.f15083s = false;
        this.f15084t = false;
        this.f15086v = false;
        this.f15087w = false;
        this.f15088x = false;
        this.f15061I = false;
        this.f15058F = 0;
        this.f15059G = 0;
        this.f15070f.zzcs = null;
        if (this.f15078n != null) {
            this.f15066a.zzamg++;
            try {
                this.f15078n.stop();
                try {
                    this.f15078n.release();
                    this.f15078n = null;
                    zziy<zzjc> zziyVar = this.f15076l;
                    if (zziyVar != null && this.f15077m != zziyVar) {
                        try {
                            this.f15068d.zza(zziyVar);
                        } finally {
                        }
                    }
                } catch (Throwable th) {
                    this.f15078n = null;
                    zziy<zzjc> zziyVar2 = this.f15076l;
                    if (!(zziyVar2 == null || this.f15077m == zziyVar2)) {
                        try {
                            this.f15068d.zza(zziyVar2);
                        } finally {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    this.f15078n.release();
                    this.f15078n = null;
                    zziy<zzjc> zziyVar3 = this.f15076l;
                    if (!(zziyVar3 == null || this.f15077m == zziyVar3)) {
                        try {
                            this.f15068d.zza(zziyVar3);
                        } finally {
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    this.f15078n = null;
                    zziy<zzjc> zziyVar4 = this.f15076l;
                    if (!(zziyVar4 == null || this.f15077m == zziyVar4)) {
                        try {
                            this.f15068d.zza(zziyVar4);
                        } finally {
                        }
                    }
                    throw th3;
                }
            }
        }
    }

    /* renamed from: o */
    protected void mo3134o() {
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final int zza(zzgw zzgwVar) {
        try {
            return mo3152a(this.f15067c, zzgwVar);
        } catch (zzlb e) {
            throw zzgl.zza(e, m3252e());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final void zzb(long j, long j2) {
        if (this.f15063K) {
            mo3193j();
            return;
        }
        if (this.f15075k == null) {
            this.f15071g.clear();
            int a = m3254a(this.f15072h, this.f15071g, true);
            if (a == -5) {
                mo3155a(this.f15072h.zzafz);
            } else if (a == -4) {
                zzoc.checkState(this.f15071g.zzgb());
                this.f15062J = true;
                m3194h();
                return;
            } else {
                return;
            }
        }
        m3192k();
        if (this.f15078n != null) {
            zzon.beginSection("drainAndFeed");
            do {
            } while (m3198a(j, j2));
            do {
            } while (m3195g());
            zzon.endSection();
        } else {
            m3255a(j);
            this.f15071g.clear();
            int a2 = m3254a(this.f15072h, this.f15071g, false);
            if (a2 == -5) {
                mo3155a(this.f15072h.zzafz);
            } else if (a2 == -4) {
                zzoc.checkState(this.f15071g.zzgb());
                this.f15062J = true;
                m3194h();
            }
        }
        this.f15066a.zzge();
    }

    @Override // com.google.android.gms.internal.ads.zzgj, com.google.android.gms.internal.ads.zzhe
    public final int zzdw() {
        return 4;
    }

    public boolean zzeu() {
        return this.f15063K;
    }
}
