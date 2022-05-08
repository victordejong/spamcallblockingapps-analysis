package p081h.p157g.p158a.p159g;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p081h.p157g.p158a.p159g.AbstractC6172c;
/* renamed from: h.g.a.g.b */
/* loaded from: classes2-dex2jar.jar:h/g/a/g/b.class */
public class C6171b extends AbstractC6172c.AbstractC6173a {
    public C6171b(C6179f fVar, AbstractC6172c.AbstractC6174b bVar, long j, int i) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(bVar.f15332a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = j + (i * 16);
        this.f15330a = fVar.m23638c(allocate, j2);
        this.f15331b = fVar.m23638c(allocate, j2 + 8);
    }
}
