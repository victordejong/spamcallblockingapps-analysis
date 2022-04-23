package com.google.android.gms.internal.ads;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amu.class */
final class amu extends amr {

    /* renamed from: b */
    private final AudioTimestamp f7707b = new AudioTimestamp();

    /* renamed from: c */
    private long f7708c;

    /* renamed from: d */
    private long f7709d;

    /* renamed from: e */
    private long f7710e;

    public amu() {
        super((byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.amr
    /* renamed from: a */
    public final void mo4894a(AudioTrack audioTrack, boolean z) {
        super.mo4894a(audioTrack, z);
        this.f7708c = 0L;
        this.f7709d = 0L;
        this.f7710e = 0L;
    }

    @Override // com.google.android.gms.internal.ads.amr
    /* renamed from: d */
    public final boolean mo4893d() {
        boolean timestamp = this.f7695a.getTimestamp(this.f7707b);
        if (timestamp) {
            long j = this.f7707b.framePosition;
            if (this.f7709d > j) {
                this.f7708c++;
            }
            this.f7709d = j;
            this.f7710e = j + (this.f7708c << 32);
        }
        return timestamp;
    }

    @Override // com.google.android.gms.internal.ads.amr
    /* renamed from: e */
    public final long mo4892e() {
        return this.f7707b.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.amr
    /* renamed from: f */
    public final long mo4891f() {
        return this.f7710e;
    }
}
