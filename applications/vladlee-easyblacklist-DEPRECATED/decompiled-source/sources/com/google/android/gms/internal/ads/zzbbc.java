package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.zzq;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbc.class */
public final class zzbbc extends zzbag implements TextureView.SurfaceTextureListener, zzbca {

    /* renamed from: c */
    private final zzbaz f11655c;

    /* renamed from: d */
    private final zzbay f11656d;

    /* renamed from: e */
    private final boolean f11657e;

    /* renamed from: f */
    private final zzbaw f11658f;

    /* renamed from: g */
    private zzbah f11659g;

    /* renamed from: h */
    private Surface f11660h;

    /* renamed from: i */
    private zzbbs f11661i;

    /* renamed from: j */
    private String f11662j;

    /* renamed from: k */
    private String[] f11663k;

    /* renamed from: l */
    private boolean f11664l;

    /* renamed from: m */
    private int f11665m = 1;

    /* renamed from: n */
    private zzbax f11666n;

    /* renamed from: o */
    private final boolean f11667o;

    /* renamed from: p */
    private boolean f11668p;

    /* renamed from: q */
    private boolean f11669q;

    /* renamed from: r */
    private int f11670r;

    /* renamed from: s */
    private int f11671s;

    /* renamed from: t */
    private int f11672t;

    /* renamed from: u */
    private int f11673u;

    /* renamed from: v */
    private float f11674v;

    public zzbbc(Context context, zzbay zzbayVar, zzbaz zzbazVar, boolean z, boolean z2, zzbaw zzbawVar) {
        super(context);
        this.f11657e = z2;
        this.f11655c = zzbazVar;
        this.f11656d = zzbayVar;
        this.f11667o = z;
        this.f11658f = zzbawVar;
        setSurfaceTextureListener(this);
        this.f11656d.zzb(this);
    }

    /* renamed from: a */
    private final void m4163a(float f, boolean z) {
        zzbbs zzbbsVar = this.f11661i;
        if (zzbbsVar != null) {
            zzbbsVar.m4142a(f, z);
        } else {
            zzavs.zzez("Trying to set volume before player is initalized.");
        }
    }

    /* renamed from: a */
    private final void m4160a(Surface surface, boolean z) {
        zzbbs zzbbsVar = this.f11661i;
        if (zzbbsVar != null) {
            zzbbsVar.m4140a(surface, z);
        } else {
            zzavs.zzez("Trying to set surface before player is initalized.");
        }
    }

