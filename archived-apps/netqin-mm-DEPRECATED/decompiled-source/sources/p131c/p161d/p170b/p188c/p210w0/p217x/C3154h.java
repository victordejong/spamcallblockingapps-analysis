package p131c.p161d.p170b.p188c.p210w0.p217x;

import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.h */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/h.class */
public final class C3154h implements AbstractC3042g {

    /* renamed from: a */
    public final C3160i f11515a = new C3160i();

    /* renamed from: b */
    public final C2904v f11516b = new C2904v(16384);

    /* renamed from: c */
    public boolean f11517c;

    static {
        C3139b bVar = C3139b.f11449a;
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC3042g[] m27685b() {
        return new AbstractC3042g[]{new C3154h()};
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public int mo27551a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        int read = hVar.read(this.f11516b.f10530a, 0, 16384);
        if (read == -1) {
            return -1;
        }
        this.f11516b.m28538e(0);
        this.f11516b.m28540d(read);
        if (!this.f11517c) {
            this.f11515a.mo27598a(0L, 4);
            this.f11517c = true;
        }
        this.f11515a.mo27597a(this.f11516b);
        return 0;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27554a() {
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27553a(long j, long j2) {
        this.f11517c = false;
        this.f11515a.mo27599a();
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27550a(AbstractC3044i iVar) {
        this.f11515a.mo27596a(iVar, new AbstractC3155h0.C3159d(0, 1));
        iVar.mo28046e();
        iVar.mo28047a(new AbstractC3050o.C3052b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0060, code lost:
        r6.mo28050c();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0070, code lost:
        if ((r9 - r8) < 8192) goto L_0x0075;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0073, code lost:
        return false;
     */
    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo27552a(p131c.p161d.p170b.p188c.p210w0.AbstractC3043h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            c.d.b.c.g1.v r0 = new c.d.b.c.g1.v
            r1 = r0
            r2 = 10
            r1.<init>(r2)
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x000c:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f10530a
            r2 = 0
            r3 = 10
            r0.mo28055a(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m28538e(r1)
            r0 = r7
            int r0 = r0.m28521u()
            r1 = 4801587(0x494433, float:6.728456E-39)
            if (r0 == r1) goto L_0x00ac
            r0 = r6
            r0.mo28050c()
            r0 = r6
            r1 = r8
            r0.mo28057a(r1)
            r0 = r8
            r9 = r0
        L_0x0037:
            r0 = 0
            r10 = r0
        L_0x003a:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f10530a
            r2 = 0
            r3 = 7
            r0.mo28055a(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m28538e(r1)
            r0 = r7
            int r0 = r0.m28518x()
            r11 = r0
            r0 = r11
            r1 = 44096(0xac40, float:6.1792E-41)
            if (r0 == r1) goto L_0x0080
            r0 = r11
            r1 = 44097(0xac41, float:6.1793E-41)
            if (r0 == r1) goto L_0x0080
            r0 = r6
            r0.mo28050c()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L_0x0075
            r0 = 0
            return r0
        L_0x0075:
            r0 = r6
            r1 = r9
            r0.mo28057a(r1)
            goto L_0x0037
        L_0x0080:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L_0x008b
            r0 = 1
            return r0
        L_0x008b:
            r0 = r7
            byte[] r0 = r0.f10530a
            r1 = r11
            int r0 = p131c.p161d.p170b.p188c.p206s0.C2979h.m28301a(r0, r1)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L_0x009e
            r0 = 0
            return r0
        L_0x009e:
            r0 = r6
            r1 = r11
            r2 = 7
            int r1 = r1 - r2
            r0.mo28057a(r1)
            goto L_0x003a
        L_0x00ac:
            r0 = r7
            r1 = 3
            r0.m28536f(r1)
            r0 = r7
            int r0 = r0.m28525q()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = 10
            int r1 = r1 + r2
            int r0 = r0 + r1
            r8 = r0
            r0 = r6
            r1 = r9
            r0.mo28057a(r1)
            goto L_0x000c
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p217x.C3154h.mo27552a(c.d.b.c.w0.h):boolean");
    }
}
