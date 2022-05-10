package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p161d.p170b.p224d.p252g.p253a.ci0;
import p131c.p161d.p170b.p224d.p252g.p253a.ph0;
import p131c.p161d.p170b.p224d.p252g.p253a.uh0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyy.class */
public final class zzyy {

    /* renamed from: a */
    public final zzanc f29112a;

    /* renamed from: b */
    public final VideoController f29113b;
    @VisibleForTesting

    /* renamed from: c */
    public final zzwp f29114c;

    /* renamed from: d */
    public zzux f29115d;

    /* renamed from: e */
    public AdListener f29116e;

    /* renamed from: f */
    public AdSize[] f29117f;

    /* renamed from: g */
    public AppEventListener f29118g;

    /* renamed from: h */
    public zzxc f29119h;

    /* renamed from: i */
    public OnCustomRenderedAdLoadedListener f29120i;

    /* renamed from: j */
    public VideoOptions f29121j;

    /* renamed from: k */
    public String f29122k;

    /* renamed from: l */
    public ViewGroup f29123l;

    /* renamed from: m */
    public int f29124m;

    /* renamed from: n */
    public boolean f29125n;

    /* renamed from: o */
    public OnPaidEventListener f29126o;

    public zzyy(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzvl.f29034a, 0);
    }

    public zzyy(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzvl.f29034a, i);
    }

    public zzyy(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzvl.f29034a, 0);
    }

    public zzyy(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, false, zzvl.f29034a, i);
    }

    @VisibleForTesting
    public zzyy(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzvl zzvlVar, int i) {
        this(viewGroup, attributeSet, z, zzvlVar, null, i);
    }

    @VisibleForTesting
    public zzyy(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzvl zzvlVar, zzxc zzxcVar, int i) {
        zzvn zzvnVar;
        this.f29112a = new zzanc();
        this.f29113b = new VideoController();
        this.f29114c = new ci0(this);
        this.f29123l = viewGroup;
        this.f29119h = null;
        new AtomicBoolean(false);
        this.f29124m = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzvu zzvuVar = new zzvu(context, attributeSet);
                this.f29117f = zzvuVar.m11187a(z);
                this.f29122k = zzvuVar.m11189a();
                if (viewGroup.isInEditMode()) {
                    zzbbg a = zzwm.m11170a();
                    AdSize adSize = this.f29117f[0];
                    int i2 = this.f29124m;
                    if (adSize.equals(AdSize.f22656o)) {
                        zzvnVar = zzvn.m11192y();
                    } else {
                        zzvnVar = new zzvn(context, adSize);
                        zzvnVar.f29044j = m11073a(i2);
                    }
                    a.m15906a(viewGroup, zzvnVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                zzwm.m11170a().m15904a(viewGroup, new zzvn(context, AdSize.f22648g), e.getMessage(), e.getMessage());
            }
        }
    }

    /* renamed from: a */
    public static zzvn m11072a(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.f22656o)) {
                return zzvn.m11192y();
            }
        }
        zzvn zzvnVar = new zzvn(context, adSizeArr);
        zzvnVar.f29044j = m11073a(i);
        return zzvnVar;
    }

    /* renamed from: a */
    public static boolean m11073a(int i) {
        return i == 1;
    }

    /* renamed from: a */
    public final void m11074a() {
        try {
            if (this.f29119h != null) {
                this.f29119h.destroy();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m11071a(AdListener adListener) {
        this.f29116e = adListener;
        this.f29114c.m11161a(adListener);
    }

    /* renamed from: a */
    public final void m11070a(OnPaidEventListener onPaidEventListener) {
        try {
            this.f29126o = onPaidEventListener;
            if (this.f29119h != null) {
                this.f29119h.mo10952a(new zzaab(onPaidEventListener));
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m11069a(VideoOptions videoOptions) {
        this.f29121j = videoOptions;
        try {
            if (this.f29119h != null) {
                this.f29119h.mo10964a(videoOptions == null ? null : new zzaak(videoOptions));
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m11068a(AppEventListener appEventListener) {
        try {
            this.f29118g = appEventListener;
            if (this.f29119h != null) {
                this.f29119h.mo10954a(appEventListener != null ? new zzvt(appEventListener) : null);
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m11067a(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.f29120i = onCustomRenderedAdLoadedListener;
        try {
            if (this.f29119h != null) {
                this.f29119h.mo10963a(onCustomRenderedAdLoadedListener != null ? new zzabz(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m11066a(zzux zzuxVar) {
        try {
            this.f29115d = zzuxVar;
            if (this.f29119h != null) {
                this.f29119h.mo10956a(zzuxVar != null ? new zzuz(zzuxVar) : null);
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m11064a(zzyw zzywVar) {
        try {
            if (this.f29119h == null) {
                if ((this.f29117f == null || this.f29122k == null) && this.f29119h == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.f29123l.getContext();
                zzvn a = m11072a(context, this.f29117f, this.f29124m);
                zzxc a2 = "search_v2".equals(a.f29035a) ? new uh0(zzwm.m11169b(), context, a, this.f29122k).m27117a(context, false) : new ph0(zzwm.m11169b(), context, a, this.f29122k, this.f29112a).m27117a(context, false);
                this.f29119h = a2;
                a2.mo10946b(new zzvc(this.f29114c));
                if (this.f29115d != null) {
                    this.f29119h.mo10956a(new zzuz(this.f29115d));
                }
                if (this.f29118g != null) {
                    this.f29119h.mo10954a(new zzvt(this.f29118g));
                }
                if (this.f29120i != null) {
                    this.f29119h.mo10963a(new zzabz(this.f29120i));
                }
                if (this.f29121j != null) {
                    this.f29119h.mo10964a(new zzaak(this.f29121j));
                }
                this.f29119h.mo10952a(new zzaab(this.f29126o));
                this.f29119h.mo10944f(this.f29125n);
                try {
                    IObjectWrapper Q0 = this.f29119h.mo10968Q0();
                    if (Q0 != null) {
                        this.f29123l.addView((View) ObjectWrapper.m17021Q(Q0));
                    }
                } catch (RemoteException e) {
                    zzbbq.m15851d("#007 Could not call remote method.", e);
                }
            }
            if (this.f29119h.mo10947b(zzvl.m11201a(this.f29123l.getContext(), zzywVar))) {
                this.f29112a.m16641a(zzywVar.m11080n());
            }
        } catch (RemoteException e2) {
            zzbbq.m15851d("#007 Could not call remote method.", e2);
        }
    }

    /* renamed from: a */
    public final void m11062a(String str) {
        if (this.f29122k == null) {
            this.f29122k = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    /* renamed from: a */
    public final void m11061a(boolean z) {
        this.f29125n = z;
        try {
            if (this.f29119h != null) {
                this.f29119h.mo10944f(z);
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m11060a(AdSize... adSizeArr) {
        if (this.f29117f == null) {
            m11058b(adSizeArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    /* renamed from: a */
    public final boolean m11065a(zzxc zzxcVar) {
        if (zzxcVar == null) {
            return false;
        }
        try {
            IObjectWrapper Q0 = zzxcVar.mo10968Q0();
            if (Q0 == null || ((View) ObjectWrapper.m17021Q(Q0)).getParent() != null) {
                return false;
            }
            this.f29123l.addView((View) ObjectWrapper.m17021Q(Q0));
            this.f29119h = zzxcVar;
            return true;
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            return false;
        }
    }

    /* renamed from: b */
    public final AdListener m11059b() {
        return this.f29116e;
    }

    /* renamed from: b */
    public final void m11058b(AdSize... adSizeArr) {
        this.f29117f = adSizeArr;
        try {
            if (this.f29119h != null) {
                this.f29119h.mo10958a(m11072a(this.f29123l.getContext(), this.f29117f, this.f29124m));
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
        this.f29123l.requestLayout();
    }

    /* renamed from: c */
    public final AdSize m11057c() {
        zzvn f2;
        try {
            if (!(this.f29119h == null || (f2 = this.f29119h.mo10943f2()) == null)) {
                return f2.m11196f();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.f29117f;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    /* renamed from: d */
    public final AdSize[] m11056d() {
        return this.f29117f;
    }

    /* renamed from: e */
    public final String m11055e() {
        zzxc zzxcVar;
        if (this.f29122k == null && (zzxcVar = this.f29119h) != null) {
            try {
                this.f29122k = zzxcVar.getAdUnitId();
            } catch (RemoteException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
            }
        }
        return this.f29122k;
    }

    /* renamed from: f */
    public final AppEventListener m11054f() {
        return this.f29118g;
    }

    /* renamed from: g */
    public final String m11053g() {
        try {
            if (this.f29119h != null) {
                return this.f29119h.mo10941k0();
            }
            return null;
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            return null;
        }
    }

    /* renamed from: h */
    public final OnCustomRenderedAdLoadedListener m11052h() {
        return this.f29120i;
    }

    /* renamed from: i */
    public final ResponseInfo m11051i() {
        zzyn zzynVar = null;
        try {
            if (this.f29119h != null) {
                zzynVar = this.f29119h.mo10940l();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            zzynVar = null;
        }
        return ResponseInfo.m18093a(zzynVar);
    }

    /* renamed from: j */
    public final VideoController m11050j() {
        return this.f29113b;
    }

    /* renamed from: k */
    public final VideoOptions m11049k() {
        return this.f29121j;
    }

    /* renamed from: l */
    public final void m11048l() {
        try {
            if (this.f29119h != null) {
                this.f29119h.pause();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: m */
    public final void m11047m() {
        try {
            if (this.f29119h != null) {
                this.f29119h.resume();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: n */
    public final zzyo m11046n() {
        zzxc zzxcVar = this.f29119h;
        if (zzxcVar == null) {
            return null;
        }
        try {
            return zzxcVar.getVideoController();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            return null;
        }
    }
}
