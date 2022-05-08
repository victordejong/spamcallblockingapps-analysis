package androidx.recyclerview.widget;
/* renamed from: androidx.recyclerview.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c.class */
public final class C1112c implements AbstractC1145w {

    /* renamed from: a */
    final AbstractC1145w f4769a;

    /* renamed from: b */
    int f4770b = 0;

    /* renamed from: c */
    int f4771c = -1;

    /* renamed from: d */
    int f4772d = -1;

    /* renamed from: e */
    Object f4773e = null;

    public C1112c(AbstractC1145w wVar) {
        this.f4769a = wVar;
    }

    /* renamed from: a */
    public final void m6810a() {
        int i = this.f4770b;
        if (i != 0) {
            if (i == 1) {
                this.f4769a.mo6723a(this.f4771c, this.f4772d);
            } else if (i == 2) {
                this.f4769a.mo6721b(this.f4771c, this.f4772d);
            } else if (i == 3) {
                this.f4769a.mo6722a(this.f4771c, this.f4772d, this.f4773e);
            }
            this.f4773e = null;
            this.f4770b = 0;
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC1145w
    /* renamed from: a */
    public final void mo6723a(int i, int i2) {
        int i3;
        if (this.f4770b == 1 && i >= (i3 = this.f4771c)) {
            int i4 = this.f4772d;
            if (i <= i3 + i4) {
                this.f4772d = i4 + i2;
                this.f4771c = Math.min(i, i3);
                return;
            }
        }
        m6810a();
        this.f4771c = i;
        this.f4772d = i2;
        this.f4770b = 1;
    }

    @Override // androidx.recyclerview.widget.AbstractC1145w
    /* renamed from: a */
    public final void mo6722a(int i, int i2, Object obj) {
        int i3;
        if (this.f4770b == 3) {
            int i4 = this.f4771c;
            int i5 = this.f4772d;
            if (i <= i4 + i5 && (i3 = i + i2) >= i4 && this.f4773e == obj) {
                this.f4771c = Math.min(i, i4);
                this.f4772d = Math.max(i5 + i4, i3) - this.f4771c;
                return;
            }
        }
        m6810a();
        this.f4771c = i;
        this.f4772d = i2;
        this.f4773e = obj;
        this.f4770b = 3;
    }

    @Override // androidx.recyclerview.widget.AbstractC1145w
    /* renamed from: b */
    public final void mo6721b(int i, int i2) {
        int i3;
        if (this.f4770b != 2 || (i3 = this.f4771c) < i || i3 > i + i2) {
            m6810a();
            this.f4771c = i;
            this.f4772d = i2;
            this.f4770b = 2;
            return;
        }
        this.f4772d += i2;
        this.f4771c = i;
    }

    @Override // androidx.recyclerview.widget.AbstractC1145w
    /* renamed from: c */
    public final void mo6720c(int i, int i2) {
        m6810a();
        this.f4769a.mo6720c(i, i2);
    }
}
