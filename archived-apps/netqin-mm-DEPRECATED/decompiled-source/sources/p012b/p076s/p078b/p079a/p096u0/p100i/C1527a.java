package p012b.p076s.p078b.p079a.p096u0.p100i;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.scte35.PrivateCommand;
import androidx.media2.exoplayer.external.metadata.scte35.SpliceInsertCommand;
import androidx.media2.exoplayer.external.metadata.scte35.SpliceNullCommand;
import androidx.media2.exoplayer.external.metadata.scte35.SpliceScheduleCommand;
import androidx.media2.exoplayer.external.metadata.scte35.TimeSignalCommand;
import java.nio.ByteBuffer;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p096u0.AbstractC1515a;
import p012b.p076s.p078b.p079a.p096u0.C1518c;
/* renamed from: b.s.b.a.u0.i.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/u0/i/a.class */
public final class C1527a implements AbstractC1515a {

    /* renamed from: a */
    public final C1184p f6236a = new C1184p();

    /* renamed from: b */
    public final C1183o f6237b = new C1183o();

    /* renamed from: c */
    public C1196z f6238c;

    @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1515a
    /* renamed from: a */
    public Metadata mo32135a(C1518c cVar) {
        C1196z zVar = this.f6238c;
        if (zVar == null || cVar.f6218f != zVar.m34291c()) {
            C1196z zVar2 = new C1196z(cVar.f5246d);
            this.f6238c = zVar2;
            zVar2.m34294a(cVar.f5246d - cVar.f6218f);
        }
        ByteBuffer byteBuffer = cVar.f5245c;
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f6236a.m34367a(array, limit);
        this.f6237b.m34381a(array, limit);
        this.f6237b.m34376c(39);
        long a = (this.f6237b.m34385a(1) << 32) | this.f6237b.m34385a(32);
        this.f6237b.m34376c(20);
        int a2 = this.f6237b.m34385a(12);
        int a3 = this.f6237b.m34385a(8);
        Metadata.Entry entry = null;
        this.f6236a.m34356f(14);
        if (a3 == 0) {
            entry = new SpliceNullCommand();
        } else if (a3 == 255) {
            entry = PrivateCommand.m38013a(this.f6236a, a2, a);
        } else if (a3 == 4) {
            entry = SpliceScheduleCommand.m38009a(this.f6236a);
        } else if (a3 == 5) {
            entry = SpliceInsertCommand.m38012a(this.f6236a, a, this.f6238c);
        } else if (a3 == 6) {
            entry = TimeSignalCommand.m37997a(this.f6236a, a, this.f6238c);
        }
        return entry == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(entry);
    }
}
