package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
import p012b.p076s.p078b.p079a.p107x0.p108c.C1649b;
/* renamed from: b.s.b.a.s0.x.b0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/b0.class */
public final class C1447b0 {

    /* renamed from: a */
    public final List<Format> f5819a;

    /* renamed from: b */
    public final AbstractC1362q[] f5820b;

    public C1447b0(List<Format> list) {
        this.f5819a = list;
        this.f5820b = new AbstractC1362q[list.size()];
    }

    /* renamed from: a */
    public void m33293a(long j, C1184p pVar) {
        C1649b.m32489a(j, pVar, this.f5820b);
    }

    /* renamed from: a */
    public void m33292a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        for (int i = 0; i < this.f5820b.length; i++) {
            dVar.m33246a();
            AbstractC1362q a = iVar.mo32666a(dVar.m33244c(), 3);
            Format format = this.f5819a.get(i);
            String str = format.f1562i;
            boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            String valueOf = String.valueOf(str);
            C1160a.m34519a(z, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
            String str2 = format.f1554a;
            if (str2 == null) {
                str2 = dVar.m33245b();
            }
            a.mo32623a(Format.m38179a(str2, str, (String) null, -1, format.f1556c, format.f1551A, format.f1552B, (DrmInitData) null, Long.MAX_VALUE, format.f1564k));
            this.f5820b[i] = a;
        }
    }
}
