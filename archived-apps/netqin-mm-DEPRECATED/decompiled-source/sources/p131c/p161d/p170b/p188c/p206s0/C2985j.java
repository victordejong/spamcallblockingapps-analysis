package p131c.p161d.p170b.p188c.p206s0;

import java.util.Arrays;
/* renamed from: c.d.b.c.s0.j */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/j.class */
public final class C2985j {

    /* renamed from: a */
    public final int[] f10737a;

    /* renamed from: b */
    public final int f10738b;

    static {
        new C2985j(new int[]{2}, 8);
        new C2985j(new int[]{2, 5, 6}, 8);
    }

    public C2985j(int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f10737a = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f10737a = new int[0];
        }
        this.f10738b = i;
    }

    /* renamed from: a */
    public int m28298a() {
        return this.f10738b;
    }

    /* renamed from: a */
    public boolean m28297a(int i) {
        return Arrays.binarySearch(this.f10737a, i) >= 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2985j)) {
            return false;
        }
        C2985j jVar = (C2985j) obj;
        if (!Arrays.equals(this.f10737a, jVar.f10737a) || this.f10738b != jVar.f10738b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f10738b + (Arrays.hashCode(this.f10737a) * 31);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f10738b + ", supportedEncodings=" + Arrays.toString(this.f10737a) + "]";
    }
}
