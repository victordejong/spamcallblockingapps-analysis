package p193e.p194a.p947k.p948a.p954e;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.k.a.e.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/c.class */
public abstract class AbstractC15659c extends h implements b {

    /* renamed from: a */
    public volatile a f44210a;

    /* renamed from: b */
    public final Object f44211b = new Object();

    /* renamed from: c */
    public boolean f44212c = false;

    public AbstractC15659c() {
        addOnContextAvailableListener(new C15658b(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m18543Yt() {
        if (this.f44210a == null) {
            synchronized (this.f44211b) {
                if (this.f44210a == null) {
                    this.f44210a = new a(this);
                }
            }
        }
        return this.f44210a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC15659c.super.getDefaultViewModelProviderFactory());
    }
}
