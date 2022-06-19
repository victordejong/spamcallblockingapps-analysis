package p193e.p194a.p947k.p948a.p951b;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.k.a.b.j */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/b/j.class */
public abstract class AbstractC15626j extends h implements b {

    /* renamed from: a */
    public volatile a f44156a;

    /* renamed from: b */
    public final Object f44157b = new Object();

    /* renamed from: c */
    public boolean f44158c = false;

    public AbstractC15626j() {
        addOnContextAvailableListener(new C15625i(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m18567Yt() {
        if (this.f44156a == null) {
            synchronized (this.f44157b) {
                if (this.f44156a == null) {
                    this.f44156a = new a(this);
                }
            }
        }
        return this.f44156a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC15626j.super.getDefaultViewModelProviderFactory());
    }
}
