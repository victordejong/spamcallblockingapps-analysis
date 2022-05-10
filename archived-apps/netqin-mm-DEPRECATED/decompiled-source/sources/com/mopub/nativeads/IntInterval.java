package com.mopub.nativeads;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/IntInterval.class */
public class IntInterval implements Comparable<IntInterval> {

    /* renamed from: a */
    public int f34654a;

    /* renamed from: b */
    public int f34655b;

    public IntInterval(int i, int i2) {
        this.f34654a = i;
        this.f34655b = i2;
    }

    public int compareTo(IntInterval intInterval) {
        int i = this.f34654a;
        int i2 = intInterval.f34654a;
        return i == i2 ? this.f34655b - intInterval.f34655b : i - i2;
    }

    public boolean equals(int i, int i2) {
        return this.f34654a == i && this.f34655b == i2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntInterval)) {
            return false;
        }
        IntInterval intInterval = (IntInterval) obj;
        if (!(this.f34654a == intInterval.f34654a && this.f34655b == intInterval.f34655b)) {
            z = false;
        }
        return z;
    }

    public int getLength() {
        return this.f34655b;
    }

    public int getStart() {
        return this.f34654a;
    }

    public int hashCode() {
        return ((899 + this.f34654a) * 31) + this.f34655b;
    }

    public void setLength(int i) {
        this.f34655b = i;
    }

    public void setStart(int i) {
        this.f34654a = i;
    }

    public String toString() {
        return "{start : " + this.f34654a + ", length : " + this.f34655b + "}";
    }
}
