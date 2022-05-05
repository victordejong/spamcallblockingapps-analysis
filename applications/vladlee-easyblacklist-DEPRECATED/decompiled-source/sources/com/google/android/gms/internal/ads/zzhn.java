package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhn.class */
public final class zzhn {

    /* renamed from: a */
    private static final zzhn f14846a = new zzhn(new int[]{2});

    /* renamed from: b */
    private final int[] f14847b;

    /* renamed from: c */
    private final int f14848c = 2;

    private zzhn(int[] iArr) {
        this.f14847b = Arrays.copyOf(iArr, 1);
        Arrays.sort(this.f14847b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhn)) {
            return false;
        }
        zzhn zzhnVar = (zzhn) obj;
        return Arrays.equals(this.f14847b, zzhnVar.f14847b) && this.f14848c == zzhnVar.f14848c;
    }

    public final int hashCode() {
        return this.f14848c + (Arrays.hashCode(this.f14847b) * 31);
    }

    public final String toString() {
        int i = this.f14848c;
        String arrays = Arrays.toString(this.f14847b);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }

    public final boolean zzq(int i) {
        return Arrays.binarySearch(this.f14847b, i) >= 0;
    }
}
