package androidx.media2.common;

import p012b.p130z.AbstractC1978c;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/VideoSize.class */
public final class VideoSize implements AbstractC1978c {

    /* renamed from: a */
    public int f1549a;

    /* renamed from: b */
    public int f1550b;

    public VideoSize() {
    }

    public VideoSize(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("width can not be negative");
        } else if (i2 >= 0) {
            this.f1549a = i;
            this.f1550b = i2;
        } else {
            throw new IllegalArgumentException("height can not be negative");
        }
    }

    /* renamed from: e */
    public int m38197e() {
        return this.f1550b;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        boolean z = false;
        if (obj instanceof VideoSize) {
            VideoSize videoSize = (VideoSize) obj;
            z = false;
            if (this.f1549a == videoSize.f1549a) {
                z = false;
                if (this.f1550b == videoSize.f1550b) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public int m38196f() {
        return this.f1549a;
    }

    public int hashCode() {
        int i = this.f1550b;
        int i2 = this.f1549a;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    public String toString() {
        return this.f1549a + "x" + this.f1550b;
    }
}
