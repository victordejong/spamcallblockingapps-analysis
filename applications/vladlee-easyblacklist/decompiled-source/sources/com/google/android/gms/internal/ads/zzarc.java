package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarc.class */
public final class zzarc extends zzarh {

    /* renamed from: a */
    private final String f11328a;

    /* renamed from: b */
    private final int f11329b;

    public zzarc(String str, int i) {
        this.f11328a = str;
        this.f11329b = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzarc)) {
            return false;
        }
        zzarc zzarcVar = (zzarc) obj;
        return Objects.equal(this.f11328a, zzarcVar.f11328a) && Objects.equal(Integer.valueOf(this.f11329b), Integer.valueOf(zzarcVar.f11329b));
    }

    @Override // com.google.android.gms.internal.ads.zzare
    public final int getAmount() {
        return this.f11329b;
    }

    @Override // com.google.android.gms.internal.ads.zzare
    public final String getType() {
        return this.f11328a;
    }
}
