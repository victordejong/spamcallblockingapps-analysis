package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AdapterHelper.class */
public final class AdapterHelper {

    /* renamed from: a */
    public final WeakReference<Context> f34636a;

    /* renamed from: b */
    public final Context f34637b;

    /* renamed from: c */
    public final int f34638c;

    /* renamed from: d */
    public final int f34639d;

    public AdapterHelper(Context context, int i, int i2) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        boolean z = true;
        Preconditions.checkArgument(i >= 0, "start position must be non-negative");
        if (i2 < 2) {
            z = false;
        }
        Preconditions.checkArgument(z, "interval must be at least 2");
        this.f34636a = new WeakReference<>(context);
        this.f34637b = context.getApplicationContext();
        this.f34638c = i;
        this.f34639d = i2;
    }

    /* renamed from: a */
    public final int m4031a(int i) {
        int i2 = this.f34638c;
        if (i <= i2) {
            return 0;
        }
        double d = i - i2;
        double d2 = this.f34639d;
        Double.isNaN(d);
        Double.isNaN(d2);
        return ((int) Math.floor(d / d2)) + 1;
    }

    /* renamed from: b */
    public final int m4030b(int i) {
        int i2 = this.f34638c;
        if (i <= i2) {
            return 0;
        }
        int i3 = this.f34639d - 1;
        if ((i - i2) % i3 == 0) {
            return (i - i2) / i3;
        }
        double d = i - i2;
        double d2 = i3;
        Double.isNaN(d);
        Double.isNaN(d2);
        return ((int) Math.floor(d / d2)) + 1;
    }

    public View getAdView(View view, ViewGroup viewGroup, NativeAd nativeAd) {
        return getAdView(view, viewGroup, nativeAd, null);
    }

    public View getAdView(View view, ViewGroup viewGroup, NativeAd nativeAd, ViewBinder viewBinder) {
        Context context = this.f34636a.get();
        if (context != null) {
            return NativeAdViewHelper.m3910a(view, viewGroup, context, nativeAd);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Weak reference to Context in AdapterHelper became null. Returning empty view.");
        return new View(this.f34637b);
    }

    public boolean isAdPosition(int i) {
        int i2 = this.f34638c;
        boolean z = false;
        if (i < i2) {
            return false;
        }
        if ((i - i2) % this.f34639d == 0) {
            z = true;
        }
        return z;
    }

    public int shiftedCount(int i) {
        return i + m4030b(i);
    }

    public int shiftedPosition(int i) {
        return i - m4031a(i);
    }
}
