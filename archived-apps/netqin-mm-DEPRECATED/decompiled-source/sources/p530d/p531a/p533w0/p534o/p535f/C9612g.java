package p530d.p531a.p533w0.p534o.p535f;
/* renamed from: d.a.w0.o.f.g */
/* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/g.class */
public final class C9612g {

    /* renamed from: a */
    public int f36685a;

    /* renamed from: b */
    public int f36686b;

    /* renamed from: c */
    public int f36687c;

    /* renamed from: d */
    public final int[] f36688d = new int[10];

    /* renamed from: a */
    public int m2188a() {
        return (this.f36685a & 2) != 0 ? this.f36688d[1] : -1;
    }

    /* renamed from: a */
    public int m2187a(int i) {
        return this.f36688d[i];
    }

    /* renamed from: a */
    public C9612g m2186a(int i, int i2, int i3) {
        if (i >= this.f36688d.length) {
            return this;
        }
        int i4 = 1 << i;
        this.f36685a |= i4;
        if ((i2 & 1) != 0) {
            this.f36686b |= i4;
        } else {
            this.f36686b &= i4 ^ (-1);
        }
        if ((i2 & 2) != 0) {
            this.f36687c |= i4;
        } else {
            this.f36687c &= i4 ^ (-1);
        }
        this.f36688d[i] = i3;
        return this;
    }

    /* renamed from: b */
    public int m2185b() {
        return Integer.bitCount(this.f36685a);
    }

    /* renamed from: b */
    public int m2184b(int i) {
        if ((this.f36685a & 32) != 0) {
            i = this.f36688d[5];
        }
        return i;
    }

    /* renamed from: c */
    public boolean m2183c(int i) {
        boolean z = true;
        if (((1 << i) & this.f36685a) == 0) {
            z = false;
        }
        return z;
    }
}
