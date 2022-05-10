package p131c.p161d.p170b.p188c.p210w0.p218y;

import com.google.android.exoplayer2.ParserException;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p206s0.C3005y;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
/* renamed from: c.d.b.c.w0.y.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/y/d.class */
public final class C3191d {

    /* renamed from: c.d.b.c.w0.y.d$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/y/d$a.class */
    public static final class C3192a {

        /* renamed from: a */
        public final int f11793a;

        /* renamed from: b */
        public final long f11794b;

        public C3192a(int i, long j) {
            this.f11793a = i;
            this.f11794b = j;
        }

        /* renamed from: a */
        public static C3192a m27533a(AbstractC3043h hVar, C2904v vVar) throws IOException, InterruptedException {
            hVar.mo28055a(vVar.f10530a, 0, 8);
            vVar.m28538e(0);
            return new C3192a(vVar.m28535g(), vVar.m28531k());
        }
    }

    /* renamed from: a */
    public static C3190c m27535a(AbstractC3043h hVar) throws IOException, InterruptedException {
        C2877e.m28737a(hVar);
        C2904v vVar = new C2904v(16);
        if (C3192a.m27533a(hVar, vVar).f11793a != 1380533830) {
            return null;
        }
        hVar.mo28055a(vVar.f10530a, 0, 4);
        vVar.m28538e(0);
        int g = vVar.m28535g();
        if (g != 1463899717) {
            C2894o.m28597b("WavHeaderReader", "Unsupported RIFF format: " + g);
            return null;
        }
        C3192a a = C3192a.m27533a(hVar, vVar);
        while (a.f11793a != 1718449184) {
            hVar.mo28057a((int) a.f11794b);
            a = C3192a.m27533a(hVar, vVar);
        }
        C2877e.m28731b(a.f11794b >= 16);
        hVar.mo28055a(vVar.f10530a, 0, 16);
        vVar.m28538e(0);
        int m = vVar.m28529m();
        int m2 = vVar.m28529m();
        int l = vVar.m28530l();
        int l2 = vVar.m28530l();
        int m3 = vVar.m28529m();
        int m4 = vVar.m28529m();
        int i = (m2 * m4) / 8;
        if (m3 == i) {
            int a2 = C3005y.m28175a(m, m4);
            if (a2 == 0) {
                C2894o.m28597b("WavHeaderReader", "Unsupported WAV format: " + m4 + " bit/sample, type " + m);
                return null;
            }
            hVar.mo28057a(((int) a.f11794b) - 16);
            return new C3190c(m2, l, l2, m3, m4, a2);
        }
        throw new ParserException("Expected block alignment: " + i + "; got: " + m3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m27534a(p131c.p161d.p170b.p188c.p210w0.AbstractC3043h r5, p131c.p161d.p170b.p188c.p210w0.p218y.C3190c r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p218y.C3191d.m27534a(c.d.b.c.w0.h, c.d.b.c.w0.y.c):void");
    }
}
