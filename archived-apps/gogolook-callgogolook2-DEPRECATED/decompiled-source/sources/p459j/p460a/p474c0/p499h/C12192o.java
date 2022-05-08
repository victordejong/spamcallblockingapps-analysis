package p459j.p460a.p474c0.p499h;
/* renamed from: j.a.c0.h.o */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/o.class */
public class C12192o<E> {

    /* renamed from: a */
    public int f27350a;

    /* renamed from: b */
    public boolean f27351b;

    /* renamed from: c */
    public int f27352c;

    /* renamed from: d */
    public Object[] f27353d;

    public C12192o(int i) {
        this.f27352c = i;
        m6851a();
    }

    /* renamed from: a */
    public E m6850a(int i) {
        if (!this.f27351b) {
            return (E) this.f27353d[i];
        }
        int i2 = i + this.f27350a;
        int i3 = this.f27352c;
        int i4 = i2;
        if (i2 >= i3) {
            i4 = i2 - i3;
        }
        return (E) this.f27353d[i4];
    }

    /* renamed from: a */
    public void m6851a() {
        this.f27350a = 0;
        this.f27351b = false;
        this.f27353d = new Object[this.f27352c];
    }

    /* renamed from: a */
    public void m6849a(E e) {
        Object[] objArr = this.f27353d;
        int i = this.f27350a;
        objArr[i] = e;
        this.f27350a = i + 1;
        if (this.f27350a == this.f27352c) {
            this.f27350a = 0;
            this.f27351b = true;
        }
    }

    /* renamed from: b */
    public int m6848b() {
        return this.f27351b ? this.f27352c : this.f27350a;
    }

    /* renamed from: c */
    public E m6847c() {
        if (!this.f27351b) {
            return null;
        }
        return (E) this.f27353d[this.f27350a];
    }
}
