package com.inmobi.ads;

import android.app.Activity;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.ads.AbstractC8213cb;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.p516b.C8398b;
import java.lang.ref.WeakReference;
import java.util.Set;
import p131c.p372f.p373a.p374a.p375a.p381m.C6429c;
import p131c.p372f.p373a.p374a.p375a.p381m.C6431e;
import p131c.p372f.p373a.p374a.p375a.p381m.C6433g;
/* renamed from: com.inmobi.ads.w */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/w.class */
public class C8311w extends AbstractC8212ca {

    /* renamed from: d */
    public static final String f32327d = "w";

    /* renamed from: e */
    public final WeakReference<Activity> f32328e;

    /* renamed from: f */
    public final AbstractC8213cb f32329f;

    /* renamed from: g */
    public final C6431e f32330g;

    /* renamed from: h */
    public C8313a f32331h;

    /* renamed from: i */
    public WeakReference<View> f32332i;

    /* renamed from: com.inmobi.ads.w$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/w$a.class */
    public static final class C8313a extends ContentObserver {

        /* renamed from: a */
        public Context f32336a;

        /* renamed from: c */
        public WeakReference<C8311w> f32338c;

        /* renamed from: b */
        public int f32337b = -1;

        /* renamed from: d */
        public boolean f32339d = false;

        public C8313a(Context context, C8311w wVar) {
            super(new Handler());
            this.f32336a = context;
            this.f32338c = new WeakReference<>(wVar);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            int a;
            super.onChange(z);
            Context context = this.f32336a;
            if (context != null && (a = C8398b.m5690a(context)) != this.f32337b) {
                this.f32337b = a;
                C8311w wVar = this.f32338c.get();
                if (!this.f32339d && wVar != null) {
                    C8311w.m5939a(wVar, a);
                }
            }
        }
    }

    public C8311w(Activity activity, AbstractC8213cb cbVar, C8148bd bdVar, C6431e eVar) {
        super(bdVar);
        this.f32328e = new WeakReference<>(activity);
        this.f32329f = cbVar;
        this.f32330g = eVar;
    }

