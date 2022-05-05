package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxl.class */
public final class zzxl {

    /* renamed from: a */
    private final zzakz f15629a;

    /* renamed from: b */
    private final zzuh f15630b;

    /* renamed from: c */
    private final AtomicBoolean f15631c;

    /* renamed from: d */
    private final VideoController f15632d;

    /* renamed from: e */
    private final zzvd f15633e;

    /* renamed from: f */
    private zzty f15634f;

    /* renamed from: g */
    private AdListener f15635g;

    /* renamed from: h */
    private AdSize[] f15636h;

    /* renamed from: i */
    private AppEventListener f15637i;

    /* renamed from: j */
    private zzvu f15638j;

    /* renamed from: k */
    private OnCustomRenderedAdLoadedListener f15639k;

    /* renamed from: l */
    private VideoOptions f15640l;

    /* renamed from: m */
    private String f15641m;

    /* renamed from: n */
    private ViewGroup f15642n;

    /* renamed from: o */
    private int f15643o;

    /* renamed from: p */
    private boolean f15644p;

    public zzxl(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzuh.zzccn, 0, (byte) 0);
    }

    public zzxl(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzuh.zzccn, i, (byte) 0);
    }

    public zzxl(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzuh.zzccn, 0, (byte) 0);
    }

    public zzxl(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, false, zzuh.zzccn, i, (byte) 0);
    }

    private zzxl(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzuh zzuhVar, int i) {
        zzuj zzujVar;
        this.f15629a = new zzakz();
        this.f15632d = new VideoController();
        this.f15633e = new arw(this);
        this.f15642n = viewGroup;
        this.f15630b = zzuhVar;
        this.f15638j = null;
        this.f15631c = new AtomicBoolean(false);
        this.f15643o = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzuq zzuqVar = new zzuq(context, attributeSet);
                this.f15636h = zzuqVar.zzy(z);
                this.f15641m = zzuqVar.getAdUnitId();
                if (viewGroup.isInEditMode()) {
                    zzayk zzou = zzve.zzou();
                    AdSize adSize = this.f15636h[0];
                    int i2 = this.f15643o;
                    if (adSize.equals(AdSize.INVALID)) {
                        zzujVar = zzuj.zzon();
                    } else {
                        zzujVar = new zzuj(context, adSize);
                        zzujVar.zzccr = m2991a(i2);
                    }
                    zzou.zza(viewGroup, zzujVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                zzve.zzou().zza(viewGroup, new zzuj(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    private zzxl(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzuh zzuhVar, int i, byte b) {
        this(viewGroup, attributeSet, z, zzuhVar, i);
    }

    /* renamed from: a */
    private static zzuj m2990a(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return zzuj.zzon();
            }
        }
        zzuj zzujVar = new zzuj(context, adSizeArr);
        zzujVar.zzccr = m2991a(i);
        return zzujVar;
    }

    /* renamed from: a */
    private static boolean m2991a(int i) {
        return i == 1;
    }

    public final void destroy() {
        try {
            if (this.f15638j != null) {
                this.f15638j.destroy();
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final AdListener getAdListener() {
        return this.f15635g;
    }

    public final AdSize getAdSize() {
        zzuj zzjz;
        try {
            if (!(this.f15638j == null || (zzjz = this.f15638j.zzjz()) == null)) {
                return zzjz.zzoo();
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.f15636h;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final AdSize[] getAdSizes() {
        return this.f15636h;
    }

    public final String getAdUnitId() {
        zzvu zzvuVar;
        if (this.f15641m == null && (zzvuVar = this.f15638j) != null) {
            try {
                this.f15641m = zzvuVar.getAdUnitId();
            } catch (RemoteException e) {
                zzayu.zze("#007 Could not call remote method.", e);
            }
        }
        return this.f15641m;
    }

    public final AppEventListener getAppEventListener() {
        return this.f15637i;
    }

    public final String getMediationAdapterClassName() {
        try {
            if (this.f15638j != null) {
                return this.f15638j.zzka();
            }
            return null;
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.f15639k;
    }

    public final VideoController getVideoController() {
        return this.f15632d;
    }

    public final VideoOptions getVideoOptions() {
        return this.f15640l;
    }

    public final boolean isLoading() {
        try {
            if (this.f15638j != null) {
                return this.f15638j.isLoading();
            }
            return false;
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final void pause() {
        try {
            if (this.f15638j != null) {
                this.f15638j.pause();
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void recordManualImpression() {
        if (!this.f15631c.getAndSet(true)) {
            try {
                if (this.f15638j != null) {
                    this.f15638j.zzjy();
                }
            } catch (RemoteException e) {
                zzayu.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void resume() {
        try {
            if (this.f15638j != null) {
                this.f15638j.resume();
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAdListener(AdListener adListener) {
        this.f15635g = adListener;
        this.f15633e.zza(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (this.f15636h == null) {
            zza(adSizeArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    public final void setAdUnitId(String str) {
        if (this.f15641m == null) {
            this.f15641m = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.f15637i = appEventListener;
            if (this.f15638j != null) {
                this.f15638j.zza(appEventListener != null ? new zzul(appEventListener) : null);
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.f15644p = z;
        try {
            if (this.f15638j != null) {
                this.f15638j.setManualImpressionsEnabled(this.f15644p);
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.f15639k = onCustomRenderedAdLoadedListener;
        try {
            if (this.f15638j != null) {
                this.f15638j.zza(onCustomRenderedAdLoadedListener != null ? new zzaal(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.f15640l = videoOptions;
        try {
            if (this.f15638j != null) {
                this.f15638j.zza(videoOptions == null ? null : new zzyw(videoOptions));
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzty zztyVar) {
        try {
            this.f15634f = zztyVar;
            if (this.f15638j != null) {
                this.f15638j.zza(zztyVar != null ? new zztx(zztyVar) : null);
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzxj zzxjVar) {
        try {
            if (this.f15638j == null) {
                if ((this.f15636h == null || this.f15641m == null) && this.f15638j == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.f15642n.getContext();
                zzuj a = m2990a(context, this.f15636h, this.f15643o);
                this.f15638j = "search_v2".equals(a.zzabg) ? new arp(zzve.zzov(), context, a, this.f15641m).m4754a(context, false) : new arl(zzve.zzov(), context, a, this.f15641m, this.f15629a).m4754a(context, false);
                this.f15638j.zza(new zzuc(this.f15633e));
                if (this.f15634f != null) {
                    this.f15638j.zza(new zztx(this.f15634f));
                }
                if (this.f15637i != null) {
                    this.f15638j.zza(new zzul(this.f15637i));
                }
                if (this.f15639k != null) {
                    this.f15638j.zza(new zzaal(this.f15639k));
                }
                if (this.f15640l != null) {
                    this.f15638j.zza(new zzyw(this.f15640l));
                }
                this.f15638j.setManualImpressionsEnabled(this.f15644p);
                try {
                    IObjectWrapper zzjx = this.f15638j.zzjx();
                    if (zzjx != null) {
                        this.f15642n.addView((View) ObjectWrapper.unwrap(zzjx));
                    }
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
            if (this.f15638j.zza(zzuh.zza(this.f15642n.getContext(), zzxjVar))) {
                this.f15629a.zzf(zzxjVar.zzpq());
            }
        } catch (RemoteException e2) {
            zzayu.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void zza(AdSize... adSizeArr) {
        this.f15636h = adSizeArr;
        try {
            if (this.f15638j != null) {
                this.f15638j.zza(m2990a(this.f15642n.getContext(), this.f15636h, this.f15643o));
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
        this.f15642n.requestLayout();
    }

    public final boolean zza(zzvu zzvuVar) {
        if (zzvuVar == null) {
            return false;
        }
        try {
            IObjectWrapper zzjx = zzvuVar.zzjx();
            if (zzjx == null || ((View) ObjectWrapper.unwrap(zzjx)).getParent() != null) {
                return false;
            }
            this.f15642n.addView((View) ObjectWrapper.unwrap(zzjx));
            this.f15638j = zzvuVar;
            return true;
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final zzxb zzdl() {
        zzvu zzvuVar = this.f15638j;
        if (zzvuVar == null) {
            return null;
        }
        try {
            return zzvuVar.getVideoController();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
