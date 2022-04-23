package androidx.appcompat.widget;
/* renamed from: androidx.appcompat.widget.ar */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ar.class */
final class C0459ar {

    /* renamed from: a */
    private int f2260a = 0;

    /* renamed from: b */
    private int f2261b = 0;

    /* renamed from: c */
    private int f2262c = Integer.MIN_VALUE;

    /* renamed from: d */
    private int f2263d = Integer.MIN_VALUE;

    /* renamed from: e */
    private int f2264e = 0;

    /* renamed from: f */
    private int f2265f = 0;

    /* renamed from: g */
    private boolean f2266g = false;

    /* renamed from: h */
    private boolean f2267h = false;

    /* renamed from: a */
    public final int m9129a() {
        return this.f2266g ? this.f2261b : this.f2260a;
    }

    /* renamed from: a */
    public final void m9128a(int i, int i2) {
        this.f2262c = i;
        this.f2263d = i2;
        this.f2267h = true;
        if (this.f2266g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f2260a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f2261b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f2260a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f2261b = i2;
        }
    }

    /* renamed from: a */
    public final void m9127a(boolean z) {
        if (z != this.f2266g) {
            this.f2266g = z;
            if (!this.f2267h) {
                this.f2260a = this.f2264e;
                this.f2261b = this.f2265f;
            } else if (z) {
                int i = this.f2263d;
                if (i == Integer.MIN_VALUE) {
                    i = this.f2264e;
                }
                this.f2260a = i;
                int i2 = this.f2262c;
                if (i2 == Integer.MIN_VALUE) {
                    i2 = this.f2265f;
                }
                this.f2261b = i2;
            } else {
                int i3 = this.f2262c;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = this.f2264e;
                }
                this.f2260a = i3;
                int i4 = this.f2263d;
                if (i4 == Integer.MIN_VALUE) {
                    i4 = this.f2265f;
                }
                this.f2261b = i4;
            }
        }
    }

    /* renamed from: b */
    public final int m9126b() {
        return this.f2266g ? this.f2260a : this.f2261b;
    }

    /* renamed from: b */
    public final void m9125b(int i, int i2) {
        this.f2267h = false;
        if (i != Integer.MIN_VALUE) {
            this.f2264e = i;
            this.f2260a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f2265f = i2;
            this.f2261b = i2;
        }
    }
}
