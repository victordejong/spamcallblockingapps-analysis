package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.Preconditions;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbai.class */
public final class zzbai extends FrameLayout implements zzbah {

    /* renamed from: a */
    private final zzbaz f11579a;

    /* renamed from: b */
    private final FrameLayout f11580b;

    /* renamed from: c */
    private final zzaae f11581c;

    /* renamed from: d */
    private final RunnableC1919hc f11582d;

    /* renamed from: e */
    private final long f11583e;

    /* renamed from: f */
    private zzbag f11584f;

    /* renamed from: g */
    private boolean f11585g;

    /* renamed from: h */
    private boolean f11586h;

    /* renamed from: i */
    private boolean f11587i;

    /* renamed from: j */
    private boolean f11588j;

    /* renamed from: k */
    private long f11589k;

    /* renamed from: l */
    private long f11590l;

    /* renamed from: m */
    private String f11591m;

    /* renamed from: n */
    private String[] f11592n;

    /* renamed from: o */
    private Bitmap f11593o;

    /* renamed from: p */
    private ImageView f11594p;

    /* renamed from: q */
    private boolean f11595q;

    public zzbai(Context context, zzbaz zzbazVar, int i, boolean z, zzaae zzaaeVar, zzbaw zzbawVar) {
        super(context);
        this.f11579a = zzbazVar;
        this.f11581c = zzaaeVar;
        this.f11580b = new FrameLayout(context);
        addView(this.f11580b, new FrameLayout.LayoutParams(-1, -1));
        Preconditions.checkNotNull(zzbazVar.zzyo());
        this.f11584f = zzbazVar.zzyo().zzbkp.zza(context, zzbazVar, i, z, zzaaeVar, zzbawVar);
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            this.f11580b.addView(zzbagVar, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzchc)).booleanValue()) {
                zzya();
            }
        }
        this.f11594p = new ImageView(context);
        this.f11583e = ((Long) zzve.zzoy().zzd(zzzn.zzchg)).longValue();
        this.f11588j = ((Boolean) zzve.zzoy().zzd(zzzn.zzche)).booleanValue();
        zzaae zzaaeVar2 = this.f11581c;
        if (zzaaeVar2 != null) {
            zzaaeVar2.zzh("spinner_used", this.f11588j ? "1" : "0");
        }
        this.f11582d = new RunnableC1919hc(this);
        zzbag zzbagVar2 = this.f11584f;
        if (zzbagVar2 != null) {
            zzbagVar2.zza(this);
        }
        if (this.f11584f == null) {
            zzm("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m4180a(String str, String... strArr) {
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
        this.f11579a.zza("onVideoEvent", hashMap);
    }

    /* renamed from: b */
    private final boolean m4178b() {
        return this.f11594p.getParent() != null;
    }

    /* renamed from: c */
    private final void m4177c() {
        if (this.f11579a.zzyn() != null && this.f11586h && !this.f11587i) {
            this.f11579a.zzyn().getWindow().clearFlags(128);
            this.f11586h = false;
        }
    }

    public static void zza(zzbaz zzbazVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "no_video_view");
        zzbazVar.zza("onVideoEvent", hashMap);
    }

    public static void zza(zzbaz zzbazVar, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("error", str);
        zzbazVar.zza("onVideoEvent", hashMap);
    }

    public static void zza(zzbaz zzbazVar, Map<String, List<Map<String, Object>>> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("mimeTypes", map);
        zzbazVar.zza("onVideoEvent", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4182a() {
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            long currentPosition = zzbagVar.getCurrentPosition();
            if (this.f11589k != currentPosition && currentPosition > 0) {
                m4180a("timeupdate", "time", String.valueOf(((float) currentPosition) / 1000.0f));
                this.f11589k = currentPosition;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4179a(boolean z) {
        m4180a("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }

    public final void destroy() {
        this.f11582d.m4715a();
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            zzbagVar.stop();
        }
        m4177c();
    }

    public final void finalize() {
        try {
            this.f11582d.m4715a();
            if (this.f11584f != null) {
                zzbag zzbagVar = this.f11584f;
                zzdhd zzdhdVar = zzazd.zzdwi;
                zzbagVar.getClass();
                zzdhdVar.execute(RunnableC1909gt.m4721a(zzbagVar));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbah
    public final void onPaused() {
        m4180a("pause", new String[0]);
        m4177c();
        this.f11585g = false;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        RunnableC1919hc hcVar = this.f11582d;
        if (z) {
            hcVar.m4714b();
        } else {
            hcVar.m4715a();
            this.f11590l = this.f11589k;
        }
        zzawb.zzdsr.post(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.gs

            /* renamed from: a */
            private final zzbai f8515a;

            /* renamed from: b */
            private final boolean f8516b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8515a = this;
                this.f8516b = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8515a.m4179a(this.f8516b);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbah
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.f11582d.m4714b();
            z = true;
        } else {
            this.f11582d.m4715a();
            this.f11590l = this.f11589k;
            z = false;
        }
        zzawb.zzdsr.post(new RunnableC1912gw(this, z));
    }

    public final void pause() {
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            zzbagVar.pause();
        }
    }

    public final void play() {
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            zzbagVar.play();
        }
    }

    public final void seekTo(int i) {
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            zzbagVar.seekTo(i);
        }
    }

    public final void setVolume(float f) {
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            zzbagVar.f11578b.setVolume(f);
            zzbagVar.zzxs();
        }
    }

    public final void zza(float f, float f2) {
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            zzbagVar.zza(f, f2);
        }
    }

    public final void zzc(String str, String[] strArr) {
        this.f11591m = str;
        this.f11592n = strArr;
    }

    public final void zzcv(int i) {
        this.f11584f.zzcv(i);
    }

    public final void zzcw(int i) {
        this.f11584f.zzcw(i);
    }

    public final void zzcx(int i) {
        this.f11584f.zzcx(i);
    }

    public final void zzcy(int i) {
        this.f11584f.zzcy(i);
    }

    public final void zzcz(int i) {
        this.f11584f.zzcz(i);
    }

    public final void zzd(int i, int i2, int i3, int i4) {
        if (i3 != 0 && i4 != 0) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
            layoutParams.setMargins(i, i2, 0, 0);
            this.f11580b.setLayoutParams(layoutParams);
            requestLayout();
        }
    }

    public final void zze(MotionEvent motionEvent) {
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            zzbagVar.dispatchTouchEvent(motionEvent);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbah
    public final void zzer() {
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null && this.f11590l == 0) {
            m4180a("canplaythrough", "duration", String.valueOf(zzbagVar.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.f11584f.getVideoWidth()), "videoHeight", String.valueOf(this.f11584f.getVideoHeight()));
        }
    }

    public final void zzhq() {
        if (this.f11584f != null) {
            if (!TextUtils.isEmpty(this.f11591m)) {
                this.f11584f.zzb(this.f11591m, this.f11592n);
            } else {
                m4180a("no_src", new String[0]);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbah
    public final void zzk(int i, int i2) {
        if (this.f11588j) {
            int max = Math.max(i / ((Integer) zzve.zzoy().zzd(zzzn.zzchf)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) zzve.zzoy().zzd(zzzn.zzchf)).intValue(), 1);
            Bitmap bitmap = this.f11593o;
            if (bitmap == null || bitmap.getWidth() != max || this.f11593o.getHeight() != max2) {
                this.f11593o = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
                this.f11595q = false;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbah
    public final void zzm(String str, String str2) {
        m4180a("error", "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbah
    public final void zzxt() {
        this.f11582d.m4714b();
        zzawb.zzdsr.post(new RunnableC1911gv(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbah
    public final void zzxu() {
        if (this.f11579a.zzyn() != null && !this.f11586h) {
            this.f11587i = (this.f11579a.zzyn().getWindow().getAttributes().flags & 128) != 0;
            if (!this.f11587i) {
                this.f11579a.zzyn().getWindow().addFlags(128);
                this.f11586h = true;
            }
        }
        this.f11585g = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbah
    public final void zzxv() {
        m4180a("ended", new String[0]);
        m4177c();
    }

    @Override // com.google.android.gms.internal.ads.zzbah
    public final void zzxw() {
        if (this.f11595q && this.f11593o != null && !m4178b()) {
            this.f11594p.setImageBitmap(this.f11593o);
            this.f11594p.invalidate();
            this.f11580b.addView(this.f11594p, new FrameLayout.LayoutParams(-1, -1));
            this.f11580b.bringChildToFront(this.f11594p);
        }
        this.f11582d.m4715a();
        this.f11590l = this.f11589k;
        zzawb.zzdsr.post(new RunnableC1910gu(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbah
    public final void zzxx() {
        if (this.f11585g && m4178b()) {
            this.f11580b.removeView(this.f11594p);
        }
        if (this.f11593o != null) {
            long elapsedRealtime = zzq.zzkx().elapsedRealtime();
            if (this.f11584f.getBitmap(this.f11593o) != null) {
                this.f11595q = true;
            }
            long elapsedRealtime2 = zzq.zzkx().elapsedRealtime() - elapsedRealtime;
            if (zzavs.zzvs()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(elapsedRealtime2);
                sb.append("ms");
                zzavs.zzed(sb.toString());
            }
            if (elapsedRealtime2 > this.f11583e) {
                zzavs.zzez("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.f11588j = false;
                this.f11593o = null;
                zzaae zzaaeVar = this.f11581c;
                if (zzaaeVar != null) {
                    zzaaeVar.zzh("spinner_jank", Long.toString(elapsedRealtime2));
                }
            }
        }
    }

    public final void zzxy() {
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            zzbagVar.f11578b.setMuted(true);
            zzbagVar.zzxs();
        }
    }

    public final void zzxz() {
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            zzbagVar.f11578b.setMuted(false);
            zzbagVar.zzxs();
        }
    }

    public final void zzya() {
        zzbag zzbagVar = this.f11584f;
        if (zzbagVar != null) {
            TextView textView = new TextView(zzbagVar.getContext());
            String valueOf = String.valueOf(this.f11584f.zzxo());
            textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
            textView.setTextColor(-65536);
            textView.setBackgroundColor(-256);
            this.f11580b.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
            this.f11580b.bringChildToFront(textView);
        }
    }
}
