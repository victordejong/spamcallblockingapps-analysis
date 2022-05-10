package p131c.p161d.p170b.p188c.p210w0.p217x;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import p131c.p161d.p170b.p188c.p203g1.C2881f0;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.d0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/d0.class */
public final class C3144d0 implements AbstractC3138a0 {

    /* renamed from: a */
    public C2881f0 f11460a;

    /* renamed from: b */
    public AbstractC3054q f11461b;

    /* renamed from: c */
    public boolean f11462c;

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3138a0
    /* renamed from: a */
    public void mo27688a(C2881f0 f0Var, AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        this.f11460a = f0Var;
        dVar.m27684a();
        AbstractC3054q a = iVar.mo28048a(dVar.m27682c(), 4);
        this.f11461b = a;
        a.mo28034a(Format.m18695a(dVar.m27683b(), "application/x-scte35", (String) null, -1, (DrmInitData) null));
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3138a0
    /* renamed from: a */
    public void mo27687a(C2904v vVar) {
        if (!this.f11462c) {
            if (this.f11460a.m28710c() != -9223372036854775807L) {
                this.f11461b.mo28034a(Format.m18703a(null, "application/x-scte35", this.f11460a.m28710c()));
                this.f11462c = true;
            } else {
                return;
            }
        }
        int a = vVar.m28552a();
        this.f11461b.mo28036a(vVar, a);
        this.f11461b.mo28037a(this.f11460a.m28712b(), 1, a, 0, null);
    }
}
