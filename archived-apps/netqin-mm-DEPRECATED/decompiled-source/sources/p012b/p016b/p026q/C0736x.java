package p012b.p016b.p026q;
/* renamed from: b.b.q.x */
/* loaded from: classes-dex2jar.jar:b/b/q/x.class */
public class C0736x {

    /* renamed from: a */
    public int f3553a = 0;

    /* renamed from: b */
    public int f3554b = 0;

    /* renamed from: c */
    public int f3555c = Integer.MIN_VALUE;

    /* renamed from: d */
    public int f3556d = Integer.MIN_VALUE;

    /* renamed from: e */
    public int f3557e = 0;

    /* renamed from: f */
    public int f3558f = 0;

    /* renamed from: g */
    public boolean f3559g = false;

    /* renamed from: h */
    public boolean f3560h = false;

    /* renamed from: a */
    public int m36182a() {
        return this.f3559g ? this.f3553a : this.f3554b;
    }

    /* renamed from: a */
    public void m36181a(int i, int i2) {
        this.f3560h = false;
        if (i != Integer.MIN_VALUE) {
            this.f3557e = i;
            this.f3553a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f3558f = i2;
            this.f3554b = i2;
        }
    }

    /* renamed from: a */
    public void m36180a(boolean z) {
        if (z != this.f3559g) {
            this.f3559g = z;
            if (!this.f3560h) {
                this.f3553a = this.f3557e;
                this.f3554b = this.f3558f;
            } else if (z) {
                int i = this.f3556d;
                if (i == Integer.MIN_VALUE) {
                    i = this.f3557e;
                }
                this.f3553a = i;
                int i2 = this.f3555c;
                if (i2 == Integer.MIN_VALUE) {
                    i2 = this.f3558f;
                }
                this.f3554b = i2;
            } else {
                int i3 = this.f3555c;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = this.f3557e;
                }
                this.f3553a = i3;
                int i4 = this.f3556d;
                if (i4 == Integer.MIN_VALUE) {
                    i4 = this.f3558f;
                }
                this.f3554b = i4;
            }
        }
    }

    /* renamed from: b */
    public int m36179b() {
        return this.f3553a;
    }

    /* renamed from: b */
    public void m36178b(int i, int i2) {
        this.f3555c = i;
        this.f3556d = i2;
        this.f3560h = true;
        if (this.f3559g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f3553a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f3554b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f3553a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f3554b = i2;
        }
    }

    /* renamed from: c */
    public int m36177c() {
        return this.f3554b;
    }

    /* renamed from: d */
    public int m36176d() {
        return this.f3559g ? this.f3554b : this.f3553a;
    }
}
