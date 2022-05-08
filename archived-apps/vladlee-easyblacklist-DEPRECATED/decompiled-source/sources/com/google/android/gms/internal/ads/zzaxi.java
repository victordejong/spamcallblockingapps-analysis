package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxi.class */
public final class zzaxi {

    /* renamed from: a */
    private final double f11500a;

    /* renamed from: b */
    private final double f11501b;
    public final int count;
    public final String name;
    public final double zzdtz;

    public zzaxi(String str, double d, double d2, double d3, int i) {
        this.name = str;
        this.f11501b = d;
        this.f11500a = d2;
        this.zzdtz = d3;
        this.count = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaxi)) {
            return false;
        }
        zzaxi zzaxiVar = (zzaxi) obj;
        return Objects.equal(this.name, zzaxiVar.name) && this.f11500a == zzaxiVar.f11500a && this.f11501b == zzaxiVar.f11501b && this.count == zzaxiVar.count && Double.compare(this.zzdtz, zzaxiVar.zzdtz) == 0;
    }

    public final int hashCode() {
        return Objects.hashCode(this.name, Double.valueOf(this.f11500a), Double.valueOf(this.f11501b), Double.valueOf(this.zzdtz), Integer.valueOf(this.count));
    }

    public final String toString() {
        return Objects.toStringHelper(this).add(AppMeasurementSdk.ConditionalUserProperty.NAME, this.name).add("minBound", Double.valueOf(this.f11501b)).add("maxBound", Double.valueOf(this.f11500a)).add("percent", Double.valueOf(this.zzdtz)).add("count", Integer.valueOf(this.count)).toString();
    }
}
