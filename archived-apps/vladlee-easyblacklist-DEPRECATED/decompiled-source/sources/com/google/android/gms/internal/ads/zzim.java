package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzim.class */
public final class zzim implements zzhm {

    /* renamed from: c */
    private amz f14925c;

    /* renamed from: i */
    private long f14931i;

    /* renamed from: j */
    private long f14932j;

    /* renamed from: k */
    private boolean f14933k;

    /* renamed from: d */
    private float f14926d = 1.0f;

    /* renamed from: e */
    private float f14927e = 1.0f;

    /* renamed from: a */
    private int f14923a = -1;

    /* renamed from: b */
    private int f14924b = -1;

    /* renamed from: f */
    private ByteBuffer f14928f = zzaha;

    /* renamed from: g */
    private ShortBuffer f14929g = this.f14928f.asShortBuffer();

    /* renamed from: h */
    private ByteBuffer f14930h = zzaha;

    @Override // com.google.android.gms.internal.ads.zzhm
    public final void flush() {
        this.f14925c = new amz(this.f14924b, this.f14923a);
        this.f14925c.m4885a(this.f14926d);
        this.f14925c.m4878b(this.f14927e);
        this.f14930h = zzaha;
        this.f14931i = 0L;
        this.f14932j = 0L;
        this.f14933k = false;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final boolean isActive() {
        return Math.abs(this.f14926d - 1.0f) >= 0.01f || Math.abs(this.f14927e - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final void reset() {
        this.f14925c = null;
        this.f14928f = zzaha;
        this.f14929g = this.f14928f.asShortBuffer();
        this.f14930h = zzaha;
        this.f14923a = -1;
        this.f14924b = -1;
        this.f14931i = 0L;
        this.f14932j = 0L;
        this.f14933k = false;
    }

    public final float zza(float f) {
        this.f14926d = zzoq.zza(f, 0.1f, 8.0f);
        return this.f14926d;
    }

    public final float zzb(float f) {
        this.f14927e = zzoq.zza(f, 0.1f, 8.0f);
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final boolean zzb(int i, int i2, int i3) {
        if (i3 != 2) {
            throw new zzhp(i, i2, i3);
        } else if (this.f14924b == i && this.f14923a == i2) {
            return false;
        } else {
            this.f14924b = i;
            this.f14923a = i2;
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final boolean zzeu() {
        if (!this.f14933k) {
            return false;
        }
        amz amzVar = this.f14925c;
        return amzVar == null || amzVar.m4879b() == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final int zzez() {
        return this.f14923a;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final int zzfa() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final void zzfb() {
        this.f14925c.m4886a();
        this.f14933k = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final ByteBuffer zzfc() {
        ByteBuffer byteBuffer = this.f14930h;
        this.f14930h = zzaha;
        return byteBuffer;
    }

    public final long zzfv() {
        return this.f14931i;
    }

    public final long zzfw() {
        return this.f14932j;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final void zzi(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f14931i += remaining;
            this.f14925c.m4882a(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int b = (this.f14925c.m4879b() * this.f14923a) << 1;
        if (b > 0) {
            if (this.f14928f.capacity() < b) {
                this.f14928f = ByteBuffer.allocateDirect(b).order(ByteOrder.nativeOrder());
                this.f14929g = this.f14928f.asShortBuffer();
            } else {
                this.f14928f.clear();
                this.f14929g.clear();
            }
            this.f14925c.m4876b(this.f14929g);
            this.f14932j += b;
            this.f14928f.limit(b);
            this.f14930h = this.f14928f;
        }
    }
}
