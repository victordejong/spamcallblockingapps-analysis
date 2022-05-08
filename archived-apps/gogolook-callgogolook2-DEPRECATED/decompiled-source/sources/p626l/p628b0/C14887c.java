package p626l.p628b0;

import java.util.NoSuchElementException;
import p626l.p632u.AbstractC14993a0;
/* renamed from: l.b0.c */
/* loaded from: classes3-dex2jar.jar:l/b0/c.class */
public final class C14887c extends AbstractC14993a0 {

    /* renamed from: a */
    public final int f32939a;

    /* renamed from: b */
    public boolean f32940b;

    /* renamed from: c */
    public int f32941c;

    /* renamed from: d */
    public final int f32942d;

    public C14887c(int i, int i2, int i3) {
        this.f32942d = i3;
        this.f32939a = i2;
        boolean z = true;
        if (this.f32942d <= 0 ? i < i2 : i > i2) {
            z = false;
        }
        this.f32940b = z;
        this.f32941c = !this.f32940b ? this.f32939a : i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f32940b;
    }

    @Override // p626l.p632u.AbstractC14993a0
    public int nextInt() {
        int i = this.f32941c;
        if (i != this.f32939a) {
            this.f32941c = this.f32942d + i;
        } else if (this.f32940b) {
            this.f32940b = false;
        } else {
            throw new NoSuchElementException();
        }
        return i;
    }
}
