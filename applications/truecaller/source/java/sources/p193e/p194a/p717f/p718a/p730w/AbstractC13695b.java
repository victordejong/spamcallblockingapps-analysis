package p193e.p194a.p717f.p718a.p730w;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.f.a.w.b */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/w/b.class */
public abstract class AbstractC13695b extends h implements b {

    /* renamed from: a */
    public volatile a f39670a;

    /* renamed from: b */
    public final Object f39671b = new Object();

    /* renamed from: c */
    public boolean f39672c = false;

    public AbstractC13695b() {
        addOnContextAvailableListener(new C13694a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m21307Yt() {
        if (this.f39670a == null) {
            synchronized (this.f39671b) {
                if (this.f39670a == null) {
                    this.f39670a = new a(this);
                }
            }
        }
        return this.f39670a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC13695b.super.getDefaultViewModelProviderFactory());
    }
}
