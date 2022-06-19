package p193e.p194a.p851h5;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.h5.g */
/* loaded from: classes14-dex2jar.jar:e/a/h5/g.class */
public abstract class AbstractC14940g extends h implements b {

    /* renamed from: a */
    public volatile a f42668a;

    /* renamed from: b */
    public final Object f42669b = new Object();

    /* renamed from: c */
    public boolean f42670c = false;

    public AbstractC14940g() {
        addOnContextAvailableListener(new C14939f(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m19396Yt() {
        if (this.f42668a == null) {
            synchronized (this.f42669b) {
                if (this.f42668a == null) {
                    this.f42668a = new a(this);
                }
            }
        }
        return this.f42668a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC14940g.super.getDefaultViewModelProviderFactory());
    }
}
