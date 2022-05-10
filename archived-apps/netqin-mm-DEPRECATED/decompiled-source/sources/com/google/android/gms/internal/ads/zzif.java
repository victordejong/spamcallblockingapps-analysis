package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzif.class */
public final class zzif {

    /* renamed from: a */
    public final int[] f28319a;

    /* renamed from: b */
    public final int f28320b = 2;

    static {
        new zzif(new int[]{2}, 2);
    }

    public zzif(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        this.f28319a = copyOf;
        Arrays.sort(copyOf);
    }

    /* renamed from: a */
    public final boolean m11986a(int i) {
        return Arrays.binarySearch(this.f28319a, i) >= 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzif)) {
            return false;
        }
        zzif zzifVar = (zzif) obj;
        return Arrays.equals(this.f28319a, zzifVar.f28319a) && this.f28320b == zzifVar.f28320b;
    }

    public final int hashCode() {
        return this.f28320b + (Arrays.hashCode(this.f28319a) * 31);
    }

    public final String toString() {
        int i = this.f28320b;
        String arrays = Arrays.toString(this.f28319a);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
