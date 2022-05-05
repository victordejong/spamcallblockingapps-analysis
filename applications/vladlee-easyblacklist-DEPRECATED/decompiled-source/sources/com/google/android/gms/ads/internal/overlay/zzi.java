package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.ads.zzbdi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzi.class */
public final class zzi {
    public final int index;
    public final ViewGroup parent;
    public final ViewGroup.LayoutParams zzdhj;
    public final Context zzup;

    public zzi(zzbdi zzbdiVar) {
        this.zzdhj = zzbdiVar.getLayoutParams();
        ViewParent parent = zzbdiVar.getParent();
        this.zzup = zzbdiVar.zzzv();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new C1551c("Could not get the parent of the WebView for an overlay.");
        }
        this.parent = (ViewGroup) parent;
        this.index = this.parent.indexOfChild(zzbdiVar.getView());
        this.parent.removeView(zzbdiVar.getView());
        zzbdiVar.zzax(true);
    }
}
