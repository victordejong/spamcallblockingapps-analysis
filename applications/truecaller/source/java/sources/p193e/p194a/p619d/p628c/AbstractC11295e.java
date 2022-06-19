package p193e.p194a.p619d.p628c;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.d.c.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/e.class */
public abstract class AbstractC11295e extends h implements b {

    /* renamed from: a */
    public volatile a f33270a;

    /* renamed from: b */
    public final Object f33271b = new Object();

    /* renamed from: c */
    public boolean f33272c = false;

    public AbstractC11295e() {
        addOnContextAvailableListener(new C11294d(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m24894Yt() {
        if (this.f33270a == null) {
            synchronized (this.f33271b) {
                if (this.f33270a == null) {
                    this.f33270a = new a(this);
                }
            }
        }
        return this.f33270a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC11295e.super.getDefaultViewModelProviderFactory());
    }
}
