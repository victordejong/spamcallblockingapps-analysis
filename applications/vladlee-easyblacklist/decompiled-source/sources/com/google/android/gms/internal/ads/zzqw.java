package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqw.class */
public final class zzqw {

    /* renamed from: a */
    final long f15413a;

    /* renamed from: b */
    final String f15414b;

    /* renamed from: c */
    final int f15415c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqw(long j, String str, int i) {
        this.f15413a = j;
        this.f15414b = str;
        this.f15415c = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzqw)) {
            return false;
        }
        zzqw zzqwVar = (zzqw) obj;
        return zzqwVar.f15413a == this.f15413a && zzqwVar.f15415c == this.f15415c;
    }

    public final int hashCode() {
        return (int) this.f15413a;
    }
}
