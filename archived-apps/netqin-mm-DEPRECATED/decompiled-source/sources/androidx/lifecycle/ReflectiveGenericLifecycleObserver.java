package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import p012b.p068o.AbstractC1107e;
import p012b.p068o.AbstractC1109g;
import p012b.p068o.C1101a;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReflectiveGenericLifecycleObserver.class */
public class ReflectiveGenericLifecycleObserver implements AbstractC1107e {

    /* renamed from: a */
    public final Object f1397a;

    /* renamed from: b */
    public final C1101a.C1102a f1398b;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f1397a = obj;
        this.f1398b = C1101a.f4602c.m34676b(obj.getClass());
    }

    @Override // p012b.p068o.AbstractC1107e
    /* renamed from: a */
    public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
        this.f1398b.m34674a(gVar, event, this.f1397a);
    }
}
