package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzux;
import com.google.android.gms.internal.ads.zzyy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/BaseAdView.class */
public class BaseAdView extends ViewGroup {

    /* renamed from: a */
    public final zzyy f22666a;

    public BaseAdView(Context context, int i) {
        super(context);
        this.f22666a = new zzyy(this, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f22666a = new zzyy(this, attributeSet, false, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f22666a = new zzyy(this, attributeSet, false, i2);
    }

    /* renamed from: a */
    public void m18124a() {
        this.f22666a.m11074a();
    }

    /* renamed from: a */
    public void m18123a(AdRequest adRequest) {
        this.f22666a.m11064a(adRequest.m18148a());
    }

    /* renamed from: b */
    public void m18122b() {
        this.f22666a.m11048l();
    }

    /* renamed from: c */
    public void m18121c() {
        this.f22666a.m11047m();
    }

    public AdListener getAdListener() {
        return this.f22666a.m11059b();
    }

    public AdSize getAdSize() {
        return this.f22666a.m11057c();
    }

    public String getAdUnitId() {
        return this.f22666a.m11055e();
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        return this.f22666a.m11053g();
    }

    public ResponseInfo getResponseInfo() {
        return this.f22666a.m11051i();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    public void onMeasure(int i, int i2) {
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize = null;
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                zzbbq.m15855b("Unable to retrieve ad size.", e);
            }
            if (adSize != null) {
                Context context = getContext();
                i4 = adSize.m18132b(context);
                i3 = adSize.m18135a(context);
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

    public void setAdListener(AdListener adListener) {
        this.f22666a.m11071a(adListener);
        if (adListener == null) {
            this.f22666a.m11066a((zzux) null);
            this.f22666a.m11068a((AppEventListener) null);
            return;
        }
        if (adListener instanceof zzux) {
            this.f22666a.m11066a((zzux) adListener);
        }
        if (adListener instanceof AppEventListener) {
            this.f22666a.m11068a((AppEventListener) adListener);
        }
    }

    public void setAdSize(AdSize adSize) {
        this.f22666a.m11060a(adSize);
    }

    public void setAdUnitId(String str) {
        this.f22666a.m11062a(str);
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        this.f22666a.m11070a(onPaidEventListener);
    }
}
