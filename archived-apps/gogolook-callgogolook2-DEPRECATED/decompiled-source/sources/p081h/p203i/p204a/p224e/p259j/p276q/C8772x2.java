package p081h.p203i.p204a.p224e.p259j.p276q;

import gogolook.callgogolook2.gson.UserProfile;
/* renamed from: h.i.a.e.j.q.x2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/x2.class */
public final class C8772x2 extends C8567c3 {

    /* renamed from: e */
    public final int f20109e;

    /* renamed from: f */
    public final int f20110f;

    public C8772x2(byte[] bArr, int i, int i2) {
        super(bArr);
        AbstractC8736t2.m17171b(i, i + i2, bArr.length);
        this.f20109e = i;
        this.f20110f = i2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8567c3, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8736t2
    /* renamed from: g */
    public final byte mo17073g(int i) {
        int size = size();
        if (((size - (i + 1)) | i) >= 0) {
            return this.f19623d[this.f20109e + i];
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

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8567c3
    /* renamed from: r */
    public final int mo17072r() {
        return this.f20109e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8567c3, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8736t2
    public final int size() {
        return this.f20110f;
    }
}
