package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.mopub.nativeads.MoPubNativeAdPositioning;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzny.class */
public final class zzny {

    /* renamed from: a */
    public final boolean f28698a;

    /* renamed from: b */
    public final int f28699b;

    /* renamed from: c */
    public final int f28700c;

    /* renamed from: d */
    public final int f28701d;

    /* renamed from: e */
    public final boolean f28702e;

    /* renamed from: f */
    public final boolean f28703f;

    /* renamed from: g */
    public final int f28704g;

    /* renamed from: h */
    public final int f28705h;

    /* renamed from: i */
    public final boolean f28706i;

    public zzny() {
        this(null, null, false, true, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, true, true, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, true);
    }

    public zzny(String str, String str2, boolean z, boolean z2, int i, int i2, int i3, boolean z3, boolean z4, int i4, int i5, boolean z5) {
        this.f28698a = true;
        this.f28699b = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f28700c = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f28701d = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f28702e = true;
        this.f28703f = true;
        this.f28704g = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f28705h = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f28706i = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzny.class != obj.getClass()) {
            return false;
        }
        zzny zznyVar = (zzny) obj;
        return this.f28698a == zznyVar.f28698a && this.f28699b == zznyVar.f28699b && this.f28700c == zznyVar.f28700c && this.f28702e == zznyVar.f28702e && this.f28703f == zznyVar.f28703f && this.f28706i == zznyVar.f28706i && this.f28704g == zznyVar.f28704g && this.f28705h == zznyVar.f28705h && this.f28701d == zznyVar.f28701d && TextUtils.equals(null, null) && TextUtils.equals(null, null);
    }

    public final int hashCode() {
        throw new NullPointerException();
    }
}
