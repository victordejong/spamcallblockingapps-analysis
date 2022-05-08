package com.google.android.gms.common.images;

import androidx.appcompat.C0247a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/Size.class */
public final class Size {

    /* renamed from: a */
    private final int f6661a;

    /* renamed from: b */
    private final int f6662b;

    public Size(int i, int i2) {
        this.f6661a = i;
        this.f6662b = i2;
    }

    /* renamed from: a */
    private static NumberFormatException m5732a(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 16);
        sb.append("Invalid Size: \"");
        sb.append(str);
        sb.append("\"");
        throw new NumberFormatException(sb.toString());
    }

    public static Size parseSize(String str) {
        if (str != null) {
            int indexOf = str.indexOf(42);
            int i = indexOf;
            if (indexOf < 0) {
                i = str.indexOf(C0247a.C0257j.f778aL);
            }
            if (i >= 0) {
                try {
                    return new Size(Integer.parseInt(str.substring(0, i)), Integer.parseInt(str.substring(i + 1)));
                } catch (NumberFormatException e) {
                    throw m5732a(str);
                }
            } else {
                throw m5732a(str);
            }
        } else {
            throw new IllegalArgumentException("string must not be null");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return this.f6661a == size.f6661a && this.f6662b == size.f6662b;
    }

    public final int getHeight() {
        return this.f6662b;
    }

    public final int getWidth() {
        return this.f6661a;
    }

    public final int hashCode() {
        int i = this.f6662b;
        int i2 = this.f6661a;
        return ((i2 >>> 16) | (i2 << 16)) ^ i;
    }

    public final String toString() {
        int i = this.f6661a;
        int i2 = this.f6662b;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        return sb.toString();
    }
}
