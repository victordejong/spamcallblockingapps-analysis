package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import p012b.p068o.AbstractC1105c;
import p012b.p068o.AbstractC1107e;
import p012b.p068o.AbstractC1109g;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SingleGeneratedAdapterObserver.class */
public class SingleGeneratedAdapterObserver implements AbstractC1107e {

    /* renamed from: a */
    public final AbstractC1105c f1399a;

    public SingleGeneratedAdapterObserver(AbstractC1105c cVar) {
        this.f1399a = cVar;
    }

    @Override // p012b.p068o.AbstractC1107e
    /* renamed from: a */
    public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
        this.f1399a.m34665a(gVar, event, false, null);
        this.f1399a.m34665a(gVar, event, true, null);
    }
}
