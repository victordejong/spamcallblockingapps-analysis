package p012b.p076s.p112c.p114g;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.player.exoplayer.ByteArrayFrame;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p096u0.AbstractC1515a;
import p012b.p076s.p078b.p079a.p096u0.AbstractC1516b;
import p012b.p076s.p078b.p079a.p096u0.C1518c;
/* renamed from: b.s.c.g.h */
/* loaded from: classes-dex2jar.jar:b/s/c/g/h.class */
public final class C1771h implements AbstractC1516b {

    /* renamed from: b.s.c.g.h$a */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/h$a.class */
    public class C1772a implements AbstractC1515a {
        public C1772a(C1771h hVar) {
        }

        @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1515a
        /* renamed from: a */
        public Metadata mo32135a(C1518c cVar) {
            long j = cVar.f5246d;
            byte[] array = cVar.f5245c.array();
            return new Metadata(new ByteArrayFrame(j, Arrays.copyOf(array, array.length)));
        }
    }

    @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1516b
    /* renamed from: a */
    public boolean mo32137a(Format format) {
        return "application/id3".equals(format.f1562i);
    }

    @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1516b
    /* renamed from: b */
    public AbstractC1515a mo32136b(Format format) {
        return new C1772a(this);
    }
}
