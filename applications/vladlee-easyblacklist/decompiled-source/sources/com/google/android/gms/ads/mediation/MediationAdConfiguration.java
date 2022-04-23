package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdConfiguration.class */
public class MediationAdConfiguration {
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;

    /* renamed from: a */
    private final String f6002a;

    /* renamed from: b */
    private final Bundle f6003b;

    /* renamed from: c */
    private final Bundle f6004c;

    /* renamed from: d */
    private final Context f6005d;

    /* renamed from: e */
    private final boolean f6006e;

    /* renamed from: f */
    private final Location f6007f;

    /* renamed from: g */
    private final int f6008g;

    /* renamed from: h */
    private final int f6009h;

    /* renamed from: i */
    private final String f6010i;

    /* renamed from: j */
    private final String f6011j;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdConfiguration$TagForChildDirectedTreatment.class */
    public @interface TagForChildDirectedTreatment {
    }

    public MediationAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, Location location, int i, int i2, String str2, String str3) {
        this.f6002a = str;
        this.f6003b = bundle;
        this.f6004c = bundle2;
        this.f6005d = context;
        this.f6006e = z;
        this.f6007f = location;
        this.f6008g = i;
        this.f6009h = i2;
        this.f6010i = str2;
        this.f6011j = str3;
    }

    public String getBidResponse() {
        return this.f6002a;
    }

    public Context getContext() {
        return this.f6005d;
    }

    public Location getLocation() {
        return this.f6007f;
    }

    public String getMaxAdContentRating() {
        return this.f6010i;
    }

    public Bundle getMediationExtras() {
        return this.f6004c;
    }

    public Bundle getServerParameters() {
        return this.f6003b;
    }

    public String getWatermark() {
        return this.f6011j;
    }

    public boolean isTestRequest() {
        return this.f6006e;
    }

    public int taggedForChildDirectedTreatment() {
        return this.f6008g;
    }

    public int taggedForUnderAgeTreatment() {
        return this.f6009h;
    }
}
