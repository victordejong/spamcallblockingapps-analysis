package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbk.class */
public final class zzbk extends zzdwn {

    /* renamed from: b */
    private Date f12016b;

    /* renamed from: c */
    private Date f12017c;

    /* renamed from: d */
    private long f12018d;

    /* renamed from: e */
    private long f12019e;

    /* renamed from: f */
    private double f12020f = 1.0d;

    /* renamed from: g */
    private float f12021g = 1.0f;

    /* renamed from: h */
    private zzdwx f12022h = zzdwx.zzhzt;

    /* renamed from: i */
    private long f12023i;

    /* renamed from: j */
    private int f12024j;

    /* renamed from: k */
    private int f12025k;

    /* renamed from: l */
    private int f12026l;

    /* renamed from: m */
    private int f12027m;

    /* renamed from: n */
    private int f12028n;

    /* renamed from: o */
    private int f12029o;

    public zzbk() {
        super("mvhd");
    }

    public final long getDuration() {
        return this.f12019e;
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.f12016b + ";modificationTime=" + this.f12017c + ";timescale=" + this.f12018d + ";duration=" + this.f12019e + ";rate=" + this.f12020f + ";volume=" + this.f12021g + ";matrix=" + this.f12022h + ";nextTrackId=" + this.f12023i + "]";
    }

    @Override // com.google.android.gms.internal.ads.zzdwl
    public final void zzg(ByteBuffer byteBuffer) {
        long j;
        m3298a(byteBuffer);
        if (getVersion() == 1) {
            this.f12016b = zzdwu.zzfv(zzbg.zzc(byteBuffer));
            this.f12017c = zzdwu.zzfv(zzbg.zzc(byteBuffer));
            this.f12018d = zzbg.zza(byteBuffer);
            j = zzbg.zzc(byteBuffer);
        } else {
            this.f12016b = zzdwu.zzfv(zzbg.zza(byteBuffer));
            this.f12017c = zzdwu.zzfv(zzbg.zza(byteBuffer));
            this.f12018d = zzbg.zza(byteBuffer);
            j = zzbg.zza(byteBuffer);
        }
        this.f12019e = j;
        this.f12020f = zzbg.zzd(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.f12021g = ((short) ((bArr[1] & 255) | ((short) (0 | ((bArr[0] << 8) & 65280))))) / 256.0f;
        zzbg.zzb(byteBuffer);
        zzbg.zza(byteBuffer);
        zzbg.zza(byteBuffer);
        this.f12022h = zzdwx.zzp(byteBuffer);
        this.f12024j = byteBuffer.getInt();
        this.f12025k = byteBuffer.getInt();
        this.f12026l = byteBuffer.getInt();
        this.f12027m = byteBuffer.getInt();
        this.f12028n = byteBuffer.getInt();
        this.f12029o = byteBuffer.getInt();
        this.f12023i = zzbg.zza(byteBuffer);
    }

    public final long zzr() {
        return this.f12018d;
    }
}
