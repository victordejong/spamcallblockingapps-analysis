package com.google.android.gms.ads;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdValue.class */
public final class AdValue {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdValue$PrecisionType.class */
    public @interface PrecisionType {
    }

    public AdValue(int i, String str, long j) {
    }

    /* renamed from: a */
    public static AdValue m18127a(int i, String str, long j) {
        return new AdValue(i, str, j);
    }
}
