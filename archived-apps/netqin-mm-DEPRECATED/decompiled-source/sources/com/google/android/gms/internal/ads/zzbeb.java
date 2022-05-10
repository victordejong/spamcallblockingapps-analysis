package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzbeb;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbeb.class */
public final class zzbeb extends zzbdf implements TextureView.SurfaceTextureListener, zzbey {

    /* renamed from: c */
    public final zzbdu f24877c;

    /* renamed from: d */
    public final zzbdx f24878d;

    /* renamed from: e */
    public final boolean f24879e;

    /* renamed from: f */
    public final zzbdv f24880f;

    /* renamed from: g */
    public zzbdc f24881g;

    /* renamed from: h */
    public Surface f24882h;

    /* renamed from: i */
    public zzber f24883i;

    /* renamed from: j */
    public String f24884j;

    /* renamed from: k */
    public String[] f24885k;

    /* renamed from: l */
    public boolean f24886l;

    /* renamed from: m */
    public int f24887m = 1;

    /* renamed from: n */
    public zzbds f24888n;

    /* renamed from: o */
    public final boolean f24889o;

    /* renamed from: p */
    public boolean f24890p;

    /* renamed from: q */
    public boolean f24891q;

    /* renamed from: r */
    public int f24892r;

    /* renamed from: s */
    public int f24893s;

    /* renamed from: t */
    public int f24894t;

    /* renamed from: u */
    public int f24895u;

    /* renamed from: v */
    public float f24896v;

