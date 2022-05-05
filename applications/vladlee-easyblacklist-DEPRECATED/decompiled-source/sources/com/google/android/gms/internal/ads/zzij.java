package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzij.class */
public final class zzij extends zzkw implements zzog {

    /* renamed from: b */
    private final zzhr f14914b;

    /* renamed from: c */
    private final zzhw f14915c;

    /* renamed from: d */
    private boolean f14916d;

    /* renamed from: e */
    private boolean f14917e;

    /* renamed from: f */
    private MediaFormat f14918f;

    /* renamed from: g */
    private int f14919g;

    /* renamed from: h */
    private int f14920h;

    /* renamed from: i */
    private long f14921i;

    /* renamed from: j */
    private boolean f14922j;

    public zzij(zzky zzkyVar) {
        this(zzkyVar, (byte) 0);
    }

    private zzij(zzky zzkyVar, byte b) {
        this(zzkyVar, (char) 0);
    }

    private zzij(zzky zzkyVar, char c) {
        this(zzkyVar, new zzhm[0]);
    }

    private zzij(zzky zzkyVar, zzhm... zzhmVarArr) {
        super(1, zzkyVar, null, true);
        this.f14915c = new zzhw(null, zzhmVarArr, new amy(this, (byte) 0));
        this.f14914b = new zzhr(null, null);
    }

    /* renamed from: a */
    private final boolean m3233a(String str) {
        return this.f14915c.zzba(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public static void m3231g() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public static void m3230h() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: i */
    public static void m3229i() {
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final int mo3152a(zzky zzkyVar, zzgw zzgwVar) {
        String str = zzgwVar.zzafe;
        if (!zzof.zzbh(str)) {
            return 0;
        }
        int i = zzoq.SDK_INT >= 21 ? 16 : 0;
        int i2 = 3;
        if (m3233a(str) && zzkyVar.zzhb() != null) {
            return i | 4 | 3;
        }
        zzkt zzb = zzkyVar.zzb(str, false);
        if (zzb == null) {
            return 1;
        }
        boolean z = true;
        if (zzoq.SDK_INT >= 21) {
            if (zzgwVar.zzafp == -1 || zzb.zzaq(zzgwVar.zzafp)) {
                z = true;
                if (zzgwVar.zzafo != -1) {
                    if (zzb.zzar(zzgwVar.zzafo)) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        if (!z) {
            i2 = 2;
        }
        return i | 4 | i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    public final zzkt mo3196a(zzky zzkyVar, zzgw zzgwVar, boolean z) {
        zzkt zzhb;
        if (!m3233a(zzgwVar.zzafe) || (zzhb = zzkyVar.zzhb()) == null) {
            this.f14916d = false;
            return super.mo3196a(zzkyVar, zzgwVar, z);
        }
        this.f14916d = true;
        return zzhb;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzgj
    /* renamed from: a */
    public final void mo3161a() {
        super.mo3161a();
        this.f14915c.play();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzgj
    /* renamed from: a */
    public final void mo3159a(long j, boolean z) {
        super.mo3159a(j, z);
        this.f14915c.reset();
        this.f14921i = j;
        this.f14922j = true;
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final void mo3156a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int[] iArr;
        int i;
        int i2 = 0;
        boolean z = this.f14918f != null;
        String string = z ? this.f14918f.getString("mime") : "audio/raw";
        if (z) {
            mediaFormat = this.f14918f;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (!this.f14917e || integer != 6 || (i = this.f14920h) >= 6) {
            iArr = null;
        } else {
            int[] iArr2 = new int[i];
            while (true) {
                iArr = iArr2;
                if (i2 < this.f14920h) {
                    iArr2[i2] = i2;
                    i2++;
                }
            }
        }
        try {
            this.f14915c.zza(string, integer, integer2, this.f14919g, 0, iArr);
        } catch (zzia e) {
            throw zzgl.zza(e, m3252e());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    public final void mo3155a(zzgw zzgwVar) {
        super.mo3155a(zzgwVar);
        this.f14914b.zzc(zzgwVar);
        this.f14919g = "audio/raw".equals(zzgwVar.zzafe) ? zzgwVar.zzafq : 2;
        this.f14920h = zzgwVar.zzafo;
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final void mo3153a(zzkt zzktVar, MediaCodec mediaCodec, zzgw zzgwVar) {
        this.f14917e = zzoq.SDK_INT < 24 && "OMX.SEC.aac.dec".equals(zzktVar.name) && "samsung".equals(zzoq.MANUFACTURER) && (zzoq.DEVICE.startsWith("zeroflte") || zzoq.DEVICE.startsWith("herolte") || zzoq.DEVICE.startsWith("heroqlte"));
        if (this.f14916d) {
            this.f14918f = zzgwVar.zzeq();
            this.f14918f.setString("mime", "audio/raw");
            mediaCodec.configure(this.f14918f, (Surface) null, (MediaCrypto) null, 0);
            this.f14918f.setString("mime", zzgwVar.zzafe);
            return;
        }
        mediaCodec.configure(zzgwVar.zzeq(), (Surface) null, (MediaCrypto) null, 0);
        this.f14918f = null;
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final void mo3150a(String str, long j, long j2) {
        this.f14914b.zzb(str, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzgj
    /* renamed from: a */
    public final void mo3149a(boolean z) {
        super.mo3149a(z);
        this.f14914b.zzc(this.f15066a);
        int i = m3253d().zzagh;
        zzhw zzhwVar = this.f14915c;
        if (i != 0) {
            zzhwVar.zzt(i);
        } else {
            zzhwVar.zzfj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: a */
    protected final boolean mo3160a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        if (this.f14916d && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.f15066a.zzamj++;
            this.f14915c.zzfe();
            return true;
        } else {
            try {
                if (!this.f14915c.zza(byteBuffer, j3)) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                this.f15066a.zzami++;
                return true;
            } catch (zzid | zzie e) {
                throw zzgl.zza(e, m3252e());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzgj
    /* renamed from: b */
    public final void mo3146b() {
        this.f14915c.pause();
        super.mo3146b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzgj
    /* renamed from: c */
    public final void mo3140c() {
        try {
            this.f14915c.release();
            try {
                super.mo3140c();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo3140c();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzhf
    public final boolean isReady() {
        return this.f14915c.zzfh() || super.isReady();
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    /* renamed from: j */
    protected final void mo3193j() {
        try {
            this.f14915c.zzff();
        } catch (zzie e) {
            throw zzgl.zza(e, m3252e());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgj, com.google.android.gms.internal.ads.zzgm
    public final void zza(int i, Object obj) {
        if (i == 2) {
            this.f14915c.setVolume(((Float) obj).floatValue());
        } else if (i != 3) {
            super.zza(i, obj);
        } else {
            this.f14915c.setStreamType(((Integer) obj).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final zzhc zzb(zzhc zzhcVar) {
        return this.f14915c.zzb(zzhcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgj, com.google.android.gms.internal.ads.zzhf
    public final zzog zzdq() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzkw, com.google.android.gms.internal.ads.zzhf
    public final boolean zzeu() {
        return super.zzeu() && this.f14915c.zzeu();
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final zzhc zzfi() {
        return this.f14915c.zzfi();
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final long zzfp() {
        long zzj = this.f14915c.zzj(zzeu());
        if (zzj != Long.MIN_VALUE) {
            if (!this.f14922j) {
                zzj = Math.max(this.f14921i, zzj);
            }
            this.f14921i = zzj;
            this.f14922j = false;
        }
        return this.f14921i;
    }
}
