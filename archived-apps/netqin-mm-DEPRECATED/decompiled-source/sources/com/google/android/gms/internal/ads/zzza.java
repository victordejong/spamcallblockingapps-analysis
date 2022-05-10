package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.util.VisibleForTesting;
import p131c.p161d.p170b.p224d.p252g.p253a.xh0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzza.class */
public final class zzza {

    /* renamed from: a */
    public final zzanc f29146a;

    /* renamed from: b */
    public final Context f29147b;

    /* renamed from: c */
    public AdListener f29148c;

    /* renamed from: d */
    public zzux f29149d;

    /* renamed from: e */
    public zzxc f29150e;

    /* renamed from: f */
    public String f29151f;

    /* renamed from: g */
    public AdMetadataListener f29152g;

    /* renamed from: h */
    public AppEventListener f29153h;

    /* renamed from: i */
    public OnCustomRenderedAdLoadedListener f29154i;

    /* renamed from: j */
    public RewardedVideoAdListener f29155j;

    /* renamed from: k */
    public boolean f29156k;

    /* renamed from: l */
    public boolean f29157l;

    /* renamed from: m */
    public OnPaidEventListener f29158m;

    public zzza(Context context) {
        this(context, zzvl.f29034a, null);
    }

    @VisibleForTesting
    public zzza(Context context, zzvl zzvlVar, PublisherInterstitialAd publisherInterstitialAd) {
        this.f29146a = new zzanc();
        this.f29147b = context;
    }

    /* renamed from: a */
    public final AdListener m11017a() {
        return this.f29148c;
    }

    /* renamed from: a */
    public final void m11016a(AdListener adListener) {
        try {
            this.f29148c = adListener;
            if (this.f29150e != null) {
                this.f29150e.mo10946b(adListener != null ? new zzvc(adListener) : null);
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m11015a(AdMetadataListener adMetadataListener) {
        try {
            this.f29152g = adMetadataListener;
            if (this.f29150e != null) {
                this.f29150e.mo10955a(adMetadataListener != null ? new zzvh(adMetadataListener) : null);
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m11014a(RewardedVideoAdListener rewardedVideoAdListener) {
        try {
            this.f29155j = rewardedVideoAdListener;
            if (this.f29150e != null) {
                this.f29150e.mo10960a(rewardedVideoAdListener != null ? new zzaun(rewardedVideoAdListener) : null);
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m11013a(zzux zzuxVar) {
        try {
            this.f29149d = zzuxVar;
            if (this.f29150e != null) {
                this.f29150e.mo10956a(zzuxVar != null ? new zzuz(zzuxVar) : null);
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m11012a(zzyw zzywVar) {
        try {
            if (this.f29150e == null) {
                if (this.f29151f == null) {
                    m11008b("loadAd");
                }
                zzvn u = this.f29156k ? zzvn.m11194u() : new zzvn();
                zzvx b = zzwm.m11169b();
                Context context = this.f29147b;
                zzxc a = new xh0(b, context, u, this.f29151f, this.f29146a).m27117a(context, false);
                this.f29150e = a;
                if (this.f29148c != null) {
                    a.mo10946b(new zzvc(this.f29148c));
                }
                if (this.f29149d != null) {
                    this.f29150e.mo10956a(new zzuz(this.f29149d));
                }
                if (this.f29152g != null) {
                    this.f29150e.mo10955a(new zzvh(this.f29152g));
                }
                if (this.f29153h != null) {
                    this.f29150e.mo10954a(new zzvt(this.f29153h));
                }
                if (this.f29154i != null) {
                    this.f29150e.mo10963a(new zzabz(this.f29154i));
                }
                if (this.f29155j != null) {
                    this.f29150e.mo10960a(new zzaun(this.f29155j));
                }
                this.f29150e.mo10952a(new zzaab(this.f29158m));
                this.f29150e.mo10949a(this.f29157l);
            }
            if (this.f29150e.mo10947b(zzvl.m11201a(this.f29147b, zzywVar))) {
                this.f29146a.m16641a(zzywVar.m11080n());
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m11011a(String str) {
        if (this.f29151f == null) {
            this.f29151f = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }

    /* renamed from: a */
    public final void m11010a(boolean z) {
        try {
            this.f29157l = z;
            if (this.f29150e != null) {
                this.f29150e.mo10949a(z);
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: b */
    public final Bundle m11009b() {
        try {
            if (this.f29150e != null) {
                return this.f29150e.mo10969G();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
        return new Bundle();
    }

    /* renamed from: b */
    public final void m11008b(String str) {
        if (this.f29150e == null) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63);
            sb.append("The ad unit ID must be set on InterstitialAd before ");
            sb.append(str);
            sb.append(" is called.");
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: b */
    public final void m11007b(boolean z) {
        this.f29156k = true;
    }

    /* renamed from: c */
    public final boolean m11006c() {
        try {
            if (this.f29150e == null) {
                return false;
            }
            return this.f29150e.mo10948b();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            return false;
        }
    }

    /* renamed from: d */
    public final void m11005d() {
        try {
            m11008b("show");
            this.f29150e.showInterstitial();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }
}
