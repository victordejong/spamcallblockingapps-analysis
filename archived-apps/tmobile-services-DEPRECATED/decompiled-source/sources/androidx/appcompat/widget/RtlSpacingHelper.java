package androidx.appcompat.widget;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/RtlSpacingHelper.class */
class RtlSpacingHelper {

    /* renamed from: a */
    private int f1166a = 0;

    /* renamed from: b */
    private int f1167b = 0;

    /* renamed from: c */
    private int f1168c = Integer.MIN_VALUE;

    /* renamed from: d */
    private int f1169d = Integer.MIN_VALUE;

    /* renamed from: e */
    private int f1170e = 0;

    /* renamed from: f */
    private int f1171f = 0;

    /* renamed from: g */
    private boolean f1172g = false;

    /* renamed from: h */
    private boolean f1173h = false;

    /* renamed from: a */
    public int m21374a() {
        return this.f1172g ? this.f1166a : this.f1167b;
    }

    /* renamed from: b */
    public int m21373b() {
        return this.f1166a;
    }

    /* renamed from: c */
    public int m21372c() {
        return this.f1167b;
    }

    /* renamed from: d */
    public int m21371d() {
        return this.f1172g ? this.f1167b : this.f1166a;
    }

    /* renamed from: e */
    public void m21370e(int i, int i2) {
        this.f1173h = false;
        if (i != Integer.MIN_VALUE) {
            this.f1170e = i;
            this.f1166a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1171f = i2;
            this.f1167b = i2;
        }
    }

    /* renamed from: f */
    public void m21369f(boolean z) {
        if (z != this.f1172g) {
            this.f1172g = z;
            if (!this.f1173h) {
                this.f1166a = this.f1170e;
                this.f1167b = this.f1171f;
            } else if (z) {
                int i = this.f1169d;
                if (i == Integer.MIN_VALUE) {
                    i = this.f1170e;
                }
                this.f1166a = i;
                int i2 = this.f1168c;
                if (i2 == Integer.MIN_VALUE) {
                    i2 = this.f1171f;
                }
                this.f1167b = i2;
            } else {
                int i3 = this.f1168c;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = this.f1170e;
                }
                this.f1166a = i3;
                int i4 = this.f1169d;
                if (i4 == Integer.MIN_VALUE) {
                    i4 = this.f1171f;
                }
                this.f1167b = i4;
            }
        }
    }

    /* renamed from: g */
    public void m21368g(int i, int i2) {
        this.f1168c = i;
        this.f1169d = i2;
        this.f1173h = true;
        if (this.f1172g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1166a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f1167b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1166a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1167b = i2;
        }
    }
}
