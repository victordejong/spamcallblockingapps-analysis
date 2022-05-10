package p610i;
/* renamed from: i.n */
/* loaded from: classes2-dex2jar.jar:i/n.class */
public final class C10278n {

    /* renamed from: a */
    public final byte[] f37917a;

    /* renamed from: b */
    public int f37918b;

    /* renamed from: c */
    public int f37919c;

    /* renamed from: d */
    public boolean f37920d;

    /* renamed from: e */
    public boolean f37921e;

    /* renamed from: f */
    public C10278n f37922f;

    /* renamed from: g */
    public C10278n f37923g;

    public C10278n() {
        this.f37917a = new byte[8192];
        this.f37921e = true;
        this.f37920d = false;
    }

    public C10278n(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f37917a = bArr;
        this.f37918b = i;
        this.f37919c = i2;
        this.f37920d = z;
        this.f37921e = z2;
    }

    /* renamed from: a */
    public final C10278n m713a(int i) {
        C10278n nVar;
        if (i <= 0 || i > this.f37919c - this.f37918b) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            nVar = m709c();
        } else {
            nVar = C10279o.m708a();
            System.arraycopy(this.f37917a, this.f37918b, nVar.f37917a, 0, i);
        }
        nVar.f37919c = nVar.f37918b + i;
        this.f37918b += i;
        this.f37923g.m712a(nVar);
        return nVar;
    }

    /* renamed from: a */
    public final C10278n m712a(C10278n nVar) {
        nVar.f37923g = this;
        nVar.f37922f = this.f37922f;
        this.f37922f.f37923g = nVar;
        this.f37922f = nVar;
        return nVar;
    }

    /* renamed from: a */
    public final void m714a() {
        C10278n nVar = this.f37923g;
        if (nVar == this) {
            throw new IllegalStateException();
        } else if (nVar.f37921e) {
            int i = this.f37919c - this.f37918b;
            if (i <= (8192 - nVar.f37919c) + (nVar.f37920d ? 0 : nVar.f37918b)) {
                m711a(this.f37923g, i);
                m710b();
                C10279o.m707a(this);
            }
        }
    }

    /* renamed from: a */
    public final void m711a(C10278n nVar, int i) {
        if (nVar.f37921e) {
            int i2 = nVar.f37919c;
            if (i2 + i > 8192) {
                if (!nVar.f37920d) {
                    int i3 = nVar.f37918b;
                    if ((i2 + i) - i3 <= 8192) {
                        byte[] bArr = nVar.f37917a;
                        System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
                        nVar.f37919c -= nVar.f37918b;
                        nVar.f37918b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f37917a, this.f37918b, nVar.f37917a, nVar.f37919c, i);
            nVar.f37919c += i;
            this.f37918b += i;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public final C10278n m710b() {
        C10278n nVar = this.f37922f;
        if (nVar == this) {
            nVar = null;
        }
        C10278n nVar2 = this.f37923g;
        nVar2.f37922f = this.f37922f;
        this.f37922f.f37923g = nVar2;
        this.f37922f = null;
        this.f37923g = null;
        return nVar;
    }

    /* renamed from: c */
    public final C10278n m709c() {
        this.f37920d = true;
        return new C10278n(this.f37917a, this.f37918b, this.f37919c, true, false);
    }
}
