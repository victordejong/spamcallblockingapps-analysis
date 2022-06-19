package p193e.p194a.p786g0.p787a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.g0.a.g */
/* loaded from: classes14-dex2jar.jar:e/a/g0/a/g.class */
public abstract class AbstractC14332g extends h implements b {

    /* renamed from: a */
    public volatile a f41429a;

    /* renamed from: b */
    public final Object f41430b = new Object();

    /* renamed from: c */
    public boolean f41431c = false;

    public AbstractC14332g() {
        addOnContextAvailableListener(new C14331f(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m20262Yt() {
        if (this.f41429a == null) {
            synchronized (this.f41430b) {
                if (this.f41429a == null) {
                    this.f41429a = new a(this);
                }
            }
        }
        return this.f41429a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC14332g.super.getDefaultViewModelProviderFactory());
    }
}