    /* renamed from: a */
    public static C6431e m5942a(Context context, Set<String> set) {
        C6431e b = C6429c.m20889b(context, new C6433g("7.3.0", true));
        if (context instanceof Activity) {
            b.m20895a(null, (Activity) context);
        } else {
            b.m20895a(null, null);
        }
        for (String str : set) {
            b.m20891a(str);
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5940a(ViewGroup viewGroup, NativeVideoWrapper nativeVideoWrapper) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (!childAt.equals(nativeVideoWrapper)) {
                this.f32330g.m20896a(childAt);
                if (childAt instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) childAt;
                    if (viewGroup2.getChildCount() > 0) {
                        m5940a(viewGroup2, nativeVideoWrapper);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m5939a(C8311w wVar, int i) {
        try {
            if (wVar.f32330g.m20887d() != null) {
                StringBuilder sb = new StringBuilder("Sending volumeChange to IAS AdSession(");
                sb.append(wVar.f32330g.hashCode());
                sb.append(") with volume - ");
                sb.append(i);
                wVar.f32330g.m20887d().mo20818a(Integer.valueOf(i));
            }
        } catch (Exception e) {
            new StringBuilder("Exception in onVolumeChange with message : ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }

    /* renamed from: g */
    private void m5931g() {
        final NativeVideoWrapper nativeVideoWrapper;
        Activity activity = this.f32328e.get();
        if (activity != null) {
            AdContainer adContainer = this.f32074a;
            if ((adContainer instanceof C8148bd) && (nativeVideoWrapper = (NativeVideoWrapper) adContainer.getVideoContainerView()) != null) {
                this.f32332i = new WeakReference<>(nativeVideoWrapper);
                final View b = this.f32329f.mo5936b();
                if (!(nativeVideoWrapper == null || b == null || !(b instanceof ViewGroup))) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.w.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            C8311w.this.m5940a((ViewGroup) b, nativeVideoWrapper);
                        }
                    });
                }
                this.f32330g.m20895a(this.f32332i.get(), activity);
                if (this.f32331h == null) {
                    this.f32331h = new C8313a(activity.getApplicationContext(), this);
                    activity.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.f32331h);
                }
                new StringBuilder("Registered ad view with AVID Video AdSession ").append(this.f32330g.hashCode());
            }
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5945a() {
        return this.f32329f.mo5945a();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5941a(View view, ViewGroup viewGroup, boolean z) {
        return this.f32329f.mo5941a(view, viewGroup, z);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5944a(int i) {
        try {
            try {
                if (this.f32330g.m20887d() != null) {
                    StringBuilder sb = new StringBuilder("Sending event (");
                    sb.append(i);
                    sb.append(") to IAS AdSession : ");
                    sb.append(this.f32330g.hashCode());
                    switch (i) {
                        case 0:
                            this.f32330g.m20887d().mo20803o();
                            break;
                        case 1:
                            this.f32330g.m20887d().mo20814c();
                            this.f32330g.m20887d().mo20811f();
                            break;
                        case 2:
                            this.f32330g.m20887d().mo20813d();
                            this.f32330g.m20887d().mo20802p();
                            break;
                        case 3:
                            this.f32330g.m20887d().mo20808i();
                            break;
                        case 4:
                            this.f32330g.m20887d().mo20804n();
                            break;
                        case 6:
                            this.f32330g.m20887d().mo20806k();
                            this.f32330g.m20887d().mo20810g();
                            break;
                        case 7:
                            this.f32330g.m20887d().mo20799s();
                            this.f32330g.m20893b(this.f32332i == null ? null : this.f32332i.get());
                            break;
                        case 8:
                            this.f32330g.m20887d().mo20801q();
                            break;
                        case 9:
                            this.f32330g.m20887d().mo20819a();
                            break;
                        case 10:
                            this.f32330g.m20887d().mo20800r();
                            break;
                        case 11:
                            this.f32330g.m20887d().mo20809h();
                            break;
                        case 12:
                            this.f32330g.m20887d().mo20807j();
                            this.f32330g.m20887d().mo20815b();
                            break;
                        case 13:
                        case 14:
                            boolean z = true;
                            this.f32330g.m20887d().mo20818a(Integer.valueOf(13 == i ? 0 : this.f32331h != null ? C8398b.m5690a(this.f32328e.get()) : 1));
                            if (this.f32331h != null) {
                                C8313a aVar = this.f32331h;
                                if (13 != i) {
                                    z = false;
                                }
                                aVar.f32339d = z;
                                break;
                            }
                            break;
                        case 15:
                            this.f32330g.m20887d().mo20805m();
                            break;
                        case 16:
                            m5931g();
                            break;
                        case 17:
                            this.f32330g.m20887d().mo20817a("Unknown Player error");
                            break;
                    }
                }
            } catch (Exception e) {
                new StringBuilder("Exception in onAdEvent with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f32329f.mo5944a(i);
        } catch (Throwable th) {
            this.f32329f.mo5944a(i);
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5943a(Context context, int i) {
        this.f32329f.mo5943a(context, i);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5937a(View... viewArr) {
        try {
            try {
                if (this.f32329f.mo5935c().f31992k.f32066j) {
                    m5931g();
                    try {
                        if (this.f32330g.m20892c() != null) {
                            this.f32330g.m20892c().mo20912l();
                        }
                    } catch (Exception e) {
                    }
                    if (this.f32330g.m20887d() != null) {
                        this.f32330g.m20887d().mo20812e();
                    }
                }
            } catch (Exception e2) {
                new StringBuilder("Exception in startTrackingForImpression with message : ").append(e2.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e2));
            }
            this.f32329f.mo5937a(viewArr);
        } catch (Throwable th) {
            this.f32329f.mo5937a(viewArr);
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: b */
    public final View mo5936b() {
        return this.f32329f.mo5936b();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: c */
    public final C8197c mo5935c() {
        return this.f32329f.mo5935c();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: d */
    public final void mo5934d() {
        try {
            try {
                if (!((C8148bd) this.f32074a).mo6320i()) {
                    this.f32330g.m20893b(this.f32332i == null ? null : this.f32332i.get());
                    this.f32330g.m20897a();
                    new StringBuilder("Unregistered VideoView to IAS AdSession : ").append(this.f32330g.hashCode());
                }
                Activity activity = this.f32328e.get();
                if (!(activity == null || this.f32331h == null)) {
                    activity.getContentResolver().unregisterContentObserver(this.f32331h);
                }
            } catch (Exception e) {
                new StringBuilder("Exception in stopTrackingForImpression with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f32329f.mo5934d();
        } catch (Throwable th) {
            this.f32329f.mo5934d();
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: e */
    public final void mo5933e() {
        super.mo5933e();
        try {
            try {
                this.f32328e.clear();
                if (this.f32332i != null) {
                    this.f32332i.clear();
                }
                this.f32331h = null;
            } catch (Exception e) {
                new StringBuilder("Exception in destroy with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f32329f.mo5933e();
        } catch (Throwable th) {
            this.f32329f.mo5933e();
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: f */
    public final AbstractC8213cb.AbstractC8214a mo5932f() {
        return this.f32329f.mo5932f();
    }
}