    public zzbeb(Context context, zzbdx zzbdxVar, zzbdu zzbduVar, boolean z, boolean z2, zzbdv zzbdvVar) {
        super(context);
        this.f24879e = z2;
        this.f24877c = zzbduVar;
        this.f24878d = zzbdxVar;
        this.f24889o = z;
        this.f24880f = zzbdvVar;
        setSurfaceTextureListener(this);
        this.f24878d.m15748a(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf, p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4057t7
    /* renamed from: a */
    public final void mo15737a() {
        m15735a(this.f24791b.m15743a(), false);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: a */
    public final void mo15736a(float f, float f2) {
        zzbds zzbdsVar = this.f24888n;
        if (zzbdsVar != null) {
            zzbdsVar.m15764a(f, f2);
        }
    }

    /* renamed from: a */
    public final void m15735a(float f, boolean z) {
        zzber zzberVar = this.f24883i;
        if (zzberVar != null) {
            zzberVar.m15695a(f, z);
        } else {
            zzbbq.m15852d("Trying to set volume before player is initalized.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbey
    /* renamed from: a */
    public final void mo15655a(int i) {
        if (this.f24887m != i) {
            this.f24887m = i;
            if (i == 3) {
                m15711k();
            } else if (i == 4) {
                if (this.f24880f.f24844a) {
                    m15708n();
                }
                this.f24878d.m15745c();
                this.f24791b.m15739c();
                zzayu.f24665h.post(new Runnable(this) { // from class: c.d.b.d.g.a.w7

                    /* renamed from: a */
                    public final zzbeb f15914a;

                    {
                        this.f15914a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f15914a.m15703s();
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m15734a(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.f24896v != f) {
            this.f24896v = f;
            requestLayout();
        }
    }

    /* renamed from: a */
    public final void m15733a(Surface surface, boolean z) {
        zzber zzberVar = this.f24883i;
        if (zzberVar != null) {
            zzberVar.m15692a(surface, z);
        } else {
            zzbbq.m15852d("Trying to set surface before player is initalized.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: a */
    public final void mo15732a(zzbdc zzbdcVar) {
        this.f24881g = zzbdcVar;
    }

    /* renamed from: a */
    public final /* synthetic */ void m15731a(String str) {
        zzbdc zzbdcVar = this.f24881g;
        if (zzbdcVar != null) {
            zzbdcVar.mo15798a("ExoPlayerAdapter error", str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbey
    /* renamed from: a */
    public final void mo15654a(String str, Exception exc) {
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
        zzbbq.m15852d(valueOf.length() != 0 ? "ExoPlayerAdapter error: ".concat(valueOf) : new String("ExoPlayerAdapter error: "));
        this.f24886l = true;
        if (this.f24880f.f24844a) {
            m15708n();
        }
        zzayu.f24665h.post(new Runnable(this, sb2) { // from class: c.d.b.d.g.a.v7

            /* renamed from: a */
            public final zzbeb f15701a;

            /* renamed from: b */
            public final String f15702b;

            {
                this.f15701a = this;
                this.f15702b = sb2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f15701a.m15731a(this.f15702b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: a */
    public final void mo15730a(String str, String[] strArr) {
        if (str != null) {
            if (strArr == null) {
                setVideoPath(str);
            }
            this.f24884j = str;
            this.f24885k = (String[]) Arrays.copyOf(strArr, strArr.length);
            m15712j();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbey
    /* renamed from: a */
    public final void mo15652a(final boolean z, final long j) {
        if (this.f24877c != null) {
            zzbbz.f24768e.execute(new Runnable(this, z, j) { // from class: c.d.b.d.g.a.e8

                /* renamed from: a */
                public final zzbeb f12804a;

                /* renamed from: b */
                public final boolean f12805b;

                /* renamed from: c */
                public final long f12806c;

                {
                    this.f12804a = this;
                    this.f12805b = z;
                    this.f12806c = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f12804a.m15727b(this.f12805b, this.f12806c);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: b */
    public final void mo15729b() {
        if (m15713i()) {
            if (this.f24880f.f24844a) {
                m15708n();
            }
            this.f24883i.m15681d().mo12055a(false);
            this.f24878d.m15745c();
            this.f24791b.m15739c();
            zzayu.f24665h.post(new Runnable(this) { // from class: c.d.b.d.g.a.x7

                /* renamed from: a */
                public final zzbeb f15998a;

                {
                    this.f15998a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f15998a.m15705q();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: b */
    public final void mo15728b(int i) {
        if (m15713i()) {
            this.f24883i.m15681d().mo12058a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbey
    /* renamed from: b */
    public final void mo15650b(int i, int i2) {
        this.f24892r = i;
        this.f24893s = i2;
        m15710l();
    }

    /* renamed from: b */
    public final /* synthetic */ void m15727b(boolean z, long j) {
        this.f24877c.mo15574a(z, j);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: c */
    public final void mo15726c() {
        if (m15713i()) {
            if (this.f24880f.f24844a) {
                m15709m();
            }
            this.f24883i.m15681d().mo12055a(true);
            this.f24878d.m15747b();
            this.f24791b.m15740b();
            this.f24790a.m15767a();
            zzayu.f24665h.post(new Runnable(this) { // from class: c.d.b.d.g.a.y7

                /* renamed from: a */
                public final zzbeb f16095a;

                {
                    this.f16095a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f16095a.m15704r();
                }
            });
            return;
        }
        this.f24891q = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: c */
    public final void mo15725c(int i) {
        zzber zzberVar = this.f24883i;
        if (zzberVar != null) {
            zzberVar.m15680e().m15698c(i);
        }
    }

    /* renamed from: c */
    public final /* synthetic */ void m15724c(int i, int i2) {
        zzbdc zzbdcVar = this.f24881g;
        if (zzbdcVar != null) {
            zzbdcVar.mo15805a(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: d */
    public final void mo15723d() {
        if (m15715h()) {
            this.f24883i.m15681d().stop();
            if (this.f24883i != null) {
                m15733a((Surface) null, true);
                zzber zzberVar = this.f24883i;
                if (zzberVar != null) {
                    zzberVar.m15691a((zzbey) null);
                    this.f24883i.m15682c();
                    this.f24883i = null;
                }
                this.f24887m = 1;
                this.f24886l = false;
                this.f24890p = false;
                this.f24891q = false;
            }
        }
        this.f24878d.m15745c();
        this.f24791b.m15739c();
        this.f24878d.m15749a();
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: d */
    public final void mo15722d(int i) {
        zzber zzberVar = this.f24883i;
        if (zzberVar != null) {
            zzberVar.m15680e().m15697d(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: e */
    public final String mo15721e() {
        String str = this.f24889o ? " spherical" : "";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: e */
    public final void mo15720e(int i) {
        zzber zzberVar = this.f24883i;
        if (zzberVar != null) {
            zzberVar.m15680e().m15701a(i);
        }
    }

    /* renamed from: f */
    public final zzber m15719f() {
        return new zzber(this.f24877c.getContext(), this.f24880f);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: f */
    public final void mo15718f(int i) {
        zzber zzberVar = this.f24883i;
        if (zzberVar != null) {
            zzberVar.m15680e().m15699b(i);
        }
    }

    /* renamed from: g */
    public final String m15717g() {
        return zzp.m17969c().m16141a(this.f24877c.getContext(), this.f24877c.mo15516a().f24759a);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: g */
    public final void mo15716g(int i) {
        zzber zzberVar = this.f24883i;
        if (zzberVar != null) {
            zzberVar.m15694a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int getCurrentPosition() {
        if (m15713i()) {
            return (int) this.f24883i.m15681d().mo12048e();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int getDuration() {
        if (m15713i()) {
            return (int) this.f24883i.m15681d().getDuration();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int getVideoHeight() {
        return this.f24893s;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int getVideoWidth() {
        return this.f24892r;
    }

    /* renamed from: h */
    public final /* synthetic */ void m15714h(int i) {
        zzbdc zzbdcVar = this.f24881g;
        if (zzbdcVar != null) {
            zzbdcVar.onWindowVisibilityChanged(i);
        }
    }

    /* renamed from: h */
    public final boolean m15715h() {
        zzber zzberVar = this.f24883i;
        return (zzberVar == null || zzberVar.m15681d() == null || this.f24886l) ? false : true;
    }

    /* renamed from: i */
    public final boolean m15713i() {
        return m15715h() && this.f24887m != 1;
    }

    /* renamed from: j */
    public final void m15712j() {
        String str;
        if (this.f24883i == null && (str = this.f24884j) != null && this.f24882h != null) {
            if (str.startsWith("cache:")) {
                zzbfl d = this.f24877c.mo15565d(this.f24884j);
                if (d instanceof zzbfw) {
                    zzber c = ((zzbfw) d).m15648c();
                    this.f24883i = c;
                    if (c.m15681d() == null) {
                        zzbbq.m15852d("Precached video player has been released.");
                        return;
                    }
                } else if (d instanceof zzbfx) {
                    zzbfx zzbfxVar = (zzbfx) d;
                    String g = m15717g();
                    ByteBuffer c2 = zzbfxVar.m15640c();
                    boolean e = zzbfxVar.m15638e();
                    String d2 = zzbfxVar.m15639d();
                    if (d2 == null) {
                        zzbbq.m15852d("Stream cache URL is null.");
                        return;
                    }
                    zzber f = m15719f();
                    this.f24883i = f;
                    f.m15686a(new Uri[]{Uri.parse(d2)}, g, c2, e);
                } else {
                    String valueOf = String.valueOf(this.f24884j);
                    zzbbq.m15852d(valueOf.length() != 0 ? "Stream cache miss: ".concat(valueOf) : new String("Stream cache miss: "));
                    return;
                }
            } else {
                this.f24883i = m15719f();
                String g2 = m15717g();
                Uri[] uriArr = new Uri[this.f24885k.length];
                int i = 0;
                while (true) {
                    String[] strArr = this.f24885k;
                    if (i >= strArr.length) {
                        break;
                    }
                    uriArr[i] = Uri.parse(strArr[i]);
                    i++;
                }
                this.f24883i.m15687a(uriArr, g2);
            }
            this.f24883i.m15691a(this);
            m15733a(this.f24882h, false);
            if (this.f24883i.m15681d() != null) {
                int P = this.f24883i.m15681d().mo12060P();
                this.f24887m = P;
                if (P == 3) {
                    m15711k();
                }
            }
        }
    }

    /* renamed from: k */
    public final void m15711k() {
        if (!this.f24890p) {
            this.f24890p = true;
            zzayu.f24665h.post(new Runnable(this) { // from class: c.d.b.d.g.a.u7

                /* renamed from: a */
                public final zzbeb f15454a;

                {
                    this.f15454a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f15454a.m15702t();
                }
            });
            mo15737a();
            this.f24878d.m15744d();
            if (this.f24891q) {
                mo15726c();
            }
        }
    }

    /* renamed from: l */
    public final void m15710l() {
        m15734a(this.f24892r, this.f24893s);
    }

    /* renamed from: m */
    public final void m15709m() {
        zzber zzberVar = this.f24883i;
        if (zzberVar != null) {
            zzberVar.m15683b(true);
        }
    }

    /* renamed from: n */
    public final void m15708n() {
        zzber zzberVar = this.f24883i;
        if (zzberVar != null) {
            zzberVar.m15683b(false);
        }
    }

    /* renamed from: o */
    public final /* synthetic */ void m15707o() {
        zzbdc zzbdcVar = this.f24881g;
        if (zzbdcVar != null) {
            zzbdcVar.mo15788e();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.f24896v;
        int i4 = measuredWidth;
        int i5 = measuredHeight;
        if (f != 0.0f) {
            i4 = measuredWidth;
            i5 = measuredHeight;
            if (this.f24888n == null) {
                float f2 = measuredWidth;
                float f3 = f2 / measuredHeight;
                if (f > f3) {
                    measuredHeight = (int) (f2 / f);
                }
                float f4 = this.f24896v;
                i4 = measuredWidth;
                i5 = measuredHeight;
                if (f4 < f3) {
                    i4 = (int) (measuredHeight * f4);
                    i5 = measuredHeight;
                }
            }
        }
        setMeasuredDimension(i4, i5);
        zzbds zzbdsVar = this.f24888n;
        if (zzbdsVar != null) {
            zzbdsVar.m15763a(i4, i5);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i6 = this.f24894t;
            if (((i6 > 0 && i6 != i4) || ((i3 = this.f24895u) > 0 && i3 != i5)) && this.f24879e && m15715h()) {
                zzhc d = this.f24883i.m15681d();
                if (d.mo12048e() > 0 && !d.mo12053b()) {
                    m15735a(0.0f, true);
                    d.mo12055a(true);
                    long e = d.mo12048e();
                    long b = zzp.m17962j().mo17091b();
                    while (m15715h() && d.mo12048e() == e && zzp.m17962j().mo17091b() - b <= 250) {
                    }
                    d.mo12055a(false);
                    mo15737a();
                }
            }
            this.f24894t = i4;
            this.f24895u = i5;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        SurfaceTexture surfaceTexture2 = surfaceTexture;
        if (this.f24889o) {
            zzbds zzbdsVar = new zzbds(getContext());
            this.f24888n = zzbdsVar;
            zzbdsVar.m15761a(surfaceTexture, i, i2);
            this.f24888n.start();
            surfaceTexture2 = this.f24888n.m15755c();
            if (surfaceTexture2 == null) {
                this.f24888n.m15757b();
                this.f24888n = null;
                surfaceTexture2 = surfaceTexture;
            }
        }
        Surface surface = new Surface(surfaceTexture2);
        this.f24882h = surface;
        if (this.f24883i == null) {
            m15712j();
        } else {
            m15733a(surface, true);
            if (!this.f24880f.f24844a) {
                m15709m();
            }
        }
        if (this.f24892r == 0 || this.f24893s == 0) {
            m15734a(i, i2);
        } else {
            m15710l();
        }
        zzayu.f24665h.post(new Runnable(this) { // from class: c.d.b.d.g.a.a8

            /* renamed from: a */
            public final zzbeb f12069a;

            {
                this.f12069a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12069a.m15706p();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        mo15729b();
        zzbds zzbdsVar = this.f24888n;
        if (zzbdsVar != null) {
            zzbdsVar.m15757b();
            this.f24888n = null;
        }
        if (this.f24883i != null) {
            m15708n();
            Surface surface = this.f24882h;
            if (surface != null) {
                surface.release();
            }
            this.f24882h = null;
            m15733a((Surface) null, true);
        }
        zzayu.f24665h.post(new Runnable(this) { // from class: c.d.b.d.g.a.c8

            /* renamed from: a */
            public final zzbeb f12530a;

            {
                this.f12530a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12530a.m15707o();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        zzbds zzbdsVar = this.f24888n;
        if (zzbdsVar != null) {
            zzbdsVar.m15763a(i, i2);
        }
        zzayu.f24665h.post(new Runnable(this, i, i2) { // from class: c.d.b.d.g.a.z7

            /* renamed from: a */
            public final zzbeb f16259a;

            /* renamed from: b */
            public final int f16260b;

            /* renamed from: c */
            public final int f16261c;

            {
                this.f16259a = this;
                this.f16260b = i;
                this.f16261c = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16259a.m15724c(this.f16260b, this.f16261c);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f24878d.m15746b(this);
        this.f24790a.m15766a(surfaceTexture, this.f24881g);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        zzayp.m16153g(sb.toString());
        zzayu.f24665h.post(new Runnable(this, i) { // from class: c.d.b.d.g.a.b8

            /* renamed from: a */
            public final zzbeb f12343a;

            /* renamed from: b */
            public final int f12344b;

            {
                this.f12343a = this;
                this.f12344b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12343a.m15714h(this.f12344b);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    /* renamed from: p */
    public final /* synthetic */ void m15706p() {
        zzbdc zzbdcVar = this.f24881g;
        if (zzbdcVar != null) {
            zzbdcVar.mo15783h();
        }
    }

    /* renamed from: q */
    public final /* synthetic */ void m15705q() {
        zzbdc zzbdcVar = this.f24881g;
        if (zzbdcVar != null) {
            zzbdcVar.mo15792c();
        }
    }

    /* renamed from: r */
    public final /* synthetic */ void m15704r() {
        zzbdc zzbdcVar = this.f24881g;
        if (zzbdcVar != null) {
            zzbdcVar.mo15784g();
        }
    }

    /* renamed from: s */
    public final /* synthetic */ void m15703s() {
        zzbdc zzbdcVar = this.f24881g;
        if (zzbdcVar != null) {
            zzbdcVar.mo15786f();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void setVideoPath(String str) {
        if (str != null) {
            this.f24884j = str;
            this.f24885k = new String[]{str};
            m15712j();
        }
    }

    /* renamed from: t */
    public final /* synthetic */ void m15702t() {
        zzbdc zzbdcVar = this.f24881g;
        if (zzbdcVar != null) {
            zzbdcVar.mo15795b();
        }
    }
}
