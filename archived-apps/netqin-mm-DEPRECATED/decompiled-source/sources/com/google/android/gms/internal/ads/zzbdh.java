package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbdh;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3684j7;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3721k7;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3795m7;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3832n7;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4020s7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdh.class */
public final class zzbdh extends FrameLayout implements zzbdc {

    /* renamed from: a */
    public final zzbdu f24792a;

    /* renamed from: b */
    public final FrameLayout f24793b;

    /* renamed from: c */
    public final zzabs f24794c;

    /* renamed from: d */
    public final RunnableC4020s7 f24795d;

    /* renamed from: e */
    public final long f24796e;

    /* renamed from: f */
    public zzbdf f24797f;

    /* renamed from: g */
    public boolean f24798g;

    /* renamed from: h */
    public boolean f24799h;

    /* renamed from: i */
    public boolean f24800i;

    /* renamed from: j */
    public boolean f24801j;

    /* renamed from: k */
    public long f24802k;

    /* renamed from: l */
    public long f24803l;

    /* renamed from: m */
    public String f24804m;

    /* renamed from: n */
    public String[] f24805n;

    /* renamed from: o */
    public Bitmap f24806o;

    /* renamed from: p */
    public ImageView f24807p;

    /* renamed from: q */
    public boolean f24808q;

