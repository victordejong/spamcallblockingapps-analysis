package androidx.appcompat.widget;
/* renamed from: androidx.appcompat.widget.n0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/n0.class */
class C0120n0 {

    /* renamed from: a */
    private int f530a = 0;

    /* renamed from: b */
    private int f531b = 0;

    /* renamed from: c */
    private int f532c = Integer.MIN_VALUE;

    /* renamed from: d */
    private int f533d = Integer.MIN_VALUE;

    /* renamed from: e */
    private int f534e = 0;

    /* renamed from: f */
    private int f535f = 0;

    /* renamed from: g */
    private boolean f536g = false;

    /* renamed from: h */
    private boolean f537h = false;

    /* renamed from: a */
    public int m6512a() {
        return this.f536g ? this.f530a : this.f531b;
    }

    /* renamed from: b */
    public int m6511b() {
        return this.f530a;
    }

    /* renamed from: c */
    public int m6510c() {
        return this.f531b;
    }

    /* renamed from: d */
    public int m6509d() {
        return this.f536g ? this.f531b : this.f530a;
    }

    /* renamed from: e */
    public void m6508e(int i, int i2) {
        this.f537h = false;
        if (i != Integer.MIN_VALUE) {
            this.f534e = i;
            this.f530a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f535f = i2;
            this.f531b = i2;
        }
    }

    /* renamed from: f */
    public void m6507f(boolean z) {
        if (z == this.f536g) {
            return;
        }
        this.f536g = z;
        if (!this.f537h) {
            this.f530a = this.f534e;
            this.f531b = this.f535f;
        } else if (z) {
            int i = this.f533d;
            if (i == Integer.MIN_VALUE) {
                i = this.f534e;
            }
            this.f530a = i;
            int i2 = this.f532c;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f535f;
            }
            this.f531b = i2;
        } else {
            int i3 = this.f532c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = this.f534e;
            }
            this.f530a = i3;
            int i4 = this.f533d;
            if (i4 == Integer.MIN_VALUE) {
                i4 = this.f535f;
            }
            this.f531b = i4;
        }
    }

    /* renamed from: g */
    public void m6506g(int i, int i2) {
        this.f532c = i;
        this.f533d = i2;
        this.f537h = true;
        if (this.f536g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f530a = i2;
            }
            if (i == Integer.MIN_VALUE) {
                return;
            }
            this.f531b = i;
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f530a = i;
        }
        if (i2 == Integer.MIN_VALUE) {
            return;
        }
        this.f531b = i2;
    }
}
