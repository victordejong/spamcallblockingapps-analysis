package p193e.p194a.p717f.p718a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.f.a.i */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/i.class */
public abstract class AbstractC13644i extends h implements b {

    /* renamed from: a */
    public volatile a f39537a;

    /* renamed from: b */
    public final Object f39538b = new Object();

    /* renamed from: c */
    public boolean f39539c = false;

    public AbstractC13644i() {
        addOnContextAvailableListener(new C13643h(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m21396Yt() {
        if (this.f39537a == null) {
            synchronized (this.f39538b) {
                if (this.f39537a == null) {
                    this.f39537a = new a(this);
                }
            }
        }
        return this.f39537a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC13644i.super.getDefaultViewModelProviderFactory());
    }
}
