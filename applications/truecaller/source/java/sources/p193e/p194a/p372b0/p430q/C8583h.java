package p193e.p194a.p372b0.p430q;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.l;
/* renamed from: e.a.b0.q.h */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/h.class */
public final class C8583h extends FilterOutputStream {

    /* renamed from: a */
    public long f26401a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8583h(OutputStream outputStream) {
        super(outputStream);
        l.e(outputStream, "out");
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        ((FilterOutputStream) this).out.write(i);
        this.f26401a++;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        l.e(bArr, C22021b.f61237c);
        ((FilterOutputStream) this).out.write(bArr);
        this.f26401a += bArr.length;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        l.e(bArr, C22021b.f61237c);
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        this.f26401a += i2;
    }
}
