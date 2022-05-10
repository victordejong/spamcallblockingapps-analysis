package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzjy;
import java.io.IOException;
import java.util.Stack;
/* renamed from: c.d.b.d.g.a.tc0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/tc0.class */
public final class tc0 implements uc0 {

    /* renamed from: a */
    public final byte[] f15392a = new byte[8];

    /* renamed from: b */
    public final Stack<vc0> f15393b = new Stack<>();

    /* renamed from: c */
    public final cd0 f15394c = new cd0();

    /* renamed from: d */
    public wc0 f15395d;

    /* renamed from: e */
    public int f15396e;

    /* renamed from: f */
    public int f15397f;

    /* renamed from: g */
    public long f15398g;

    /* renamed from: a */
    public final long m26317a(zzjy zzjyVar, int i) throws IOException, InterruptedException {
        zzjyVar.readFully(this.f15392a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f15392a[i2] & 255);
        }
        return j;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.uc0
    /* renamed from: a */
    public final void mo26245a() {
        this.f15396e = 0;
        this.f15393b.clear();
        this.f15394c.m27099a();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.uc0
    /* renamed from: a */
    public final void mo26244a(wc0 wc0Var) {
        this.f15395d = wc0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.uc0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo26243a(com.google.android.gms.internal.ads.zzjy r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 799
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.tc0.mo26243a(com.google.android.gms.internal.ads.zzjy):boolean");
    }
}
