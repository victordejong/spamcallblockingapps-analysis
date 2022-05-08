package com.google.android.gms.ads.formats;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzacm;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzzn;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdView.class */
public class NativeAdView extends FrameLayout {

    /* renamed from: a */
    private final FrameLayout f5872a;

    /* renamed from: b */
    private final zzacm f5873b = m6081a();

    public NativeAdView(Context context) {
        super(context);
        this.f5872a = m6080a(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5872a = m6080a(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5872a = m6080a(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f5872a = m6080a(context);
    }

    /* renamed from: a */
    private final FrameLayout m6080a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    /* renamed from: a */
    private final zzacm m6081a() {
        Preconditions.checkNotNull(this.f5872a, "createDelegate must be called after mOverlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return zzve.zzov().zza(this.f5872a.getContext(), this, this.f5872a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final View m6079a(String str) {
        try {
            IObjectWrapper zzco = this.f5873b.zzco(str);
            if (zzco != null) {
                return (View) ObjectWrapper.unwrap(zzco);
            }
            return null;
        } catch (RemoteException e) {
            zzayu.zzc("Unable to call getAssetView on delegate", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m6078a(String str, View view) {
        try {
            this.f5873b.zzb(str, ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzayu.zzc("Unable to call setAssetView on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f5872a);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f5872a;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public void destroy() {
        try {
            this.f5873b.destroy();
        } catch (RemoteException e) {
            zzayu.zzc("Unable to destroy native ad view", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        zzacm zzacmVar;
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzclq)).booleanValue() && (zzacmVar = this.f5873b) != null) {
            try {
                zzacmVar.zzf(ObjectWrapper.wrap(motionEvent));
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public AdChoicesView getAdChoicesView() {
        View a = m6079a(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW);
        if (a instanceof AdChoicesView) {
            return (AdChoicesView) a;
        }
        return null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        zzacm zzacmVar = this.f5873b;
        if (zzacmVar != null) {
            try {
                zzacmVar.zzc(ObjectWrapper.wrap(view), i);
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f5872a);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f5872a != view) {
            super.removeView(view);
        }
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        m6078a(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, adChoicesView);
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.f5873b.zza((IObjectWrapper) nativeAd.mo4434a());
        } catch (RemoteException e) {
            zzayu.zzc("Unable to call setNativeAd on delegate", e);
        }
    }
}
