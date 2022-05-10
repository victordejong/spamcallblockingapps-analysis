package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdql.class */
public final class zzdql implements zzdqj {

    /* renamed from: a */
    public final String f27749a;

    public zzdql(String str) {
        this.f27749a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdqj
    public final boolean equals(Object obj) {
        if (!(obj instanceof zzdql)) {
            return false;
        }
        return this.f27749a.equals(((zzdql) obj).f27749a);
    }

    @Override // com.google.android.gms.internal.ads.zzdqj
    public final int hashCode() {
        return this.f27749a.hashCode();
    }

    public final String toString() {
        return this.f27749a;
    }
}
