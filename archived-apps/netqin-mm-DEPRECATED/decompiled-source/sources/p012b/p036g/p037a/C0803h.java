package p012b.p036g.p037a;
/* renamed from: b.g.a.h */
/* loaded from: classes-dex2jar.jar:b/g/a/h.class */
public class C0803h<T> implements AbstractC0802g<T> {

    /* renamed from: a */
    public final Object[] f3778a;

    /* renamed from: b */
    public int f3779b;

    public C0803h(int i) {
        if (i > 0) {
            this.f3778a = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    @Override // p012b.p036g.p037a.AbstractC0802g
    /* renamed from: a */
    public void mo35927a(T[] tArr, int i) {
        int i2 = i;
        if (i > tArr.length) {
            i2 = tArr.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            T t = tArr[i3];
            int i4 = this.f3779b;
            Object[] objArr = this.f3778a;
            if (i4 < objArr.length) {
                objArr[i4] = t;
                this.f3779b = i4 + 1;
            }
        }
    }

    @Override // p012b.p036g.p037a.AbstractC0802g
    /* renamed from: a */
    public boolean mo35928a(T t) {
        int i = this.f3779b;
        Object[] objArr = this.f3778a;
        if (i >= objArr.length) {
            return false;
        }
        objArr[i] = t;
        this.f3779b = i + 1;
        return true;
    }

    @Override // p012b.p036g.p037a.AbstractC0802g
    /* renamed from: b */
    public T mo35926b() {
        int i = this.f3779b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.f3778a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.f3779b = i - 1;
        return t;
    }
}
