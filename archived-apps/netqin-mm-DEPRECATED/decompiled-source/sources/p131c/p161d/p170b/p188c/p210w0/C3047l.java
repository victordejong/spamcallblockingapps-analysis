package p131c.p161d.p170b.p188c.p210w0;

import com.google.android.exoplayer2.metadata.Metadata;
import java.io.EOFException;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p220y0.p222b.C3207b;
/* renamed from: c.d.b.c.w0.l */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/l.class */
public final class C3047l {

    /* renamed from: a */
    public final C2904v f10974a = new C2904v(10);

    /* renamed from: a */
    public Metadata m28041a(AbstractC3043h hVar, C3207b.AbstractC3208a aVar) throws IOException, InterruptedException {
        Metadata metadata = null;
        int i = 0;
        while (true) {
            try {
                hVar.mo28055a(this.f10974a.f10530a, 0, 10);
                this.f10974a.m28538e(0);
                if (this.f10974a.m28521u() != 4801587) {
                    break;
                }
                this.f10974a.m28536f(3);
                int q = this.f10974a.m28525q();
                int i2 = q + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.f10974a.f10530a, 0, bArr, 0, 10);
                    hVar.mo28055a(bArr, 10, q);
                    metadata = new C3207b(aVar).m27431a(bArr, i2);
                } else {
                    hVar.mo28057a(q);
                }
                i += i2;
            } catch (EOFException e) {
            }
        }
        hVar.mo28050c();
        hVar.mo28057a(i);
        return metadata;
    }
}
