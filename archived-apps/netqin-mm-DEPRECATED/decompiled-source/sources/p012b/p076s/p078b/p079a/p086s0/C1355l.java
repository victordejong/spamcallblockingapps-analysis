package p012b.p076s.p078b.p079a.p086s0;

import androidx.media2.exoplayer.external.metadata.Metadata;
import java.io.EOFException;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p096u0.p099h.C1524b;
/* renamed from: b.s.b.a.s0.l */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/l.class */
public final class C1355l {

    /* renamed from: a */
    public final C1184p f5340a = new C1184p(10);

    /* renamed from: a */
    public Metadata m33608a(AbstractC1351h hVar, C1524b.AbstractC1525a aVar) throws IOException, InterruptedException {
        Metadata metadata = null;
        int i = 0;
        while (true) {
            try {
                hVar.mo33619a(this.f5340a.f4738a, 0, 10);
                this.f5340a.m34358e(0);
                if (this.f5340a.m34341u() != 4801587) {
                    break;
                }
                this.f5340a.m34356f(3);
                int q = this.f5340a.m34345q();
                int i2 = q + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.f5340a.f4738a, 0, bArr, 0, 10);
                    hVar.mo33619a(bArr, 10, q);
                    metadata = new C1524b(aVar).m32983a(bArr, i2);
                } else {
                    hVar.mo33621a(q);
                }
                i += i2;
            } catch (EOFException e) {
            }
        }
        hVar.mo33614c();
        hVar.mo33621a(i);
        return metadata;
    }
}
