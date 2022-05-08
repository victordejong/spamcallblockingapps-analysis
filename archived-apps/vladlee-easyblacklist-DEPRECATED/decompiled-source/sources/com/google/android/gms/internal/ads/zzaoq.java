package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoq.class */
public final class zzaoq {

    /* renamed from: a */
    private static final Object f11133a = new Object();

    /* renamed from: b */
    private static boolean f11134b = false;

    /* renamed from: c */
    private static boolean f11135c = false;

    /* renamed from: d */
    private zzddf f11136d;

    /* renamed from: a */
    private final void m4323a(Context context) {
        synchronized (f11133a) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcoc)).booleanValue() && !f11135c) {
                try {
                    f11135c = true;
                    this.f11136d = (zzddf) zzayx.zza(context, "com.google.android.gms.ads.omid.DynamiteOmid", C1810db.f8373a);
                } catch (zzayz e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final String getVersion(Context context) {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcoc)).booleanValue()) {
            return null;
        }
        try {
            m4323a(context);
            String valueOf = String.valueOf(this.f11136d.getVersion());
            return valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4) {
        return zza(str, webView, str2, str3, str4, "Google");
    }

    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4, String str5) {
        synchronized (f11133a) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcoc)).booleanValue() && f11134b) {
                try {
                    return this.f11136d.zza(str, ObjectWrapper.wrap(webView), str2, str3, str4, str5);
                } catch (RemoteException | NullPointerException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                    return null;
                }
            }
            return null;
        }
    }

    public final void zza(IObjectWrapper iObjectWrapper, View view) {
        synchronized (f11133a) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcoc)).booleanValue() && f11134b) {
                try {
                    this.f11136d.zzb(iObjectWrapper, ObjectWrapper.wrap(view));
                } catch (RemoteException | NullPointerException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void zzab(IObjectWrapper iObjectWrapper) {
        synchronized (f11133a) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcoc)).booleanValue() && f11134b) {
                try {
                    this.f11136d.zzab(iObjectWrapper);
                } catch (RemoteException | NullPointerException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void zzac(IObjectWrapper iObjectWrapper) {
        synchronized (f11133a) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcoc)).booleanValue() && f11134b) {
                try {
                    this.f11136d.zzac(iObjectWrapper);
                } catch (RemoteException | NullPointerException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void zzb(IObjectWrapper iObjectWrapper, View view) {
        synchronized (f11133a) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcoc)).booleanValue() && f11134b) {
                try {
                    this.f11136d.zzc(iObjectWrapper, ObjectWrapper.wrap(view));
                } catch (RemoteException | NullPointerException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final boolean zzp(Context context) {
        synchronized (f11133a) {
            if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcoc)).booleanValue()) {
                return false;
            }
            if (f11134b) {
                return true;
            }
            try {
                m4323a(context);
                boolean zzas = this.f11136d.zzas(ObjectWrapper.wrap(context));
                f11134b = zzas;
                return zzas;
            } catch (RemoteException | NullPointerException e) {
                zzayu.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }
}
