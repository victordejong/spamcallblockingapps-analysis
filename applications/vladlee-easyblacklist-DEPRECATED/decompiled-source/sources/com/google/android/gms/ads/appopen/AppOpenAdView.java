package com.google.android.gms.ads.appopen;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzrc;
import com.google.android.gms.internal.ads.zzuj;
import com.google.android.gms.internal.ads.zzvu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAdView.class */
public final class AppOpenAdView extends ViewGroup {

    /* renamed from: a */
    private AppOpenAd f5846a;

    /* renamed from: b */
    private AppOpenAdPresentationCallback f5847b;

    public AppOpenAdView(Context context) {
        super(context);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    private final void m6093a() {
        AppOpenAdPresentationCallback appOpenAdPresentationCallback;
        AppOpenAd appOpenAd = this.f5846a;
        if (appOpenAd != null && (appOpenAdPresentationCallback = this.f5847b) != null) {
            appOpenAd.mo3088a(new zzrc(appOpenAdPresentationCallback));
        }
    }

    /* renamed from: b */
    private final AdSize m6092b() {
        zzvu a = this.f5846a.mo3089a();
        if (a == null) {
            return null;
        }
        try {
            zzuj zzjz = a.zzjz();
            if (zzjz != null) {
                return zzjz.zzoo();
            }
            return null;
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((i3 - i) - measuredWidth) / 2;
            int i6 = ((i4 - i2) - measuredHeight) / 2;
            childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize = null;
            try {
                adSize = m6092b();
            } catch (NullPointerException e) {
                zzayu.zzc("Unable to retrieve ad size.", e);
            }
            if (adSize != null) {
                Context context = getContext();
                i4 = adSize.getWidthInPixels(context);
                i3 = adSize.getHeightInPixels(context);
            } else {
                i3 = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            i4 = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(i4, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public final void setAppOpenAd(AppOpenAd appOpenAd) {
        IObjectWrapper zzjx;
        try {
            zzvu a = appOpenAd.mo3089a();
            if (a != null && (zzjx = a.zzjx()) != null) {
                View view = (View) ObjectWrapper.unwrap(zzjx);
                if (view.getParent() == null) {
                    removeAllViews();
                    addView(view);
                    this.f5846a = appOpenAd;
                    m6093a();
                    return;
                }
                zzayu.zzex("Trying to set AppOpenAd which is already in use.");
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAppOpenAdPresentationCallback(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        this.f5847b = appOpenAdPresentationCallback;
        m6093a();
    }
}
