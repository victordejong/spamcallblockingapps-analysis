package p193e.p194a.p437c.p438a.p507p.p513e;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.c.a.p.e.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/b.class */
public abstract class AbstractC9503b extends h implements b {

    /* renamed from: a */
    public volatile a f28818a;

    /* renamed from: b */
    public final Object f28819b = new Object();

    /* renamed from: c */
    public boolean f28820c = false;

    public AbstractC9503b() {
        addOnContextAvailableListener(new C9502a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m27496Yt() {
        if (this.f28818a == null) {
            synchronized (this.f28819b) {
                if (this.f28818a == null) {
                    this.f28818a = new a(this);
                }
            }
        }
        return this.f28818a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC9503b.super.getDefaultViewModelProviderFactory());
    }
}
