package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzv.class */
public final class zzbzv extends zzahe implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzabr {

    /* renamed from: a */
    private View f12773a;

    /* renamed from: b */
    private zzxb f12774b;

    /* renamed from: c */
    private zzbwk f12775c;

    /* renamed from: d */
    private boolean f12776d = false;

    /* renamed from: e */
    private boolean f12777e = false;

    public zzbzv(zzbwk zzbwkVar, zzbws zzbwsVar) {
        this.f12773a = zzbwsVar.zzaje();
        this.f12774b = zzbwsVar.getVideoController();
        this.f12775c = zzbwkVar;
        if (zzbwsVar.zzajf() != null) {
            zzbwsVar.zzajf().zza(this);
        }
    }

    /* renamed from: a */
    private final void m3833a() {
        View view = this.f12773a;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f12773a);
            }
        }
    }

    /* renamed from: a */
    private static void m3832a(zzahg zzahgVar, int i) {
        try {
            zzahgVar.zzcn(i);
        } catch (RemoteException e) {
            zzavs.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: b */
    private final void m3831b() {
        View view;
        zzbwk zzbwkVar = this.f12775c;
        if (zzbwkVar != null && (view = this.f12773a) != null) {
            zzbwkVar.zzb(view, Collections.emptyMap(), Collections.emptyMap(), zzbwk.zzy(this.f12773a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahb
    public final void destroy() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        m3833a();
        zzbwk zzbwkVar = this.f12775c;
        if (zzbwkVar != null) {
            zzbwkVar.destroy();
        }
        this.f12775c = null;
        this.f12773a = null;
        this.f12774b = null;
        this.f12776d = true;
    }

    @Override // com.google.android.gms.internal.ads.zzahb
    public final zzxb getVideoController() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (!this.f12776d) {
            return this.f12774b;
        }
        zzavs.zzex("getVideoController: Instream ad should not be used after destroyed");
        return null;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m3831b();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m3831b();
    }

    @Override // com.google.android.gms.internal.ads.zzahb
    public final void zza(IObjectWrapper iObjectWrapper, zzahg zzahgVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.f12776d) {
            zzavs.zzex("Instream ad can not be shown after destroy().");
            m3832a(zzahgVar, 2);
        } else if (this.f12773a == null || this.f12774b == null) {
            String str = this.f12773a == null ? "can not get video view." : "can not get video controller.";
            zzavs.zzex(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
            m3832a(zzahgVar, 0);
        } else if (this.f12777e) {
            zzavs.zzex("Instream ad should not be used again.");
            m3832a(zzahgVar, 1);
        } else {
            this.f12777e = true;
            m3833a();
            ((ViewGroup) ObjectWrapper.unwrap(iObjectWrapper)).addView(this.f12773a, new ViewGroup.LayoutParams(-1, -1));
            zzq.zzln();
            zzazt.zza(this.f12773a, (ViewTreeObserver.OnGlobalLayoutListener) this);
            zzq.zzln();
            zzazt.zza(this.f12773a, (ViewTreeObserver.OnScrollChangedListener) this);
            m3831b();
            try {
                zzahgVar.zzrv();
            } catch (RemoteException e) {
                zzavs.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahb
    public final void zzr(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zza(iObjectWrapper, new BinderC2141pi());
    }

    @Override // com.google.android.gms.internal.ads.zzabr
    public final void zzrb() {
        zzawb.zzdsr.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.pj

            /* renamed from: a */
            private final zzbzv f10326a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10326a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    this.f10326a.destroy();
                } catch (RemoteException e) {
                    zzavs.zze("#007 Could not call remote method.", e);
                }
            }
        });
    }
}
