package p459j.p460a.p576w;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import p459j.p460a.p576w.p577n.AbstractC13759b;
import p459j.p460a.p576w.p577n.C13773d;
import p459j.p460a.p576w.p581r.C13865h;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.j */
/* loaded from: classes2-dex2jar.jar:j/a/w/j.class */
public final class C13753j extends ViewModelProvider.NewInstanceFactory {

    /* renamed from: a */
    public final C13773d f30863a;

    /* renamed from: b */
    public final AbstractC13759b f30864b;

    public C13753j(C13773d dVar, AbstractC13759b bVar) {
        C15149k.m377b(dVar, "repository");
        C15149k.m377b(bVar, "remoteConfigDataSource");
        this.f30863a = dVar;
        this.f30864b = bVar;
    }

    @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
    public <T extends ViewModel> T create(Class<T> cls) {
        C15149k.m377b(cls, "modelClass");
        if (cls.isAssignableFrom(C13865h.class)) {
            return new C13865h(this.f30863a, this.f30864b);
        }
        throw new IllegalArgumentException("Unknown ViewModel class: " + cls.getName());
    }
}
