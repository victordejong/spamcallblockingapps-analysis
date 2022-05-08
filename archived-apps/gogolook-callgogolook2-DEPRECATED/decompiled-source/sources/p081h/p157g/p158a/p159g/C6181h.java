package p081h.p157g.p158a.p159g;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p081h.p157g.p158a.p159g.AbstractC6172c;
/* renamed from: h.g.a.g.h */
/* loaded from: classes2-dex2jar.jar:h/g/a/g/h.class */
public class C6181h extends AbstractC6172c.AbstractC6175c {
    public C6181h(C6179f fVar, AbstractC6172c.AbstractC6174b bVar, long j) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(bVar.f15332a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = bVar.f15333b + (j * bVar.f15335d);
        this.f15338a = fVar.m23636e(allocate, j2);
        this.f15339b = fVar.m23638c(allocate, 8 + j2);
        this.f15340c = fVar.m23638c(allocate, 16 + j2);
        this.f15341d = fVar.m23638c(allocate, j2 + 40);
    }
}
