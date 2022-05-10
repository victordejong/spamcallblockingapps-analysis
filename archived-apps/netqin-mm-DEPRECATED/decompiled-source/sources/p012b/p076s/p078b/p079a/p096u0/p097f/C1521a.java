package p012b.p076s.p078b.p079a.p096u0.p097f;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.emsg.EventMessage;
import java.nio.ByteBuffer;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p096u0.AbstractC1515a;
import p012b.p076s.p078b.p079a.p096u0.C1518c;
/* renamed from: b.s.b.a.u0.f.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/u0/f/a.class */
public final class C1521a implements AbstractC1515a {
    @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1515a
    /* renamed from: a */
    public Metadata mo32135a(C1518c cVar) {
        ByteBuffer byteBuffer = cVar.f5245c;
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        C1184p pVar = new C1184p(array, limit);
        String o = pVar.m34347o();
        C1160a.m34522a(o);
        String str = o;
        String o2 = pVar.m34347o();
        C1160a.m34522a(o2);
        String str2 = o2;
        long t = pVar.m34342t();
        long t2 = pVar.m34342t();
        if (t2 != 0) {
            StringBuilder sb = new StringBuilder(63);
            sb.append("Ignoring non-zero presentation_time_delta: ");
            sb.append(t2);
            C1175j.m34414d("EventMessageDecoder", sb.toString());
        }
        return new Metadata(new EventMessage(str, str2, C1167d0.m34445c(pVar.m34342t(), 1000L, t), pVar.m34342t(), Arrays.copyOfRange(array, pVar.m34363c(), limit)));
    }
}
