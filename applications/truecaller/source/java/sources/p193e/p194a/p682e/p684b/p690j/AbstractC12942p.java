package p193e.p194a.p682e.p684b.p690j;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e.b.j.p */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/j/p.class */
public abstract class AbstractC12942p extends h implements b {

    /* renamed from: a */
    public volatile a f37562a;

    /* renamed from: b */
    public final Object f37563b = new Object();

    /* renamed from: c */
    public boolean f37564c = false;

    public AbstractC12942p() {
        addOnContextAvailableListener(new C12941o(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m22374Yt() {
        if (this.f37562a == null) {
            synchronized (this.f37563b) {
                if (this.f37562a == null) {
                    this.f37562a = new a(this);
                }
            }
        }
        return this.f37562a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC12942p.super.getDefaultViewModelProviderFactory());
    }
}
