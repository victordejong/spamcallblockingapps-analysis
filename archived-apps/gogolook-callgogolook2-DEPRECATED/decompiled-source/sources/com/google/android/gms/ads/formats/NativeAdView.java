package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7446w7;
import p081h.p203i.p204a.p224e.p259j.p260a.C7430v3;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdView.class */
public class NativeAdView extends FrameLayout {
    public final FrameLayout zzvu;
    public final AbstractC7446w7 zzvv = zzbf();

    public NativeAdView(Context context) {
        super(context);
        this.zzvu = zzb(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzvu = zzb(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzvu = zzb(context);
    }

    @TargetApi(21)
    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.zzvu = zzb(context);
    }

    private final FrameLayout zzb(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final AbstractC7446w7 zzbf() {
        C7021t.m21289a(this.zzvu, "createDelegate must be called after mOverlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return C7430v3.m20639b().m20868a(this.zzvu.getContext(), this, this.zzvu);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zzvu);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zzvu;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public void destroy() {
        try {
            this.zzvv.destroy();
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to destroy native ad view", e);
        }
    }

    public AdChoicesView getAdChoicesView() {
        View zzq = zzq(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW);
        if (zzq instanceof AdChoicesView) {
            return (AdChoicesView) zzq;
        }
        return null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        AbstractC7446w7 w7Var = this.zzvv;
        if (w7Var != null) {
            try {
                w7Var.mo20468e(BinderC7110d.m21058a(view), i);
            } catch (RemoteException e) {
                C7452x1.m20571b("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzvu);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.zzvu != view) {
            super.removeView(view);
        }
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        zza(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, adChoicesView);
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.zzvv.mo20470c((AbstractC7106b) nativeAd.zzbd());
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void zza(String str, View view) {
        try {
            this.zzvv.mo20471a(str, BinderC7110d.m21058a(view));
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to call setAssetView on delegate", e);
        }
    }

    public final View zzq(String str) {
        try {
            AbstractC7106b i = this.zzvv.mo20467i(str);
            if (i != null) {
                return (View) BinderC7110d.m21059A(i);
            }
            return null;
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to call getAssetView on delegate", e);
            return null;
        }
    }
}
