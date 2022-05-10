package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.internal.ads.zzbhd;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhd.class */
public final class zzbhd extends zzyr {

    /* renamed from: a */
    public final zzbdu f24983a;

    /* renamed from: c */
    public final boolean f24985c;

    /* renamed from: d */
    public final boolean f24986d;

    /* renamed from: e */
    public int f24987e;

    /* renamed from: f */
    public zzyt f24988f;

    /* renamed from: g */
    public boolean f24989g;

    /* renamed from: i */
    public float f24991i;

    /* renamed from: j */
    public float f24992j;

    /* renamed from: k */
    public float f24993k;

    /* renamed from: l */
    public boolean f24994l;

    /* renamed from: m */
    public boolean f24995m;

    /* renamed from: n */
    public zzafq f24996n;

    /* renamed from: b */
    public final Object f24984b = new Object();

    /* renamed from: h */
    public boolean f24990h = true;

    public zzbhd(zzbdu zzbduVar, float f, boolean z, boolean z2) {
        this.f24983a = zzbduVar;
        this.f24991i = f;
        this.f24985c = z;
        this.f24986d = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: F0 */
    public final boolean mo11112F0() {
        boolean z;
        synchronized (this.f24984b) {
            z = this.f24990h;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: M1 */
    public final boolean mo11111M1() {
        boolean z;
        synchronized (this.f24984b) {
            z = this.f24985c && this.f24994l;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: P */
    public final int mo11110P() {
        int i;
        synchronized (this.f24984b) {
            i = this.f24987e;
        }
        return i;
    }

    /* renamed from: Q1 */
    public final void m15539Q1() {
        boolean z;
        int i;
        synchronized (this.f24984b) {
            z = this.f24990h;
            i = this.f24987e;
            this.f24987e = 3;
        }
        m15537a(i, 3, z, z);
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: S */
    public final void mo11109S() {
        m15535a("play", null);
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: X */
    public final float mo11108X() {
        float f;
        synchronized (this.f24984b) {
            f = this.f24993k;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: Y0 */
    public final zzyt mo11107Y0() throws RemoteException {
        zzyt zzytVar;
        synchronized (this.f24984b) {
            zzytVar = this.f24988f;
        }
        return zzytVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0061 A[Catch: all -> 0x009d, TryCatch #1 {, blocks: (B:4:0x0009, B:6:0x0012, B:11:0x0028, B:13:0x0061, B:15:0x006f), top: B:32:0x0009 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m15538a(float r7, float r8, int r9, boolean r10, float r11) {
        /*
            r6 = this;
            r0 = r6
            java.lang.Object r0 = r0.f24984b
            r12 = r0
            r0 = r12
            monitor-enter(r0)
            r0 = r8
            r1 = r6
            float r1 = r1.f24991i     // Catch: all -> 0x009d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0025
            r0 = r11
            r1 = r6
            float r1 = r1.f24993k     // Catch: all -> 0x009d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x001f
            goto L_0x0025
        L_0x001f:
            r0 = 0
            r13 = r0
            goto L_0x0028
        L_0x0025:
            r0 = 1
            r13 = r0
        L_0x0028:
            r0 = r6
            r1 = r8
            r0.f24991i = r1     // Catch: all -> 0x009d
            r0 = r6
            r1 = r7
            r0.f24992j = r1     // Catch: all -> 0x009d
            r0 = r6
            boolean r0 = r0.f24990h     // Catch: all -> 0x009d
            r14 = r0
            r0 = r6
            r1 = r10
            r0.f24990h = r1     // Catch: all -> 0x009d
            r0 = r6
            int r0 = r0.f24987e     // Catch: all -> 0x009d
            r15 = r0
            r0 = r6
            r1 = r9
            r0.f24987e = r1     // Catch: all -> 0x009d
            r0 = r6
            float r0 = r0.f24993k     // Catch: all -> 0x009d
            r7 = r0
            r0 = r6
            r1 = r11
            r0.f24993k = r1     // Catch: all -> 0x009d
            r0 = r11
            r1 = r7
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)     // Catch: all -> 0x009d
            r1 = 953267991(0x38d1b717, float:1.0E-4)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x006d
            r0 = r6
            com.google.android.gms.internal.ads.zzbdu r0 = r0.f24983a     // Catch: all -> 0x009d
            android.view.View r0 = r0.getView()     // Catch: all -> 0x009d
            r0.invalidate()     // Catch: all -> 0x009d
        L_0x006d:
            r0 = r12
            monitor-exit(r0)     // Catch: all -> 0x009d
            r0 = r13
            if (r0 == 0) goto L_0x0091
            r0 = r6
            com.google.android.gms.internal.ads.zzafq r0 = r0.f24996n     // Catch: RemoteException -> 0x0088
            if (r0 == 0) goto L_0x0091
            r0 = r6
            com.google.android.gms.internal.ads.zzafq r0 = r0.f24996n     // Catch: RemoteException -> 0x0088
            r0.mo16800S0()     // Catch: RemoteException -> 0x0088
            goto L_0x0091
        L_0x0088:
            r16 = move-exception
            java.lang.String r0 = "#007 Could not call remote method."
            r1 = r16
            com.google.android.gms.internal.ads.zzbbq.m15851d(r0, r1)
        L_0x0091:
            r0 = r6
            r1 = r15
            r2 = r9
            r3 = r14
            r4 = r10
            r0.m15537a(r1, r2, r3, r4)
            return
        L_0x009d:
            r16 = move-exception
            r0 = r12
            monitor-exit(r0)     // Catch: all -> 0x009d
            r0 = r16
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbhd.m15538a(float, float, int, boolean, float):void");
    }

    /* renamed from: a */
    public final void m15537a(final int i, final int i2, final boolean z, final boolean z2) {
        zzbbz.f24768e.execute(new Runnable(this, i, i2, z, z2) { // from class: c.d.b.d.g.a.y9

            /* renamed from: a */
            public final zzbhd f16102a;

            /* renamed from: b */
            public final int f16103b;

            /* renamed from: c */
            public final int f16104c;

            /* renamed from: d */
            public final boolean f16105d;

            /* renamed from: e */
            public final boolean f16106e;

            {
                this.f16102a = this;
                this.f16103b = i;
                this.f16104c = i2;
                this.f16105d = z;
                this.f16106e = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16102a.m15532b(this.f16103b, this.f16104c, this.f16105d, this.f16106e);
            }
        });
    }

    /* renamed from: a */
    public final void m15536a(zzafq zzafqVar) {
        synchronized (this.f24984b) {
            this.f24996n = zzafqVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: a */
    public final void mo11106a(zzyt zzytVar) {
        synchronized (this.f24984b) {
            this.f24988f = zzytVar;
        }
    }

    /* renamed from: a */
    public final void m15535a(String str, Map<String, String> map) {
        final HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        zzbbz.f24768e.execute(new Runnable(this, hashMap) { // from class: c.d.b.d.g.a.x9

            /* renamed from: a */
            public final zzbhd f16007a;

            /* renamed from: b */
            public final Map f16008b;

            {
                this.f16007a = this;
                this.f16008b = hashMap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16007a.m15534a(this.f16008b);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m15534a(Map map) {
        this.f24983a.mo15577a("pubVideoCmd", map);
    }

    /* renamed from: b */
    public final void m15533b(float f) {
        synchronized (this.f24984b) {
            this.f24992j = f;
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m15532b(int i, int i2, boolean z, boolean z2) {
        synchronized (this.f24984b) {
            boolean z3 = false;
            boolean z4 = i != i2;
            boolean z5 = !this.f24989g && i2 == 1;
            boolean z6 = z4 && i2 == 1;
            boolean z7 = z4 && i2 == 2;
            boolean z8 = z4 && i2 == 3;
            boolean z9 = z != z2;
            if (this.f24989g || z5) {
                z3 = true;
            }
            this.f24989g = z3;
            if (z5) {
                try {
                    if (this.f24988f != null) {
                        this.f24988f.mo11097j0();
                    }
                } catch (RemoteException e) {
                    zzbbq.m15851d("#007 Could not call remote method.", e);
                }
            }
            if (z6 && this.f24988f != null) {
                this.f24988f.mo11096m0();
            }
            if (z7 && this.f24988f != null) {
                this.f24988f.mo11100a0();
            }
            if (z8) {
                if (this.f24988f != null) {
                    this.f24988f.mo11098h0();
                }
                this.f24983a.mo15550s();
            }
            if (z9 && this.f24988f != null) {
                this.f24988f.mo11099d(z2);
            }
        }
    }

    /* renamed from: b */
    public final void m15531b(zzaak zzaakVar) {
        boolean z = zzaakVar.f23630a;
        boolean z2 = zzaakVar.f23631b;
        boolean z3 = zzaakVar.f23632c;
        synchronized (this.f24984b) {
            this.f24994l = z2;
            this.f24995m = z3;
        }
        m15535a("initialState", CollectionUtils.m17099a("muteStart", z ? "1" : "0", "customControlsRequested", z2 ? "1" : "0", "clickToExpandRequested", z3 ? "1" : "0"));
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final float getDuration() {
        float f;
        synchronized (this.f24984b) {
            f = this.f24991i;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: h */
    public final void mo11105h(boolean z) {
        m15535a(z ? "mute" : "unmute", null);
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: i0 */
    public final float mo11104i0() {
        float f;
        synchronized (this.f24984b) {
            f = this.f24992j;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final void pause() {
        m15535a("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final void stop() {
        m15535a("stop", null);
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: x0 */
    public final boolean mo11103x0() {
        boolean z;
        boolean M1 = mo11111M1();
        synchronized (this.f24984b) {
            if (!M1) {
                if (this.f24995m && this.f24986d) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }
}
