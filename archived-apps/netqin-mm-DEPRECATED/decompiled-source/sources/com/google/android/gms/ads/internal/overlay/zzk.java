package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbgj;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzk.class */
public final class zzk {

    /* renamed from: a */
    public final int f22774a;

    /* renamed from: b */
    public final ViewGroup.LayoutParams f22775b;

    /* renamed from: c */
    public final ViewGroup f22776c;

    /* renamed from: d */
    public final Context f22777d;

    public zzk(zzbgj zzbgjVar) throws zzi {
        this.f22775b = zzbgjVar.getLayoutParams();
        ViewParent parent = zzbgjVar.getParent();
        this.f22777d = zzbgjVar.mo15599K();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new zzi("Could not get the parent of the WebView for an overlay.");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        this.f22776c = viewGroup;
        this.f22774a = viewGroup.indexOfChild(zzbgjVar.getView());
        this.f22776c.removeView(zzbgjVar.getView());
        zzbgjVar.mo15559g(true);
    }
}
