package p193e.p194a.p294b.p357o.p365f.p366a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.b.o.f.a.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/f/a/c.class */
public abstract class AbstractC8165c extends h implements b {

    /* renamed from: a */
    public volatile a f25285a;

    /* renamed from: b */
    public final Object f25286b = new Object();

    /* renamed from: c */
    public boolean f25287c = false;

    public AbstractC8165c() {
        addOnContextAvailableListener(new C8164b(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m28848Yt() {
        if (this.f25285a == null) {
            synchronized (this.f25286b) {
                if (this.f25285a == null) {
                    this.f25285a = new a(this);
                }
            }
        }
        return this.f25285a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC8165c.super.getDefaultViewModelProviderFactory());
    }
}
