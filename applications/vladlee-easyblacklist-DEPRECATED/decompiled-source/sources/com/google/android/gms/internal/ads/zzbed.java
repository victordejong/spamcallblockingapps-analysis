package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbed.class */
public final class zzbed extends zzxe {

    /* renamed from: a */
    private final zzbaz f11764a;

    /* renamed from: c */
    private final boolean f11766c;

    /* renamed from: d */
    private final boolean f11767d;

    /* renamed from: e */
    private int f11768e;

    /* renamed from: f */
    private zzxg f11769f;

    /* renamed from: g */
    private boolean f11770g;

    /* renamed from: i */
    private float f11772i;

    /* renamed from: j */
    private float f11773j;

    /* renamed from: k */
    private float f11774k;

    /* renamed from: l */
    private boolean f11775l;

    /* renamed from: m */
    private boolean f11776m;

    /* renamed from: b */
    private final Object f11765b = new Object();

    /* renamed from: h */
    private boolean f11771h = true;

    public zzbed(zzbaz zzbazVar, float f, boolean z, boolean z2) {
        this.f11764a = zzbazVar;
        this.f11772i = f;
        this.f11766c = z;
        this.f11767d = z2;
    }

    /* renamed from: a */
    private final void m4108a(String str, Map<String, String> map) {
        final HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        zzazd.zzdwi.execute(new Runnable(this, hashMap) { // from class: com.google.android.gms.internal.ads.je

            /* renamed from: a */
            private final zzbed f8723a;

            /* renamed from: b */
            private final Map f8724b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8723a = this;
                this.f8724b = hashMap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8723a.m4107a(this.f8724b);
            }
        });
    }

    /* renamed from: b */
    private final void m4106b(final int i, final int i2, final boolean z, final boolean z2) {
        zzazd.zzdwi.execute(new Runnable(this, i, i2, z, z2) { // from class: com.google.android.gms.internal.ads.jf

            /* renamed from: a */
            private final zzbed f8725a;

            /* renamed from: b */
            private final int f8726b;

            /* renamed from: c */
            private final int f8727c;

            /* renamed from: d */
            private final boolean f8728d;

            /* renamed from: e */
            private final boolean f8729e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8725a = this;
                this.f8726b = i;
                this.f8727c = i2;
                this.f8728d = z;
                this.f8729e = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8725a.m4109a(this.f8726b, this.f8727c, this.f8728d, this.f8729e);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4109a(int i, int i2, boolean z, boolean z2) {
        synchronized (this.f11765b) {
            boolean z3 = false;
            boolean z4 = i != i2;
            boolean z5 = !this.f11770g && i2 == 1;
            boolean z6 = z4 && i2 == 1;
            boolean z7 = z4 && i2 == 2;
            boolean z8 = z4 && i2 == 3;
            boolean z9 = z != z2;
            if (this.f11770g || z5) {
                z3 = true;
            }
            this.f11770g = z3;
            if (z5) {
                try {
                    if (this.f11769f != null) {
                        this.f11769f.onVideoStart();
                    }
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
            if (z6 && this.f11769f != null) {
                this.f11769f.onVideoPlay();
            }
            if (z7 && this.f11769f != null) {
                this.f11769f.onVideoPause();
            }
            if (z8) {
                if (this.f11769f != null) {
                    this.f11769f.onVideoEnd();
                }
                this.f11764a.zzyu();
            }
            if (z9 && this.f11769f != null) {
                this.f11769f.onVideoMute(z2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4107a(Map map) {
        this.f11764a.zza("pubVideoCmd", map);
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final float getAspectRatio() {
        float f;
        synchronized (this.f11765b) {
            f = this.f11774k;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final int getPlaybackState() {
        int i;
        synchronized (this.f11765b) {
            i = this.f11768e;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final boolean isClickToExpandEnabled() {
        boolean z;
        boolean isCustomControlsEnabled = isCustomControlsEnabled();
        synchronized (this.f11765b) {
            if (!isCustomControlsEnabled) {
                if (this.f11776m && this.f11767d) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final boolean isCustomControlsEnabled() {
        boolean z;
        synchronized (this.f11765b) {
            z = this.f11766c && this.f11775l;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final boolean isMuted() {
        boolean z;
        synchronized (this.f11765b) {
            z = this.f11771h;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void mute(boolean z) {
        m4108a(z ? "mute" : "unmute", null);
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void pause() {
        m4108a("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void play() {
        m4108a("play", null);
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void stop() {
        m4108a("stop", null);
    }

    public final void zza(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        int i2;
        synchronized (this.f11765b) {
            this.f11772i = f2;
            this.f11773j = f;
            z2 = this.f11771h;
            this.f11771h = z;
            i2 = this.f11768e;
            this.f11768e = i;
            float f4 = this.f11774k;
            this.f11774k = f3;
            if (Math.abs(this.f11774k - f4) > 1.0E-4f) {
                this.f11764a.getView().invalidate();
            }
        }
        m4106b(i2, i, z2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void zza(zzxg zzxgVar) {
        synchronized (this.f11765b) {
            this.f11769f = zzxgVar;
        }
    }

    public final void zzabo() {
        boolean z;
        int i;
        synchronized (this.f11765b) {
            z = this.f11771h;
            i = this.f11768e;
            this.f11768e = 3;
        }
        m4106b(i, 3, z, z);
    }

    public final void zzb(zzyw zzywVar) {
        boolean z = zzywVar.zzabv;
        boolean z2 = zzywVar.zzabw;
        boolean z3 = zzywVar.zzabx;
        synchronized (this.f11765b) {
            this.f11775l = z2;
            this.f11776m = z3;
        }
        m4108a("initialState", CollectionUtils.mapOf("muteStart", z ? "1" : "0", "customControlsRequested", z2 ? "1" : "0", "clickToExpandRequested", z3 ? "1" : "0"));
    }

    public final void zze(float f) {
        synchronized (this.f11765b) {
            this.f11773j = f;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final float zzpk() {
        float f;
        synchronized (this.f11765b) {
            f = this.f11772i;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final float zzpl() {
        float f;
        synchronized (this.f11765b) {
            f = this.f11773j;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final zzxg zzpm() {
        zzxg zzxgVar;
        synchronized (this.f11765b) {
            zzxgVar = this.f11769f;
        }
        return zzxgVar;
    }
}
