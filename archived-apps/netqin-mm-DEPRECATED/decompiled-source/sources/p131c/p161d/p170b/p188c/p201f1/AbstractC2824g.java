package p131c.p161d.p170b.p188c.p201f1;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.f1.g */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/g.class */
public abstract class AbstractC2824g implements AbstractC2827j {

    /* renamed from: a */
    public final boolean f10261a;

    /* renamed from: b */
    public final ArrayList<AbstractC2841t> f10262b = new ArrayList<>(1);

    /* renamed from: c */
    public int f10263c;

    /* renamed from: d */
    public C2829k f10264d;

    public AbstractC2824g(boolean z) {
        this.f10261a = z;
    }

    /* renamed from: a */
    public final void m28942a() {
        C2829k kVar = this.f10264d;
        C2885h0.m28670a(kVar);
        C2829k kVar2 = kVar;
        for (int i = 0; i < this.f10263c; i++) {
            this.f10262b.get(i).mo28891a(this, kVar2, this.f10261a);
        }
        this.f10264d = null;
    }

    /* renamed from: a */
    public final void m28941a(int i) {
        C2829k kVar = this.f10264d;
        C2885h0.m28670a(kVar);
        C2829k kVar2 = kVar;
        for (int i2 = 0; i2 < this.f10263c; i2++) {
            this.f10262b.get(i2).mo28890a(this, kVar2, this.f10261a, i);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: a */
    public final void mo28885a(AbstractC2841t tVar) {
        if (!this.f10262b.contains(tVar)) {
            this.f10262b.add(tVar);
            this.f10263c++;
        }
    }

    /* renamed from: b */
    public final void m28940b(C2829k kVar) {
        for (int i = 0; i < this.f10263c; i++) {
            this.f10262b.get(i).mo28888c(this, kVar, this.f10261a);
        }
    }

    /* renamed from: c */
    public final void m28939c(C2829k kVar) {
        this.f10264d = kVar;
        for (int i = 0; i < this.f10263c; i++) {
            this.f10262b.get(i).mo28889b(this, kVar, this.f10261a);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: p */
    public /* synthetic */ Map<String, List<String>> mo28874p() {
        return C2826i.m28938a(this);
    }
}
