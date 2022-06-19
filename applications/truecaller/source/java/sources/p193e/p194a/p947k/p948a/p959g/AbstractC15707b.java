package p193e.p194a.p947k.p948a.p959g;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.k.a.g.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/b.class */
public abstract class AbstractC15707b extends h implements b {

    /* renamed from: a */
    public volatile a f44304a;

    /* renamed from: b */
    public final Object f44305b = new Object();

    /* renamed from: c */
    public boolean f44306c = false;

    public AbstractC15707b() {
        addOnContextAvailableListener(new C15705a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m18466Yt() {
        if (this.f44304a == null) {
            synchronized (this.f44305b) {
                if (this.f44304a == null) {
                    this.f44304a = new a(this);
                }
            }
        }
        return this.f44304a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC15707b.super.getDefaultViewModelProviderFactory());
    }
}
