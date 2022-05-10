package p131c.p161d.p170b.p188c.p210w0.p217x;

import com.google.android.exoplayer2.Format;
import java.util.List;
import p131c.p161d.p170b.p188c.p196c1.p197d.C2765b;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.j0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/j0.class */
public final class C3163j0 {

    /* renamed from: a */
    public final List<Format> f11554a;

    /* renamed from: b */
    public final AbstractC3054q[] f11555b;

    public C3163j0(List<Format> list) {
        this.f11554a = list;
        this.f11555b = new AbstractC3054q[list.size()];
    }

    /* renamed from: a */
    public void m27668a(long j, C2904v vVar) {
        if (vVar.m28552a() >= 9) {
            int g = vVar.m28535g();
            int g2 = vVar.m28535g();
            int r = vVar.m28524r();
            if (g == 434 && g2 == 1195456820 && r == 3) {
                C2765b.m29077b(j, vVar, this.f11555b);
            }
        }
    }

    /* renamed from: a */
    public void m27667a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        for (int i = 0; i < this.f11555b.length; i++) {
            dVar.m27684a();
            AbstractC3054q a = iVar.mo28048a(dVar.m27682c(), 3);
            Format format = this.f11554a.get(i);
            String str = format.f21952i;
            boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            C2877e.m28733a(z, "Invalid closed caption mime type provided: " + str);
            a.mo28034a(Format.m18697a(dVar.m27683b(), str, null, -1, format.f21946c, format.f21940A, format.f21941B, null, Long.MAX_VALUE, format.f21954k));
            this.f11555b[i] = a;
        }
    }
}