    /* renamed from: b */
    private final void m4156b(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.f11674v != f) {
            this.f11674v = f;
            requestLayout();
        }
    }

    /* renamed from: g */
    private final zzbbs m4151g() {
        return new zzbbs(this.f11655c.getContext(), this.f11658f);
    }

    /* renamed from: h */
    private final String m4150h() {
        return zzq.zzkq().zzr(this.f11655c.getContext(), this.f11655c.zzyr().zzbma);
    }

    /* renamed from: i */
    private final boolean m4149i() {
        return this.f11661i != null && !this.f11664l;
    }

    /* renamed from: j */
    private final boolean m4148j() {
        return m4149i() && this.f11665m != 1;
    }

    /* renamed from: k */
    private final void m4147k() {
        String str;
        if (this.f11661i == null && (str = this.f11662j) != null && this.f11660h != null) {
            if (str.startsWith("cache:")) {
                zzbcn zzfe = this.f11655c.zzfe(this.f11662j);
                if (zzfe instanceof zzbcy) {
                    this.f11661i = ((zzbcy) zzfe).zzzr();
                } else if (zzfe instanceof zzbcz) {
                    zzbcz zzbczVar = (zzbcz) zzfe;
                    String h = m4150h();
                    ByteBuffer byteBuffer = zzbczVar.getByteBuffer();
                    boolean zzzs = zzbczVar.zzzs();
                    String url = zzbczVar.getUrl();
                    if (url == null) {
                        zzavs.zzez("Stream cache URL is null.");
                        return;
                    } else {
                        this.f11661i = m4151g();
                        this.f11661i.zza(new Uri[]{Uri.parse(url)}, h, byteBuffer, zzzs);
                    }
                } else {
                    String valueOf = String.valueOf(this.f11662j);
                    zzavs.zzez(valueOf.length() != 0 ? "Stream cache miss: ".concat(valueOf) : new String("Stream cache miss: "));
                    return;
                }
            } else {
                this.f11661i = m4151g();
                String h2 = m4150h();
                Uri[] uriArr = new Uri[this.f11663k.length];
                int i = 0;
                while (true) {
                    String[] strArr = this.f11663k;
                    if (i >= strArr.length) {
                        break;
                    }
                    uriArr[i] = Uri.parse(strArr[i]);
                    i++;
                }
                this.f11661i.zza(uriArr, h2);
            }
            this.f11661i.zza(this);
            m4160a(this.f11660h, false);
            this.f11665m = this.f11661i.zzzm().getPlaybackState();
            if (this.f11665m == 3) {
                m4146l();
            }
        }
    }

    /* renamed from: l */
    private final void m4146l() {
        if (!this.f11668p) {
            this.f11668p = true;
            zzawb.zzdsr.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.hf

                /* renamed from: a */
                private final zzbbc f8535a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8535a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f8535a.m4152f();
                }
            });
            zzxs();
            this.f11656d.zzer();
            if (this.f11669q) {
                play();
            }
        }
    }

    /* renamed from: m */
    private final void m4145m() {
        m4156b(this.f11670r, this.f11671s);
    }

    /* renamed from: n */
    private final void m4144n() {
        zzbbs zzbbsVar = this.f11661i;
        if (zzbbsVar != null) {
            zzbbsVar.m4137a(true);
        }
    }

    /* renamed from: o */
    private final void m4143o() {
        zzbbs zzbbsVar = this.f11661i;
        if (zzbbsVar != null) {
            zzbbsVar.m4137a(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4164a() {
        zzbah zzbahVar = this.f11659g;
        if (zzbahVar != null) {
            zzbahVar.zzxw();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4162a(int i) {
        zzbah zzbahVar = this.f11659g;
        if (zzbahVar != null) {
            zzbahVar.onWindowVisibilityChanged(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4161a(int i, int i2) {
        zzbah zzbahVar = this.f11659g;
        if (zzbahVar != null) {
            zzbahVar.zzk(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4159a(String str) {
        zzbah zzbahVar = this.f11659g;
        if (zzbahVar != null) {
            zzbahVar.zzm("ExoPlayerAdapter error", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4158a(boolean z, long j) {
        this.f11655c.zza(z, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m4157b() {
        zzbah zzbahVar = this.f11659g;
        if (zzbahVar != null) {
            zzbahVar.zzxt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ void m4155c() {
        zzbah zzbahVar = this.f11659g;
        if (zzbahVar != null) {
            zzbahVar.onPaused();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final /* synthetic */ void m4154d() {
        zzbah zzbahVar = this.f11659g;
        if (zzbahVar != null) {
            zzbahVar.zzxu();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final /* synthetic */ void m4153e() {
        zzbah zzbahVar = this.f11659g;
        if (zzbahVar != null) {
            zzbahVar.zzxv();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final /* synthetic */ void m4152f() {
        zzbah zzbahVar = this.f11659g;
        if (zzbahVar != null) {
            zzbahVar.zzer();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final int getCurrentPosition() {
        if (m4148j()) {
            return (int) this.f11661i.zzzm().zzec();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final int getDuration() {
        if (m4148j()) {
            return (int) this.f11661i.zzzm().getDuration();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final int getVideoHeight() {
        return this.f11671s;
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final int getVideoWidth() {
        return this.f11670r;
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.f11674v;
        int i4 = measuredWidth;
        int i5 = measuredHeight;
        if (f != 0.0f) {
            i4 = measuredWidth;
            i5 = measuredHeight;
            if (this.f11666n == null) {
                float f2 = measuredWidth;
                float f3 = f2 / measuredHeight;
                if (f > f3) {
                    measuredHeight = (int) (f2 / f);
                }
                float f4 = this.f11674v;
                i4 = measuredWidth;
                i5 = measuredHeight;
                if (f4 < f3) {
                    i4 = (int) (measuredHeight * f4);
                    i5 = measuredHeight;
                }
            }
        }
        setMeasuredDimension(i4, i5);
        zzbax zzbaxVar = this.f11666n;
        if (zzbaxVar != null) {
            zzbaxVar.zzm(i4, i5);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i6 = this.f11672t;
            if (((i6 > 0 && i6 != i4) || ((i3 = this.f11673u) > 0 && i3 != i5)) && this.f11657e && m4149i()) {
                zzgk zzzm = this.f11661i.zzzm();
                if (zzzm.zzec() > 0 && !zzzm.zzea()) {
                    m4163a(0.0f, true);
                    zzzm.zzf(true);
                    long zzec = zzzm.zzec();
                    long currentTimeMillis = zzq.zzkx().currentTimeMillis();
                    while (m4149i() && zzzm.zzec() == zzec && zzq.zzkx().currentTimeMillis() - currentTimeMillis <= 250) {
                    }
                    zzzm.zzf(false);
                    zzxs();
                }
            }
            this.f11672t = i4;
            this.f11673u = i5;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        SurfaceTexture surfaceTexture2 = surfaceTexture;
        if (this.f11667o) {
            this.f11666n = new zzbax(getContext());
            this.f11666n.zza(surfaceTexture, i, i2);
            this.f11666n.start();
            surfaceTexture2 = this.f11666n.zzyg();
            if (surfaceTexture2 == null) {
                this.f11666n.zzyf();
                this.f11666n = null;
                surfaceTexture2 = surfaceTexture;
            }
        }
        this.f11660h = new Surface(surfaceTexture2);
        if (this.f11661i == null) {
            m4147k();
        } else {
            m4160a(this.f11660h, true);
            if (!this.f11658f.zzdze) {
                m4144n();
            }
        }
        if (this.f11670r == 0 || this.f11671s == 0) {
            m4156b(i, i2);
        } else {
            m4145m();
        }
        zzawb.zzdsr.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.hi

            /* renamed from: a */
            private final zzbbc f8539a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8539a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8539a.m4157b();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        pause();
        zzbax zzbaxVar = this.f11666n;
        if (zzbaxVar != null) {
            zzbaxVar.zzyf();
            this.f11666n = null;
        }
        if (this.f11661i != null) {
            m4143o();
            Surface surface = this.f11660h;
            if (surface != null) {
                surface.release();
            }
            this.f11660h = null;
            m4160a((Surface) null, true);
        }
        zzawb.zzdsr.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.hk

            /* renamed from: a */
            private final zzbbc f8541a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8541a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8541a.m4164a();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        zzbax zzbaxVar = this.f11666n;
        if (zzbaxVar != null) {
            zzbaxVar.zzm(i, i2);
        }
        zzawb.zzdsr.post(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.hl

            /* renamed from: a */
            private final zzbbc f8542a;

            /* renamed from: b */
            private final int f8543b;

            /* renamed from: c */
            private final int f8544c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8542a = this;
                this.f8543b = i;
                this.f8544c = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8542a.m4161a(this.f8543b, this.f8544c);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f11656d.zzc(this);
        this.f11577a.zza(surfaceTexture, this.f11659g);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        zzavs.zzed(sb.toString());
        zzawb.zzdsr.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.hn

            /* renamed from: a */
            private final zzbbc f8548a;

            /* renamed from: b */
            private final int f8549b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8548a = this;
                this.f8549b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8548a.m4162a(this.f8549b);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void pause() {
        if (m4148j()) {
            if (this.f11658f.zzdze) {
                m4143o();
            }
            this.f11661i.zzzm().zzf(false);
            this.f11656d.zzyj();
            this.f11578b.zzyj();
            zzawb.zzdsr.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.hj

                /* renamed from: a */
                private final zzbbc f8540a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8540a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f8540a.m4155c();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void play() {
        if (m4148j()) {
            if (this.f11658f.zzdze) {
                m4144n();
            }
            this.f11661i.zzzm().zzf(true);
            this.f11656d.zzyi();
            this.f11578b.zzyi();
            this.f11577a.zzxu();
            zzawb.zzdsr.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.hg

                /* renamed from: a */
                private final zzbbc f8536a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8536a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f8536a.m4154d();
                }
            });
            return;
        }
        this.f11669q = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void seekTo(int i) {
        if (m4148j()) {
            this.f11661i.zzzm().seekTo(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void setVideoPath(String str) {
        if (str != null) {
            this.f11662j = str;
            this.f11663k = new String[]{str};
            m4147k();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void stop() {
        if (m4149i()) {
            this.f11661i.zzzm().stop();
            if (this.f11661i != null) {
                m4160a((Surface) null, true);
                zzbbs zzbbsVar = this.f11661i;
                if (zzbbsVar != null) {
                    zzbbsVar.zza((zzbca) null);
                    this.f11661i.release();
                    this.f11661i = null;
                }
                this.f11665m = 1;
                this.f11664l = false;
                this.f11668p = false;
                this.f11669q = false;
            }
        }
        this.f11656d.zzyj();
        this.f11578b.zzyj();
        this.f11656d.onStop();
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void zza(float f, float f2) {
        zzbax zzbaxVar = this.f11666n;
        if (zzbaxVar != null) {
            zzbaxVar.zzb(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void zza(zzbah zzbahVar) {
        this.f11659g = zzbahVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbca
    public final void zza(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        final String sb2 = sb.toString();
        String valueOf = String.valueOf(sb2);
        zzavs.zzez(valueOf.length() != 0 ? "ExoPlayerAdapter error: ".concat(valueOf) : new String("ExoPlayerAdapter error: "));
        this.f11664l = true;
        if (this.f11658f.zzdze) {
            m4143o();
        }
        zzawb.zzdsr.post(new Runnable(this, sb2) { // from class: com.google.android.gms.internal.ads.hh

            /* renamed from: a */
            private final zzbbc f8537a;

            /* renamed from: b */
            private final String f8538b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8537a = this;
                this.f8538b = sb2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8537a.m4159a(this.f8538b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void zzb(String str, String[] strArr) {
        if (str != null) {
            if (strArr == null) {
                setVideoPath(str);
            }
            this.f11662j = str;
            this.f11663k = (String[]) Arrays.copyOf(strArr, strArr.length);
            m4147k();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbca
    public final void zzb(final boolean z, final long j) {
        if (this.f11655c != null) {
            zzazd.zzdwi.execute(new Runnable(this, z, j) { // from class: com.google.android.gms.internal.ads.hm

                /* renamed from: a */
                private final zzbbc f8545a;

                /* renamed from: b */
                private final boolean f8546b;

                /* renamed from: c */
                private final long f8547c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8545a = this;
                    this.f8546b = z;
                    this.f8547c = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f8545a.m4158a(this.f8546b, this.f8547c);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void zzcv(int i) {
        zzbbs zzbbsVar = this.f11661i;
        if (zzbbsVar != null) {
            zzbbsVar.zzzp().zzdc(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void zzcw(int i) {
        zzbbs zzbbsVar = this.f11661i;
        if (zzbbsVar != null) {
            zzbbsVar.zzzp().zzdd(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void zzcx(int i) {
        zzbbs zzbbsVar = this.f11661i;
        if (zzbbsVar != null) {
            zzbbsVar.zzzp().zzcx(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void zzcy(int i) {
        zzbbs zzbbsVar = this.f11661i;
        if (zzbbsVar != null) {
            zzbbsVar.zzzp().zzcy(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void zzcz(int i) {
        zzbbs zzbbsVar = this.f11661i;
        if (zzbbsVar != null) {
            zzbbsVar.zzcz(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbca
    public final void zzda(int i) {
        if (this.f11665m != i) {
            this.f11665m = i;
            if (i == 3) {
                m4146l();
            } else if (i == 4) {
                if (this.f11658f.zzdze) {
                    m4143o();
                }
                this.f11656d.zzyj();
                this.f11578b.zzyj();
                zzawb.zzdsr.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.he

                    /* renamed from: a */
                    private final zzbbc f8534a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8534a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f8534a.m4153e();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbca
    public final void zzn(int i, int i2) {
        this.f11670r = i;
        this.f11671s = i2;
        m4145m();
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final String zzxo() {
        String str = this.f11667o ? " spherical" : "";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzbag, com.google.android.gms.internal.ads.AbstractC1920hd
    public final void zzxs() {
        m4163a(this.f11578b.getVolume(), false);
    }
}
