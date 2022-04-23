package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amr.class */
class amr {

    /* renamed from: a */
    protected AudioTrack f7695a;

    /* renamed from: b */
    private boolean f7696b;

    /* renamed from: c */
    private int f7697c;

    /* renamed from: d */
    private long f7698d;

    /* renamed from: e */
    private long f7699e;

    /* renamed from: f */
    private long f7700f;

    /* renamed from: g */
    private long f7701g;

    /* renamed from: h */
    private long f7702h;

    /* renamed from: i */
    private long f7703i;

    private amr() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ amr(byte b) {
        this();
    }

    /* renamed from: a */
    public final void m4898a() {
        if (this.f7701g == -9223372036854775807L) {
            this.f7695a.pause();
        }
    }

    /* renamed from: a */
    public final void m4897a(long j) {
        this.f7702h = m4896b();
        this.f7701g = SystemClock.elapsedRealtime() * 1000;
        this.f7703i = j;
        this.f7695a.stop();
    }

    /* renamed from: a */
    public void mo4894a(AudioTrack audioTrack, boolean z) {
        this.f7695a = audioTrack;
        this.f7696b = z;
        this.f7701g = -9223372036854775807L;
        this.f7698d = 0L;
        this.f7699e = 0L;
        this.f7700f = 0L;
        if (audioTrack != null) {
            this.f7697c = audioTrack.getSampleRate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m4896b() {
        /*
            r7 = this;
            r0 = r7
            long r0 = r0.f7701g
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0030
            long r0 = android.os.SystemClock.elapsedRealtime()
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            r1 = r7
            long r1 = r1.f7701g
            long r0 = r0 - r1
            r1 = r7
            int r1 = r1.f7697c
            long r1 = (long) r1
            long r0 = r0 * r1
            r1 = 1000000(0xf4240, double:4.940656E-318)
            long r0 = r0 / r1
            r8 = r0
            r0 = r7
            long r0 = r0.f7703i
            r1 = r7
            long r1 = r1.f7702h
            r2 = r8
            long r1 = r1 + r2
            long r0 = java.lang.Math.min(r0, r1)
            return r0
        L_0x0030:
            r0 = r7
            android.media.AudioTrack r0 = r0.f7695a
            int r0 = r0.getPlayState()
            r10 = r0
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L_0x003f
            r0 = 0
            return r0
        L_0x003f:
            r0 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r1 = r7
            android.media.AudioTrack r1 = r1.f7695a
            int r1 = r1.getPlaybackHeadPosition()
            long r1 = (long) r1
            long r0 = r0 & r1
            r11 = r0
            r0 = r11
            r8 = r0
            r0 = r7
            boolean r0 = r0.f7696b
            if (r0 == 0) goto L_0x0073
            r0 = r10
            r1 = 2
            if (r0 != r1) goto L_0x006b
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006b
            r0 = r7
            r1 = r7
            long r1 = r1.f7698d
            r0.f7700f = r1
        L_0x006b:
            r0 = r11
            r1 = r7
            long r1 = r1.f7700f
            long r0 = r0 + r1
            r8 = r0
        L_0x0073:
            r0 = r7
            long r0 = r0.f7698d
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0086
            r0 = r7
            r1 = r7
            long r1 = r1.f7699e
            r2 = 1
            long r1 = r1 + r2
            r0.f7699e = r1
        L_0x0086:
            r0 = r7
            r1 = r8
            r0.f7698d = r1
            r0 = r8
            r1 = r7
            long r1 = r1.f7699e
            r2 = 32
            long r1 = r1 << r2
            long r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.amr.m4896b():long");
    }

    /* renamed from: c */
    public final long m4895c() {
        return (m4896b() * 1000000) / this.f7697c;
    }

    /* renamed from: d */
    public boolean mo4893d() {
        return false;
    }

    /* renamed from: e */
    public long mo4892e() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: f */
    public long mo4891f() {
        throw new UnsupportedOperationException();
    }
}
