package p193e.p194a.p851h5;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.h5.k */
/* loaded from: classes14-dex2jar.jar:e/a/h5/k.class */
public abstract class AbstractC14944k extends h implements b {

    /* renamed from: a */
    public volatile a f42676a;

    /* renamed from: b */
    public final Object f42677b = new Object();

    /* renamed from: c */
    public boolean f42678c = false;

    public AbstractC14944k() {
        addOnContextAvailableListener(new C14943j(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m19394Yt() {
        if (this.f42676a == null) {
            synchronized (this.f42677b) {
                if (this.f42676a == null) {
                    this.f42676a = new a(this);
                }
            }
        }
        return this.f42676a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC14944k.super.getDefaultViewModelProviderFactory());
    }
}
