package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzany.class */
public final class zzany implements MediationAdRequest {

    /* renamed from: a */
    public final Date f24210a;

    /* renamed from: b */
    public final int f24211b;

    /* renamed from: c */
    public final Set<String> f24212c;

    /* renamed from: d */
    public final boolean f24213d;

    /* renamed from: e */
    public final Location f24214e;

    /* renamed from: f */
    public final int f24215f;

    /* renamed from: g */
    public final boolean f24216g;

    public zzany(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2, int i3, String str) {
        this.f24210a = date;
        this.f24211b = i;
        this.f24212c = set;
        this.f24214e = location;
        this.f24213d = z;
        this.f24215f = i2;
        this.f24216g = z2;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    /* renamed from: c */
    public final int mo16533c() {
        return this.f24215f;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    /* renamed from: e */
    public final boolean mo16531e() {
        return this.f24216g;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    /* renamed from: g */
    public final Date mo16529g() {
        return this.f24210a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    /* renamed from: h */
    public final Set<String> mo16528h() {
        return this.f24212c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.f24213d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    /* renamed from: j */
    public final Location mo16526j() {
        return this.f24214e;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    /* renamed from: l */
    public final int mo16524l() {
        return this.f24211b;
    }
}
