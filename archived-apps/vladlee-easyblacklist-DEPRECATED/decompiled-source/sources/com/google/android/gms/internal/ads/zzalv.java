package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalv.class */
public final class zzalv implements MediationAdRequest {

    /* renamed from: a */
    private final Date f11027a;

    /* renamed from: b */
    private final int f11028b;

    /* renamed from: c */
    private final Set<String> f11029c;

    /* renamed from: d */
    private final boolean f11030d;

    /* renamed from: e */
    private final Location f11031e;

    /* renamed from: f */
    private final int f11032f;

    /* renamed from: g */
    private final boolean f11033g;

    /* renamed from: h */
    private final int f11034h;

    /* renamed from: i */
    private final String f11035i;

    public zzalv(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2, int i3, String str) {
        this.f11027a = date;
        this.f11028b = i;
        this.f11029c = set;
        this.f11031e = location;
        this.f11030d = z;
        this.f11032f = i2;
        this.f11033g = z2;
        this.f11034h = i3;
        this.f11035i = str;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.f11027a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.f11028b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.f11029c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.f11031e;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.f11033g;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.f11030d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.f11032f;
    }
}