    public zzbdh(Context context, zzbdu zzbduVar, int i, boolean z, zzabs zzabsVar, zzbdv zzbdvVar) {
        super(context);
        this.f24792a = zzbduVar;
        this.f24794c = zzabsVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f24793b = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        Preconditions.m17288a(zzbduVar.mo15562f());
        zzbdf a = zzbduVar.mo15562f().f22793b.mo15773a(context, zzbduVar, i, z, zzabsVar, zzbdvVar);
        this.f24797f = a;
        if (a != null) {
            this.f24793b.addView(a, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23894u)).booleanValue()) {
                m15777n();
            }
        }
        this.f24807p = new ImageView(context);
        this.f24796e = ((Long) zzwm.m11166e().m16921a(zzabb.f23914y)).longValue();
        boolean booleanValue = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23904w)).booleanValue();
        this.f24801j = booleanValue;
        zzabs zzabsVar2 = this.f24794c;
        if (zzabsVar2 != null) {
            zzabsVar2.m16882a("spinner_used", booleanValue ? "1" : "0");
        }
        this.f24795d = new RunnableC4020s7(this);
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            zzbdfVar.mo15732a(this);
        }
        if (this.f24797f == null) {
            mo15798a("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    /* renamed from: a */
    public static void m15801a(zzbdu zzbduVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "no_video_view");
        zzbduVar.mo15577a("onVideoEvent", hashMap);
    }

    /* renamed from: a */
    public static void m15800a(zzbdu zzbduVar, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("error", str);
        zzbduVar.mo15577a("onVideoEvent", hashMap);
    }

    /* renamed from: a */
    public static void m15799a(zzbdu zzbduVar, Map<String, List<Map<String, Object>>> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("mimeTypes", map);
        zzbduVar.mo15577a("onVideoEvent", hashMap);
    }

    /* renamed from: a */
    public final void m15808a() {
        this.f24795d.m26391a();
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            zzbdfVar.mo15723d();
        }
        m15774q();
    }

    /* renamed from: a */
    public final void m15807a(float f, float f2) {
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            zzbdfVar.mo15736a(f, f2);
        }
    }

    /* renamed from: a */
    public final void m15806a(int i) {
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            zzbdfVar.mo15728b(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdc
    /* renamed from: a */
    public final void mo15805a(int i, int i2) {
        if (this.f24801j) {
            int max = Math.max(i / ((Integer) zzwm.m11166e().m16921a(zzabb.f23909x)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) zzwm.m11166e().m16921a(zzabb.f23909x)).intValue(), 1);
            Bitmap bitmap = this.f24806o;
            if (bitmap == null || bitmap.getWidth() != max || this.f24806o.getHeight() != max2) {
                this.f24806o = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
                this.f24808q = false;
            }
        }
    }

    /* renamed from: a */
    public final void m15804a(int i, int i2, int i3, int i4) {
        if (i3 != 0 && i4 != 0) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
            layoutParams.setMargins(i, i2, 0, 0);
            this.f24793b.setLayoutParams(layoutParams);
            requestLayout();
        }
    }

    /* renamed from: a */
    public final void m15803a(MotionEvent motionEvent) {
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            zzbdfVar.dispatchTouchEvent(motionEvent);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdc
    /* renamed from: a */
    public final void mo15798a(String str, String str2) {
        m15793b("error", "what", str, "extra", str2);
    }

    /* renamed from: a */
    public final void m15797a(String str, String[] strArr) {
        this.f24804m = str;
        this.f24805n = strArr;
    }

    /* renamed from: a */
    public final /* synthetic */ void m15796a(boolean z) {
        m15793b("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }

    @Override // com.google.android.gms.internal.ads.zzbdc
    /* renamed from: b */
    public final void mo15795b() {
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null && this.f24803l == 0) {
            m15793b("canplaythrough", VastIconXmlManager.DURATION, String.valueOf(zzbdfVar.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.f24797f.getVideoWidth()), "videoHeight", String.valueOf(this.f24797f.getVideoHeight()));
        }
    }

    /* renamed from: b */
    public final void m15794b(int i) {
        this.f24797f.mo15725c(i);
    }

    /* renamed from: b */
    public final void m15793b(String str, String... strArr) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                hashMap.put(str2, str3);
                str2 = null;
            }
        }
        this.f24792a.mo15577a("onVideoEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbdc
    /* renamed from: c */
    public final void mo15792c() {
        m15793b("pause", new String[0]);
        m15774q();
        this.f24798g = false;
    }

    /* renamed from: c */
    public final void m15791c(int i) {
        this.f24797f.mo15722d(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdc
    /* renamed from: d */
    public final void mo15790d() {
        if (this.f24798g && m15775p()) {
            this.f24793b.removeView(this.f24807p);
        }
        if (this.f24806o != null) {
            long a = zzp.m17962j().mo17092a();
            if (this.f24797f.getBitmap(this.f24806o) != null) {
                this.f24808q = true;
            }
            long a2 = zzp.m17962j().mo17092a() - a;
            if (zzayp.m16155a()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(a2);
                sb.append("ms");
                zzayp.m16153g(sb.toString());
            }
            if (a2 > this.f24796e) {
                zzbbq.m15852d("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.f24801j = false;
                this.f24806o = null;
                zzabs zzabsVar = this.f24794c;
                if (zzabsVar != null) {
                    zzabsVar.m16882a("spinner_jank", Long.toString(a2));
                }
            }
        }
    }

    /* renamed from: d */
    public final void m15789d(int i) {
        this.f24797f.mo15720e(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdc
    /* renamed from: e */
    public final void mo15788e() {
        if (this.f24808q && this.f24806o != null && !m15775p()) {
            this.f24807p.setImageBitmap(this.f24806o);
            this.f24807p.invalidate();
            this.f24793b.addView(this.f24807p, new FrameLayout.LayoutParams(-1, -1));
            this.f24793b.bringChildToFront(this.f24807p);
        }
        this.f24795d.m26391a();
        this.f24803l = this.f24802k;
        zzayu.f24665h.post(new RunnableC3832n7(this));
    }

    /* renamed from: e */
    public final void m15787e(int i) {
        this.f24797f.mo15718f(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdc
    /* renamed from: f */
    public final void mo15786f() {
        m15793b("ended", new String[0]);
        m15774q();
    }

    /* renamed from: f */
    public final void m15785f(int i) {
        this.f24797f.mo15716g(i);
    }

    public final void finalize() throws Throwable {
        try {
            this.f24795d.m26391a();
            if (this.f24797f != null) {
                zzbdf zzbdfVar = this.f24797f;
                zzdzb zzdzbVar = zzbbz.f24768e;
                zzbdfVar.getClass();
                zzdzbVar.execute(RunnableC3684j7.m26795a(zzbdfVar));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdc
    /* renamed from: g */
    public final void mo15784g() {
        if (this.f24792a.mo15528b() != null && !this.f24799h) {
            boolean z = (this.f24792a.mo15528b().getWindow().getAttributes().flags & 128) != 0;
            this.f24800i = z;
            if (!z) {
                this.f24792a.mo15528b().getWindow().addFlags(128);
                this.f24799h = true;
            }
        }
        this.f24798g = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbdc
    /* renamed from: h */
    public final void mo15783h() {
        this.f24795d.m26390b();
        zzayu.f24665h.post(new RunnableC3721k7(this));
    }

    /* renamed from: i */
    public final void m15782i() {
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            zzbdfVar.mo15729b();
        }
    }

    /* renamed from: j */
    public final void m15781j() {
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            zzbdfVar.mo15726c();
        }
    }

    /* renamed from: k */
    public final void m15780k() {
        if (this.f24797f != null) {
            if (!TextUtils.isEmpty(this.f24804m)) {
                this.f24797f.mo15730a(this.f24804m, this.f24805n);
            } else {
                m15793b("no_src", new String[0]);
            }
        }
    }

    /* renamed from: l */
    public final void m15779l() {
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            zzbdfVar.f24791b.m15741a(true);
            zzbdfVar.mo15737a();
        }
    }

    /* renamed from: m */
    public final void m15778m() {
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            zzbdfVar.f24791b.m15741a(false);
            zzbdfVar.mo15737a();
        }
    }

    /* renamed from: n */
    public final void m15777n() {
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            TextView textView = new TextView(zzbdfVar.getContext());
            String valueOf = String.valueOf(this.f24797f.mo15721e());
            textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
            textView.setTextColor(-65536);
            textView.setBackgroundColor(-256);
            this.f24793b.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
            this.f24793b.bringChildToFront(textView);
        }
    }

    /* renamed from: o */
    public final void m15776o() {
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            long currentPosition = zzbdfVar.getCurrentPosition();
            if (this.f24802k != currentPosition && currentPosition > 0) {
                m15793b("timeupdate", "time", String.valueOf(((float) currentPosition) / 1000.0f));
                this.f24802k = currentPosition;
            }
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.f24795d.m26390b();
        } else {
            this.f24795d.m26391a();
            this.f24803l = this.f24802k;
        }
        zzayu.f24665h.post(new Runnable(this, z) { // from class: c.d.b.d.g.a.l7

            /* renamed from: a */
            public final zzbdh f13937a;

            /* renamed from: b */
            public final boolean f13938b;

            {
                this.f13937a = this;
                this.f13938b = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f13937a.m15796a(this.f13938b);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbdc
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.f24795d.m26390b();
            z = true;
        } else {
            this.f24795d.m26391a();
            this.f24803l = this.f24802k;
            z = false;
        }
        zzayu.f24665h.post(new RunnableC3795m7(this, z));
    }

    /* renamed from: p */
    public final boolean m15775p() {
        return this.f24807p.getParent() != null;
    }

    /* renamed from: q */
    public final void m15774q() {
        if (this.f24792a.mo15528b() != null && this.f24799h && !this.f24800i) {
            this.f24792a.mo15528b().getWindow().clearFlags(128);
            this.f24799h = false;
        }
    }

    public final void setVolume(float f) {
        zzbdf zzbdfVar = this.f24797f;
        if (zzbdfVar != null) {
            zzbdfVar.f24791b.m15742a(f);
            zzbdfVar.mo15737a();
        }
    }
}
