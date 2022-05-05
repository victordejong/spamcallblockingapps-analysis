package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxl.class */
public final class zzaxl {

    /* renamed from: a */
    private final List<String> f11505a = new ArrayList();

    /* renamed from: b */
    private final List<Double> f11506b = new ArrayList();

    /* renamed from: c */
    private final List<Double> f11507c = new ArrayList();

    public final zzaxl zza(String str, double d, double d2) {
        int i = 0;
        while (i < this.f11505a.size()) {
            double doubleValue = this.f11507c.get(i).doubleValue();
            double doubleValue2 = this.f11506b.get(i).doubleValue();
            if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                break;
            }
            i++;
        }
        this.f11505a.add(i, str);
        this.f11507c.add(i, Double.valueOf(d));
        this.f11506b.add(i, Double.valueOf(d2));
        return this;
    }

    public final zzaxg zzxa() {
        return new zzaxg(this, (byte) 0);
    }
}
