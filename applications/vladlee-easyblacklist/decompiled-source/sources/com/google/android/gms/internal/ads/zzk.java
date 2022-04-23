package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzk.class */
public final class zzk {

    /* renamed from: a */
    private final String f15022a;

    /* renamed from: b */
    private final String f15023b;

    public zzk(String str, String str2) {
        this.f15022a = str;
        this.f15023b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzk zzkVar = (zzk) obj;
        return TextUtils.equals(this.f15022a, zzkVar.f15022a) && TextUtils.equals(this.f15023b, zzkVar.f15023b);
    }

    public final String getName() {
        return this.f15022a;
    }

    public final String getValue() {
        return this.f15023b;
    }

    public final int hashCode() {
        return (this.f15022a.hashCode() * 31) + this.f15023b.hashCode();
    }

    public final String toString() {
        String str = this.f15022a;
        String str2 = this.f15023b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length());
        sb.append("Header[name=");
        sb.append(str);
        sb.append(",value=");
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }
}
