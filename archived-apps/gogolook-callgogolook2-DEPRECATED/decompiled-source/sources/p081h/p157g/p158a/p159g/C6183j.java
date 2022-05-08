package p081h.p157g.p158a.p159g;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p081h.p157g.p158a.p159g.AbstractC6172c;
/* renamed from: h.g.a.g.j */
/* loaded from: classes2-dex2jar.jar:h/g/a/g/j.class */
public class C6183j extends AbstractC6172c.AbstractC6176d {
    public C6183j(C6179f fVar, AbstractC6172c.AbstractC6174b bVar, int i) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(bVar.f15332a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f15342a = fVar.m23636e(allocate, bVar.f15334c + (i * bVar.f15337f) + 44);
    }
}
