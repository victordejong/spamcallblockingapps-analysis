package p081h.p203i.p204a.p224e.p259j.p266g;

import gogolook.callgogolook2.gson.UserProfile;
/* renamed from: h.i.a.e.j.g.d0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/d0.class */
public final class C7568d0 extends C7601h0 {

    /* renamed from: e */
    public final int f17805e;

    /* renamed from: f */
    public final int f17806f;

    public C7568d0(byte[] bArr, int i, int i2) {
        super(bArr);
        AbstractC7539a0.m20380b(i, i + i2, bArr.length);
        this.f17805e = i;
        this.f17806f = i2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7601h0, p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7539a0
    /* renamed from: g */
    public final byte mo20137g(int i) {
        int size = size();
        if (((size - (i + 1)) | i) >= 0) {
            return this.f17861d[this.f17805e + i];
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(UserProfile.CARD_CATE_SEPARATOR);
        sb2.append(size);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7601h0
    /* renamed from: r */
    public final int mo20136r() {
        return this.f17805e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7601h0, p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7539a0
    public final int size() {
        return this.f17806f;
    }
}
