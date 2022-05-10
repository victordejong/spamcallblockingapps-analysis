package p573f.p594y;

import java.util.Random;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.y.a */
/* loaded from: classes2-dex2jar.jar:f/y/a.class */
public abstract class AbstractC10069a extends AbstractC10073d {
    @Override // p573f.p594y.AbstractC10073d
    /* renamed from: a */
    public int mo1591a(int i) {
        return C10076e.m1579b(mo1595g().nextInt(), i);
    }

    @Override // p573f.p594y.AbstractC10073d
    /* renamed from: a */
    public boolean mo1592a() {
        return mo1595g().nextBoolean();
    }

    @Override // p573f.p594y.AbstractC10073d
    /* renamed from: a */
    public byte[] mo1589a(byte[] bArr) {
        C10059q.m1637b(bArr, "array");
        mo1595g().nextBytes(bArr);
        return bArr;
    }

    @Override // p573f.p594y.AbstractC10073d
    /* renamed from: b */
    public double mo1587b() {
        return mo1595g().nextDouble();
    }

    @Override // p573f.p594y.AbstractC10073d
    /* renamed from: b */
    public int mo1586b(int i) {
        return mo1595g().nextInt(i);
    }

    @Override // p573f.p594y.AbstractC10073d
    /* renamed from: c */
    public float mo1585c() {
        return mo1595g().nextFloat();
    }

    @Override // p573f.p594y.AbstractC10073d
    /* renamed from: d */
    public int mo1584d() {
        return mo1595g().nextInt();
    }

    @Override // p573f.p594y.AbstractC10073d
    /* renamed from: e */
    public long mo1583e() {
        return mo1595g().nextLong();
    }

    /* renamed from: g */
    public abstract Random mo1595g();
}
