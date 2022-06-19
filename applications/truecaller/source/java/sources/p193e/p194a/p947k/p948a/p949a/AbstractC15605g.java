package p193e.p194a.p947k.p948a.p949a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.k.a.a.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/a/g.class */
public abstract class AbstractC15605g extends h implements b {

    /* renamed from: a */
    public volatile a f44132a;

    /* renamed from: b */
    public final Object f44133b = new Object();

    /* renamed from: c */
    public boolean f44134c = false;

    public AbstractC15605g() {
        addOnContextAvailableListener(new C15604f(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m18588Yt() {
        if (this.f44132a == null) {
            synchronized (this.f44133b) {
                if (this.f44132a == null) {
                    this.f44132a = new a(this);
                }
            }
        }
        return this.f44132a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC15605g.super.getDefaultViewModelProviderFactory());
    }
}
